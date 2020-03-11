CREATE TABLE occ_dev.m_search_param_mapping (
  "ID" NUMBER NOT NULL,
  search_param VARCHAR2(256 BYTE),
  search_field VARCHAR2(256 BYTE),
  search_resource VARCHAR2(256 BYTE),
  criteria_condition VARCHAR2(20 BYTE),
  is_active CHAR(256 BYTE) DEFAULT 1 NOT NULL,
  unique_id VARCHAR2(256 BYTE) NOT NULL,
  "VERSION" NUMBER,
  created_by VARCHAR2(256 BYTE) NOT NULL,
  created_at TIMESTAMP NOT NULL,
  updated_by VARCHAR2(256 BYTE) NOT NULL,
  updated_at TIMESTAMP NOT NULL,
  field_condition VARCHAR2(20 BYTE),
  idx_token VARCHAR2(4 BYTE) NOT NULL,
  location_id NUMBER,
  CONSTRAINT m_search_param_mapping_pk PRIMARY KEY ("ID"),
  CONSTRAINT m_search_param_mapping_uk UNIQUE (unique_id)
);