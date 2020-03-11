CREATE TABLE occ_dev.t_rp_report (
  "ID" NUMBER NOT NULL,
  unique_id VARCHAR2(256 BYTE) NOT NULL,
  report_name VARCHAR2(256 BYTE),
  report_display_text VARCHAR2(256 BYTE),
  report_source VARCHAR2(256 BYTE),
  report_handler_id NUMBER NOT NULL,
  report_group_id NUMBER NOT NULL,
  created_by VARCHAR2(256 BYTE) NOT NULL,
  updated_by VARCHAR2(256 BYTE) NOT NULL,
  created_at TIMESTAMP NOT NULL,
  updated_at TIMESTAMP NOT NULL,
  "VERSION" NUMBER,
  template_id VARCHAR2(256 BYTE),
  report_ui_config VARCHAR2(4000 BYTE),
  default_sort_param VARCHAR2(256 BYTE),
  default_sort_type VARCHAR2(256 BYTE),
  multi_days_allowed CHAR,
  criteria VARCHAR2(256 BYTE),
  report_source_name VARCHAR2(256 BYTE),
  sort_order NUMBER,
  is_active NUMBER(1) DEFAULT 1,
  output_variable VARCHAR2(256 BYTE),
  table_type VARCHAR2(256 BYTE),
  is_default NUMBER(1) DEFAULT 0,
  additional_ui_config VARCHAR2(4000 BYTE),
  report_header VARCHAR2(256 BYTE),
  idx_token VARCHAR2(4 BYTE),
  CONSTRAINT "t_report_pkey" PRIMARY KEY ("ID"),
  CONSTRAINT "fk_report_group_id" FOREIGN KEY (report_group_id) REFERENCES occ_dev.t_rp_report_group ("ID"),
  CONSTRAINT "fk_report_handler_id" FOREIGN KEY (report_handler_id) REFERENCES occ_dev.t_rp_report_handler ("ID")
);