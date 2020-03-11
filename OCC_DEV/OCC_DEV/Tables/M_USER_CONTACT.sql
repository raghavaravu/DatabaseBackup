CREATE TABLE occ_dev.m_user_contact (
  contact_type VARCHAR2(256 BYTE),
  "VALUE" VARCHAR2(256 BYTE),
  user_id NUMBER(20) NOT NULL,
  CONSTRAINT m_user_contact_user_id_fk FOREIGN KEY (user_id) REFERENCES occ_dev.m_user ("ID")
);