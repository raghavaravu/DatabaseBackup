CREATE TABLE occ_dev.m_notes (
  "ID" NUMBER NOT NULL,
  user_id NUMBER,
  content_type VARCHAR2(100 BYTE),
  "CONTENT" VARCHAR2(4000 BYTE),
  unique_id VARCHAR2(256 BYTE) NOT NULL,
  is_active CHAR DEFAULT 1 NOT NULL,
  created_by VARCHAR2(100 BYTE) NOT NULL,
  created_at TIMESTAMP NOT NULL,
  updated_by VARCHAR2(100 BYTE) NOT NULL,
  updated_at TIMESTAMP NOT NULL,
  "VERSION" NUMBER,
  note_date DATE,
  user_name VARCHAR2(256 BYTE),
  location_id NUMBER,
  note_start_date DATE,
  note_end_date DATE,
  idx_token VARCHAR2(4 BYTE) NOT NULL,
  CONSTRAINT m_notes_pk PRIMARY KEY ("ID"),
  CONSTRAINT m_notes_uk UNIQUE (unique_id),
  CONSTRAINT t_notes_location_id_fk FOREIGN KEY (location_id) REFERENCES occ_dev.m_location ("ID"),
  CONSTRAINT t_notes_user_id_fk FOREIGN KEY (user_id) REFERENCES occ_dev.m_user ("ID")
);