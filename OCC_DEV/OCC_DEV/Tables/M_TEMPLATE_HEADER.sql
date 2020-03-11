CREATE TABLE occ_dev.m_template_header (
  "ID" NUMBER(20) NOT NULL,
  unique_id VARCHAR2(256 BYTE) NOT NULL,
  template_description VARCHAR2(256 BYTE),
  created_by VARCHAR2(256 BYTE) NOT NULL,
  updated_by VARCHAR2(256 BYTE) NOT NULL,
  created_at TIMESTAMP NOT NULL,
  updated_at TIMESTAMP NOT NULL,
  "VERSION" NUMBER,
  idx_token VARCHAR2(4 BYTE) NOT NULL,
  is_active CHAR(256 BYTE) DEFAULT 1 NOT NULL,
  location_id NUMBER,
  CONSTRAINT m_template_header_pk PRIMARY KEY ("ID"),
  CONSTRAINT m_template_header_uk UNIQUE (unique_id),
  CONSTRAINT m_template_header_loc_id FOREIGN KEY (location_id) REFERENCES occ_dev.m_location ("ID")
);