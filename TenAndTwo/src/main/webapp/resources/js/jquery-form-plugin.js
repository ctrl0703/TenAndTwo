/**
 * jQuery Form Validator Plugin
 */
(function($) {
    $.fn.validate = function() {
        var faultElement = null;

        var target = $.getValidateTargets(this);
        for (var i = 0; i < target.length; i++) {
            var element = target[i];
            var option = element.validOption;

            // trim 옵션이 있을경우 적용한다.
            if (option.trim && (element.tagName == 'INPUT' || element.tagName == 'TEXTAREA')) {
                $(element).val(jQuery.trim($(element).val()));
            }
            
            // 옵션에 맞는 정합성 검사기를 조회한다.
            for (targetOption in option) {
                if (targetOption == 'trim') continue;

                if (jQuery.isFunction($.validator[targetOption]) && option[targetOption]) {
                    var result = $.validator[targetOption](element);
                    if (!result.valid) {
                        //Message 처리 루틴
                        result.message = $.validator.getMessage(result.option.elementName, result.type);
                        faultElement = result;
                        break;
                    }
                }
            }
            
            if(faultElement != null) {
                $.validateAlerts(faultElement);
                return false;
            }
        }

        return true;
    };
    
    /**
     * 정합성 검사를 해야할 Form Elements 생성
     */
    $.getValidateTargets = function(elements) {
        var target = [];
        for (var i = 0; i < elements.length; i++) {
            $(elements[i]).find('[valid]').each(function(n) {
            	$.makeValidate(this, $(this).attr('valid').split(','));
                target.push(this);
            });
        }

        return target;
    };

    /**
     * 정합성 검사기 생성
     */
    $.makeValidate = function(caller, options) {
        for (var i = 0; i < options.length; i++) {
            switch (options[i]) {
                case 'required':
                    $(caller).addValidItem('required');
                    break;
                case 'trim':
                    $(caller).addValidItem('trim');
                    break;
                case 'int':
                    $(caller).addValidItem('int');
                    break;
                default:
            };
        };

        caller.validOption['elementName'] = $(caller).attr('element-name');
    };

    /**
     * Element 정합성 기능 추가
     * @param {Object} optionName 옵션 명칭
     */
    $.fn.addValidItem = function(optionName) {
        return this.each(function() {
            if(!this.validOption) this.validOption = {};
            this.validOption[optionName] = true;
        });
    };

    /**
     * 정합성 검사기
     */
    $.validator = {
        /**
         * 정합성 검사기 정규표현식
         */
        regExpPatten : {
            int :'^[0-9,]+$'
        },

        /**
         * 정합성 검사 실패 메세지
         */
        defaultMessage : {
            required: '{elementName}은(는) 필수 입력사항입니다.',
            int :'{elementName}은(는) 숫자(소수점제외)만 입력가능합니다.'
        },

        /**
         * 메세지를 조회한다.
         * @param {Object} elementName
         * @param {Object} type
         */
        getMessage : function(elementName, type) {
        	return $.validator.defaultMessage[type].replace('{elementName}', elementName);
        },

        /**
         * 필수 여부 검사기
         * @param {Object} element
         */
        required : function(element) {
            var result = false;
            if(element.validOption.link) {
                var linkList = element.validOption.link;
                $.each(linkList, function(idx,link) {
                    if($(link).attr('checked')) {
                        result = true;
                    }
                    return !result;
                });
                if($(element).attr('checked')) {
                    result = true;
                }
            } else {
                result = ($.trim($(element).val()).length > 0);
            }
            
            return {
                valid: result,
                option: element.validOption,
                element: element,
                type: 'required'
            };
        },
        
        /**
         * 정수형 검사기
         * @param {Object} element
         */
        int : function(element) {
            var valid = true;
            var type = 'int';
            var regExp = $.validator.regExpPatten[type];
            var patten = new RegExp(regExp);

            valid = patten.test($(element).val());
            if($(element).val().length == 0) {
                valid = true;
            }

            return {
                valid: valid,
                option: element.validOption,
                element: element,
                type: type
            };
        }
    };
    
    /**
     * alert 을 추가한다.
     * 에러처리 로직 추가 및 변경
     * @param {Object} faultElement
     */
    $.validateAlerts = function(faultElement) {
        alert(faultElement.message);
        $(faultElement.element).focus();
    };
})(jQuery);