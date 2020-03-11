CREATE TABLE occ_dev.t_rp_report_handler (
  "ID" NUMBER(20) NOT NULL,
  unique_id VARCHAR2(256 BYTE) NOT NULL,
  handler_name VARCHAR2(256 BYTE),
  handler_code VARCHAR2(256 BYTE),
  created_by VARCHAR2(256 BYTE) NOT NULL,
  updated_by VARCHAR2(256 BYTE) NOT NULL,
  created_at TIMESTAMP NOT NULL,
  updated_at TIMESTAMP NOT NULL,
  "VERSION" NUMBER(20),
  idx_token VARCHAR2(4 BYTE),
  CONSTRAINT t_report_handler_pkey PRIMARY KEY ("ID")
);