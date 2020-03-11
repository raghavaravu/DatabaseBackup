CREATE TABLE occ_dev.t_web_cast (
  "ID" NUMBER NOT NULL,
  unique_id VARCHAR2(256 BYTE) NOT NULL,
  created_by VARCHAR2(256 BYTE) NOT NULL,
  created_at TIMESTAMP NOT NULL,
  updated_by VARCHAR2(256 BYTE) NOT NULL,
  updated_at TIMESTAMP NOT NULL,
  idx_token VARCHAR2(4 BYTE) NOT NULL,
  event_id NUMBER,
  "VERSION" NUMBER,
  web_cast_start_time TIMESTAMP,
  audio_visual_id NUMBER,
  CONSTRAINT t_web_cast_id_pk PRIMARY KEY ("ID"),
  CONSTRAINT t_web_cast_event_id FOREIGN KEY (event_id) REFERENCES occ_dev.t_cust_event ("ID"),
  CONSTRAINT t_web_cast_visual_id_fk FOREIGN KEY (audio_visual_id) REFERENCES occ_dev.t_audio_visual ("ID")
);