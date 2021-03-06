CREATE TABLE occ_dev.m_location_parameter (
  "ID" NUMBER NOT NULL,
  unique_id VARCHAR2(250 BYTE) NOT NULL,
  location_id NUMBER,
  created_by VARCHAR2(256 BYTE) NOT NULL,
  created_at TIMESTAMP NOT NULL,
  updated_by VARCHAR2(256 BYTE) NOT NULL,
  updated_at TIMESTAMP NOT NULL,
  "VERSION" NUMBER,
  is_active CHAR(256 BYTE) DEFAULT 1 NOT NULL,
  param_name VARCHAR2(256 BYTE),
  param_display_text VARCHAR2(1000 BYTE),
  param_value VARCHAR2(2000 BYTE),
  param_description VARCHAR2(2000 BYTE),
  param_type VARCHAR2(256 BYTE),
  param_validation VARCHAR2(2000 BYTE),
  param_display_type VARCHAR2(256 BYTE),
  is_required CHAR(5 BYTE),
  is_modifiable CHAR(5 BYTE),
  idx_token VARCHAR2(4 BYTE),
  CONSTRAINT m_location_parameter_pk PRIMARY KEY ("ID"),
  CONSTRAINT m_location_parameter_uk UNIQUE (unique_id),
  CONSTRAINT m_location_parm_loc_fk FOREIGN KEY (location_id) REFERENCES occ_dev.m_location ("ID")
);