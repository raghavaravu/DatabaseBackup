CREATE TABLE occ_dev.t_api_method (
  "ID" NUMBER(11) NOT NULL,
  unique_id VARCHAR2(128 BYTE) NOT NULL,
  friendly_name VARCHAR2(256 BYTE),
  description VARCHAR2(512 BYTE),
  "TYPE" VARCHAR2(256 BYTE),
  account_consent_msg VARCHAR2(256 BYTE),
  account_consent_msg_order NUMBER(11),
  detailed_consent_message_id NUMBER(11),
  requires_access_token NUMBER(11),
  is_public NUMBER(11),
  api_group_id NUMBER(11),
  created_at TIMESTAMP NOT NULL,
  created_by VARCHAR2(256 BYTE) NOT NULL,
  updated_at TIMESTAMP NOT NULL,
  updated_by VARCHAR2(256 BYTE) NOT NULL,
  consent_message_id NUMBER(11),
  idx_token VARCHAR2(8 BYTE) NOT NULL,
  CONSTRAINT t_api_method_pk PRIMARY KEY ("ID"),
  CONSTRAINT t_api_method_uk UNIQUE (unique_id),
  CONSTRAINT t_api_consent_mes_id_fk FOREIGN KEY (consent_message_id) REFERENCES occ_dev.t_consent_message ("ID"),
  CONSTRAINT t_api_group_id_fk FOREIGN KEY (api_group_id) REFERENCES occ_dev.t_consent_message ("ID")
);