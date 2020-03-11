CREATE TABLE occ_dev.t_upload_mimetype (
  "ID" NUMBER(20) NOT NULL,
  unique_id VARCHAR2(256 BYTE) NOT NULL,
  upload_type_id NUMBER(20),
  mime_type VARCHAR2(256 BYTE),
  max_size_in_kb VARCHAR2(256 BYTE),
  display_name VARCHAR2(256 BYTE),
  created_by VARCHAR2(256 BYTE) NOT NULL,
  updated_by VARCHAR2(256 BYTE) NOT NULL,
  created_at TIMESTAMP NOT NULL,
  updated_at TIMESTAMP NOT NULL,
  "VERSION" NUMBER(6),
  idx_token VARCHAR2(4 BYTE) NOT NULL,
  CONSTRAINT t_upload_mimetype_pk PRIMARY KEY ("ID"),
  CONSTRAINT t_upload_mimetype_uk UNIQUE (unique_id),
  CONSTRAINT t_upload_mimetype_header_id_fk FOREIGN KEY (upload_type_id) REFERENCES occ_dev.t_upload_type ("ID")
);