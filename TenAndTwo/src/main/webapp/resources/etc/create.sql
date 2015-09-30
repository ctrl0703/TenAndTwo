CREATE TABLE epi_mst (
    epi_id           VARCHAR2(12),
    vld_end_date     VARCHAR2(14),
    epi_cate         VARCHAR2(30),
    epi_title        VARCHAR2(100),
    epi_desc         VARCHAR2(4000),
    epi_date         VARCHAR2(8),
    epi_end_date     VARCHAR2(8),
    epi_lati         NUMBER(10,6),
    epi_long         NUMBER(10,6),
    photo_id         VARCHAR2(20),
    movie_id         VARCHAR2(20),
    vld_str_date     VARCHAR2(14),
    fst_reg          VARCHAR2(100),
    fst_reg_date     DATE,
    last_udt         VARCHAR2(100),
    last_udt_date    DATE
);
ALTER TABLE epi_mst ADD CONSTRAINT epi_pk PRIMARY KEY (epi_id, vld_end_date);
CREATE SEQUENCE epi_seq START WITH 1 INCREMENT BY 1;
commit;

INSERT INTO epi_mst ( epi_id
                    , vld_end_date
                    , epi_cate
                    , epi_title
                    , epi_desc
                    , epi_date
                    , epi_end_date
                    , epi_lati
                    , epi_long
                    , photo_id
                    , movie_id
                    , vld_str_date
                    , fst_reg
                    , fst_reg_date
                    , last_udt
                    , last_udt_date )
       VALUES      ( ('EPI' || '2010' || LPAD(epi_seq.NEXTVAL, 5, 0))
                   , '99991231235959'
                   , 'location'
                   , '열하고둘 회칙 제정'
                   , '임용수, 김광민, 정현수가 가르텐비어에 모여 5시간 30분 동안(22:00 ~ 03:50) 최초로 회칙을 제정하다.'
                   , '20101006'
                   ,  null
                   ,  null
                   ,  null
                   ,  null
                   ,  null
                   , '20141209232830'
                   , 'script'
                   ,  SYSDATE
                   , 'script'
                   ,  SYSDATE
                    );

SELECT * FROM epi_mst;

CREATE TABLE file_mst (
    file_id          VARCHAR2(12),
    file_name        VARCHAR2(1000),
    file_ext         VARCHAR2(5),
    file_data        BLOB,
    file_type        VARCHAR2(100),
    fst_reg          VARCHAR2(100),
    fst_reg_date     DATE,
    last_udt         VARCHAR2(100),
    last_udt_date    DATE
);
ALTER TABLE file_mst ADD CONSTRAINT file_pk PRIMARY KEY (file_id);
CREATE SEQUENCE file_seq START WITH 1 INCREMENT BY 1;
commit;