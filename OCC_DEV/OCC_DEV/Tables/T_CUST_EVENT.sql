CREATE TABLE occ_dev.t_cust_event (
  "ID" NUMBER NOT NULL,
  unique_id VARCHAR2(256 BYTE) NOT NULL,
  created_by VARCHAR2(256 BYTE) NOT NULL,
  updated_by VARCHAR2(256 BYTE) NOT NULL,
  created_at TIMESTAMP NOT NULL,
  updated_at TIMESTAMP NOT NULL,
  "VERSION" NUMBER,
  title VARCHAR2(256 BYTE),
  start_date DATE,
  duration NUMBER,
  alternative_date DATE,
  event_type_id NUMBER,
  svp CHAR(6 BYTE),
  on_site_contact_name VARCHAR2(256 BYTE),
  on_site_contact_email VARCHAR2(256 BYTE),
  on_site_contact_mobile VARCHAR2(256 BYTE),
  status VARCHAR2(256 BYTE),
  government_question CHAR(6 BYTE),
  idx_token VARCHAR2(4 BYTE) NOT NULL,
  end_date DATE,
  requested_by VARCHAR2(256 BYTE),
  location_id NUMBER,
  svp_info CLOB,
  CONSTRAINT t_cust_event_pk PRIMARY KEY ("ID"),
  CONSTRAINT t_cust_event_uk UNIQUE (unique_id),
  CONSTRAINT t_cust_event_loc_fk FOREIGN KEY (location_id) REFERENCES occ_dev.m_location ("ID"),
  CONSTRAINT t_cust_event_type_fk FOREIGN KEY (event_type_id) REFERENCES occ_dev.t_cust_event_type ("ID")
);