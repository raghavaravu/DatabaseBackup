CREATE TABLE occ_dev.m_property (
  "ID" NUMBER(20) NOT NULL,
  service VARCHAR2(256 BYTE),
  key_name VARCHAR2(256 BYTE) NOT NULL,
  key_value VARCHAR2(256 BYTE) NOT NULL,
  created_at TIMESTAMP NOT NULL,
  created_by VARCHAR2(256 BYTE) NOT NULL,
  updated_at TIMESTAMP NOT NULL,
  updated_by VARCHAR2(256 BYTE) NOT NULL,
  unique_id VARCHAR2(256 BYTE) NOT NULL,
  idx_token CHAR(4 BYTE) NOT NULL,
  is_active CHAR,
  "VERSION" NUMBER,
  CONSTRAINT m_property_pk PRIMARY KEY ("ID"),
  CONSTRAINT m_property_uk UNIQUE (unique_id)
);