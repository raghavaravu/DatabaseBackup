CREATE TABLE occ_dev.m_search_fields (
  "ID" NUMBER NOT NULL,
  unique_id VARCHAR2(256 BYTE) NOT NULL,
  created_at TIMESTAMP NOT NULL,
  created_by VARCHAR2(256 BYTE) NOT NULL,
  search_type VARCHAR2(256 BYTE),
  search_param VARCHAR2(256 BYTE),
  display_text VARCHAR2(256 BYTE),
  search_order VARCHAR2(256 BYTE),
  location_id NUMBER,
  updated_at TIMESTAMP NOT NULL,
  updated_by VARCHAR2(256 BYTE) NOT NULL,
  idx_token VARCHAR2(4 BYTE) NOT NULL,
  "VERSION" NUMBER,
  is_active CHAR(6 BYTE) NOT NULL,
  CONSTRAINT m_search_fields_pk PRIMARY KEY ("ID"),
  CONSTRAINT m_search_fields_uni_id_uk UNIQUE (unique_id),
  CONSTRAINT m_search_fields_loc_fk FOREIGN KEY (location_id) REFERENCES occ_dev.m_location ("ID")
);