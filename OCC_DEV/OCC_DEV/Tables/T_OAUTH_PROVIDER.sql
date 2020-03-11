CREATE TABLE occ_dev.t_oauth_provider (
  "ID" NUMBER(11) NOT NULL,
  code VARCHAR2(10 BYTE),
  "SCOPE" VARCHAR2(256 BYTE),
  "NAME" VARCHAR2(20 BYTE),
  unique_id VARCHAR2(256 BYTE) NOT NULL,
  created_at TIMESTAMP NOT NULL,
  created_by VARCHAR2(256 BYTE) NOT NULL,
  updated_at TIMESTAMP NOT NULL,
  updated_by VARCHAR2(256 BYTE) NOT NULL,
  idx_token VARCHAR2(8 BYTE) NOT NULL,
  CONSTRAINT t_oauth_provider_pk PRIMARY KEY ("ID"),
  CONSTRAINT t_oauth_provider_uk UNIQUE (unique_id)
);