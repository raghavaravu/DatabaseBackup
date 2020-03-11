CREATE TABLE occ_dev.m_action (
  "ID" NUMBER NOT NULL,
  action_name VARCHAR2(52 BYTE),
  unique_id VARCHAR2(256 BYTE) NOT NULL,
  created_by VARCHAR2(256 BYTE) NOT NULL,
  created_at TIMESTAMP NOT NULL,
  updated_by VARCHAR2(256 BYTE) NOT NULL,
  updated_at TIMESTAMP NOT NULL,
  "VERSION" NUMBER,
  display_text VARCHAR2(256 BYTE),
  idx_token VARCHAR2(4 BYTE) NOT NULL,
  is_active CHAR(256 BYTE) DEFAULT 1 NOT NULL,
  event_type_id NUMBER,
  operation VARCHAR2(52 BYTE),
  CONSTRAINT m_action_pk PRIMARY KEY ("ID"),
  CONSTRAINT m_action_uk UNIQUE (unique_id),
  CONSTRAINT m_action_event_type_id FOREIGN KEY (event_type_id) REFERENCES occ_dev.t_cust_event_type ("ID")
);