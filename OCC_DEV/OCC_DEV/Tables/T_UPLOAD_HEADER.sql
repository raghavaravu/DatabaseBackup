CREATE TABLE occ_dev.t_upload_header (
  "ID" NUMBER(20) NOT NULL,
  unique_id VARCHAR2(256 BYTE) NOT NULL,
  upload_type_id NUMBER(20),
  no_of_files NUMBER(20),
  total_size NUMBER(20),
  owner_id VARCHAR2(256 BYTE),
  owner_name VARCHAR2(256 BYTE),
  created_by VARCHAR2(256 BYTE) NOT NULL,
  updated_by VARCHAR2(256 BYTE) NOT NULL,
  created_at TIMESTAMP NOT NULL,
  updated_at TIMESTAMP NOT NULL,
  "VERSION" NUMBER(6),
  idx_token VARCHAR2(4 BYTE) NOT NULL,
  CONSTRAINT t_upload_header_pk PRIMARY KEY ("ID"),
  CONSTRAINT t_upload_header_uk UNIQUE (unique_id),
  CONSTRAINT t_upload_header_type_fk FOREIGN KEY (upload_type_id) REFERENCES occ_dev.t_upload_type ("ID")
);