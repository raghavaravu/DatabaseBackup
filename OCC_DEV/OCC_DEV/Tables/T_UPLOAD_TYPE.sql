CREATE TABLE occ_dev.t_upload_type (
  "ID" NUMBER(20) NOT NULL,
  unique_id VARCHAR2(256 BYTE) NOT NULL,
  max_size_in_kb NUMBER(20),
  max_files NUMBER(20),
  storage_type VARCHAR2(256 BYTE),
  upload_type_name VARCHAR2(256 BYTE),
  upload_location VARCHAR2(256 BYTE),
  created_by VARCHAR2(256 BYTE) NOT NULL,
  updated_by VARCHAR2(256 BYTE) NOT NULL,
  created_at TIMESTAMP NOT NULL,
  updated_at TIMESTAMP NOT NULL,
  "VERSION" NUMBER(6),
  idx_token VARCHAR2(4 BYTE) NOT NULL,
  CONSTRAINT t_upload_type_pk PRIMARY KEY ("ID"),
  CONSTRAINT t_upload_type_uk UNIQUE (unique_id)
);