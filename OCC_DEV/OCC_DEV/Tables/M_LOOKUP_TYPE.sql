CREATE TABLE occ_dev.m_lookup_type (
  "ID" NUMBER NOT NULL,
  unique_id VARCHAR2(256 BYTE) NOT NULL,
  code VARCHAR2(256 BYTE),
  "NAME" VARCHAR2(256 BYTE),
  description VARCHAR2(256 BYTE),
  is_active CHAR(256 BYTE) DEFAULT 1 NOT NULL,
  created_by VARCHAR2(256 BYTE) NOT NULL,
  updated_by VARCHAR2(256 BYTE) NOT NULL,
  created_at TIMESTAMP NOT NULL,
  updated_at TIMESTAMP NOT NULL,
  "VERSION" NUMBER(20),
  idx_token VARCHAR2(4 BYTE) NOT NULL,
  CONSTRAINT m_lookup_type_pk PRIMARY KEY ("ID"),
  CONSTRAINT m_lookup_type_uk UNIQUE (unique_id)
);