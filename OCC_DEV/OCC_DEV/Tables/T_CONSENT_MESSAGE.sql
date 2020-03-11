CREATE TABLE occ_dev.t_consent_message (
  "ID" NUMBER(11) NOT NULL,
  message VARCHAR2(256 BYTE),
  created_at TIMESTAMP NOT NULL,
  created_by TIMESTAMP NOT NULL,
  updated_at TIMESTAMP NOT NULL,
  updated_by TIMESTAMP NOT NULL,
  unique_id VARCHAR2(256 BYTE) NOT NULL,
  idx_token VARCHAR2(20 BYTE) NOT NULL,
  CONSTRAINT t_consent_message_pk PRIMARY KEY ("ID")
);