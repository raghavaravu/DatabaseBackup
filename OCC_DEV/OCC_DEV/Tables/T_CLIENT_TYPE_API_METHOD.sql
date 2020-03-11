CREATE TABLE occ_dev.t_client_type_api_method (
  "ID" NUMBER(11) NOT NULL,
  unique_id VARCHAR2(128 BYTE),
  client_type_id NUMBER(11),
  api_method_id NUMBER(11),
  created_at TIMESTAMP,
  created_by VARCHAR2(256 BYTE),
  updated_at TIMESTAMP,
  updated_by VARCHAR2(256 BYTE),
  idx_token VARCHAR2(8 BYTE),
  CONSTRAINT t_client_type_api_method_pk PRIMARY KEY ("ID"),
  CONSTRAINT t_client_type_api_method_uk UNIQUE (unique_id)
);