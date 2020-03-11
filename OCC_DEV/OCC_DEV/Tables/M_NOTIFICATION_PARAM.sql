CREATE TABLE occ_dev.m_notification_param (
  "ID" NUMBER NOT NULL,
  sender_email_address VARCHAR2(256 BYTE),
  unique_id VARCHAR2(256 BYTE) NOT NULL,
  "VERSION" NUMBER,
  template_id VARCHAR2(256 BYTE),
  created_at TIMESTAMP NOT NULL,
  created_by VARCHAR2(256 BYTE) NOT NULL,
  updated_at TIMESTAMP NOT NULL,
  updated_by VARCHAR2(256 BYTE) NOT NULL,
  idx_token VARCHAR2(4 BYTE) NOT NULL,
  is_active CHAR(256 BYTE) DEFAULT 1 NOT NULL,
  CONSTRAINT m_notification_param_pk PRIMARY KEY ("ID"),
  CONSTRAINT m_notification_param_uk UNIQUE (unique_id)
);