CREATE TABLE occ_dev.t_oauth_provider_detail (
  "ID" NUMBER(11) NOT NULL,
  unique_id VARCHAR2(256 BYTE) NOT NULL,
  created_at TIMESTAMP NOT NULL,
  created_by VARCHAR2(256 BYTE) NOT NULL,
  updated_at TIMESTAMP NOT NULL,
  updated_by VARCHAR2(256 BYTE) NOT NULL,
  client_name VARCHAR2(256 BYTE),
  client_id VARCHAR2(256 BYTE),
  client_secret VARCHAR2(256 BYTE),
  authorize_url VARCHAR2(256 BYTE),
  access_token_url VARCHAR2(256 BYTE),
  redirect_url VARCHAR2(256 BYTE),
  provider_id NUMBER(11),
  revoke_token_url VARCHAR2(256 BYTE),
  idx_token VARCHAR2(8 BYTE) NOT NULL,
  CONSTRAINT t_oauth_provider_detail_pk PRIMARY KEY ("ID"),
  CONSTRAINT t_oauth_provider_detail_uk UNIQUE (unique_id)
);