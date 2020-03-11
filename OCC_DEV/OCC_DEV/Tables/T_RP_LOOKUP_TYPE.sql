CREATE TABLE occ_dev.t_rp_lookup_type (
  "ID" NUMBER NOT NULL,
  unique_id VARCHAR2(256 BYTE) NOT NULL,
  "NAME" VARCHAR2(256 BYTE),
  description VARCHAR2(256 BYTE),
  created_by VARCHAR2(256 BYTE) NOT NULL,
  updated_by VARCHAR2(256 BYTE) NOT NULL,
  created_at TIMESTAMP NOT NULL,
  updated_at TIMESTAMP NOT NULL,
  "VERSION" NUMBER,
  is_active NUMBER(1) DEFAULT 1,
  idx_token VARCHAR2(4 BYTE),
  CONSTRAINT t_rp_lookup_type_pk PRIMARY KEY ("ID")
);