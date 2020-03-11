CREATE TABLE occ_dev.m_state (
  "ID" NUMBER(20) NOT NULL,
  unique_id VARCHAR2(256 BYTE) NOT NULL,
  state_code VARCHAR2(256 BYTE),
  state_name VARCHAR2(256 BYTE),
  created_by VARCHAR2(256 BYTE) NOT NULL,
  updated_by VARCHAR2(256 BYTE) NOT NULL,
  created_at TIMESTAMP NOT NULL,
  updated_at TIMESTAMP NOT NULL,
  "VERSION" NUMBER(6),
  idx_token VARCHAR2(4 BYTE) NOT NULL,
  is_active CHAR(256 BYTE) DEFAULT 1 NOT NULL,
  event_type_id NUMBER,
  CONSTRAINT m_state_pk PRIMARY KEY ("ID"),
  CONSTRAINT m_state_uk UNIQUE (unique_id),
  CONSTRAINT m_state_event_type_id FOREIGN KEY (event_type_id) REFERENCES occ_dev.t_cust_event_type ("ID")
);