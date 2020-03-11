CREATE TABLE occ_dev.t_redirect_uri (
  "ID" VARCHAR2(20 BYTE) NOT NULL,
  uri VARCHAR2(1000 BYTE),
  client_type_id NUMBER,
  unique_id VARCHAR2(64 BYTE),
  created_at TIMESTAMP,
  updated_at TIMESTAMP,
  created_by VARCHAR2(256 BYTE),
  updated_by VARCHAR2(256 BYTE),
  idx_token VARCHAR2(256 BYTE),
  CONSTRAINT t_redirect_uri_pk PRIMARY KEY ("ID"),
  CONSTRAINT t_redirect_client_type_fk FOREIGN KEY (client_type_id) REFERENCES occ_dev.t_client_type ("ID")
);