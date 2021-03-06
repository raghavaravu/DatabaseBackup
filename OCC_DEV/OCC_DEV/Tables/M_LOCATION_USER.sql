CREATE TABLE occ_dev.m_location_user (
  "ID" NUMBER NOT NULL,
  unique_id VARCHAR2(256 BYTE) NOT NULL,
  active_to DATE,
  location_id NUMBER,
  user_id NUMBER,
  role_id NUMBER,
  created_by VARCHAR2(256 BYTE) NOT NULL,
  created_at TIMESTAMP NOT NULL,
  updated_by VARCHAR2(256 BYTE) NOT NULL,
  updated_at TIMESTAMP NOT NULL,
  "VERSION" NUMBER,
  active_from DATE,
  idx_token VARCHAR2(4 BYTE) NOT NULL,
  is_active CHAR(256 BYTE) DEFAULT 1 NOT NULL,
  CONSTRAINT m_loc_user_pk PRIMARY KEY ("ID"),
  CONSTRAINT m_location_user_uk UNIQUE (unique_id),
  CONSTRAINT m_loc_user_fk FOREIGN KEY (location_id) REFERENCES occ_dev.m_location ("ID"),
  CONSTRAINT m_loc_user_id_fk FOREIGN KEY (user_id) REFERENCES occ_dev.m_user ("ID"),
  CONSTRAINT m_loc_user_role_id_fk FOREIGN KEY (role_id) REFERENCES occ_dev.m_role ("ID")
);