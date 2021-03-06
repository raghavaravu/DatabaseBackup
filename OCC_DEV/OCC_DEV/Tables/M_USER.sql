CREATE TABLE occ_dev.m_user (
  "ID" NUMBER NOT NULL,
  unique_id VARCHAR2(256 BYTE) NOT NULL,
  first_name VARCHAR2(256 BYTE),
  last_name VARCHAR2(256 BYTE),
  created_by VARCHAR2(256 BYTE) NOT NULL,
  updated_by VARCHAR2(256 BYTE) NOT NULL,
  created_at TIMESTAMP NOT NULL,
  updated_at TIMESTAMP NOT NULL,
  active_from TIMESTAMP,
  active_to TIMESTAMP,
  "VERSION" NUMBER,
  user_name VARCHAR2(256 BYTE),
  is_active CHAR(256 BYTE) DEFAULT 1 NOT NULL,
  idx_token VARCHAR2(4 BYTE) NOT NULL,
  account_status VARCHAR2(256 BYTE),
  "PASSWORD" VARCHAR2(256 BYTE),
  CONSTRAINT m_user_pk PRIMARY KEY ("ID"),
  CONSTRAINT m_user_name_fk UNIQUE (user_name),
  CONSTRAINT m_user_uk UNIQUE (unique_id)
);