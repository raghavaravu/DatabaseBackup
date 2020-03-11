CREATE TABLE occ_dev.m_location_type (
  "ID" NUMBER NOT NULL,
  unique_id VARCHAR2(256 BYTE) NOT NULL,
  "NAME" VARCHAR2(256 BYTE),
  description VARCHAR2(256 BYTE),
  created_at TIMESTAMP NOT NULL,
  created_by VARCHAR2(256 BYTE) NOT NULL,
  updated_at TIMESTAMP NOT NULL,
  updated_by VARCHAR2(256 BYTE) NOT NULL,
  "VERSION" NUMBER,
  idx_token VARCHAR2(4 BYTE) NOT NULL,
  is_active CHAR(256 BYTE) DEFAULT 1 NOT NULL,
  CONSTRAINT m_location_type_pk PRIMARY KEY ("ID"),
  CONSTRAINT m_location_type_uk UNIQUE (unique_id)
);