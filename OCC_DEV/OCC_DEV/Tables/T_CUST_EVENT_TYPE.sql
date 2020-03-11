CREATE TABLE occ_dev.t_cust_event_type (
  "ID" NUMBER NOT NULL,
  unique_id VARCHAR2(256 BYTE) NOT NULL,
  "NAME" VARCHAR2(256 BYTE),
  description VARCHAR2(256 BYTE),
  active_from TIMESTAMP,
  active_to TIMESTAMP,
  created_at TIMESTAMP NOT NULL,
  created_by VARCHAR2(256 BYTE) NOT NULL,
  updated_at TIMESTAMP NOT NULL,
  updated_by VARCHAR2(256 BYTE) NOT NULL,
  "VERSION" NUMBER,
  code VARCHAR2(256 BYTE),
  idx_token VARCHAR2(256 BYTE) NOT NULL,
  CONSTRAINT t_cust_event_type_pk PRIMARY KEY ("ID"),
  CONSTRAINT t_cust_event_type_uk UNIQUE (unique_id)
);