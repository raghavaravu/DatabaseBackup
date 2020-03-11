CREATE TABLE occ_dev.t_cloud_refresh_token (
  "ID" NUMBER(11) NOT NULL,
  unique_id VARCHAR2(128 BYTE) NOT NULL,
  token VARCHAR2(256 BYTE),
  auth_code VARCHAR2(256 BYTE),
  account_id NUMBER(11),
  client_type_id NUMBER(11),
  created_at TIMESTAMP NOT NULL,
  created_by VARCHAR2(256 BYTE) NOT NULL,
  updated_at TIMESTAMP NOT NULL,
  updated_by VARCHAR2(256 BYTE) NOT NULL,
  idx_token VARCHAR2(8 BYTE) NOT NULL,
  device_id NUMBER(11),
  CONSTRAINT t_cloud_refresh_token_pk PRIMARY KEY ("ID"),
  CONSTRAINT t_cloud_refresh_token_uk UNIQUE (unique_id),
  CONSTRAINT t_cloud_refresh_t_acc_id_fk FOREIGN KEY (account_id) REFERENCES occ_dev.m_user ("ID")
);