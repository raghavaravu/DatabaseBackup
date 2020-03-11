CREATE TABLE occ_dev.t_audio_conference (
  "ID" NUMBER NOT NULL,
  unique_id VARCHAR2(256 BYTE) NOT NULL,
  created_by VARCHAR2(256 BYTE) NOT NULL,
  created_at TIMESTAMP NOT NULL,
  updated_by VARCHAR2(256 BYTE) NOT NULL,
  updated_at TIMESTAMP NOT NULL,
  audio_visual_id NUMBER,
  event_id NUMBER,
  idx_token VARCHAR2(4 BYTE) NOT NULL,
  "VERSION" NUMBER,
  dial_in_number VARCHAR2(256 BYTE),
  conference_id VARCHAR2(256 BYTE),
  security_pin VARCHAR2(256 BYTE),
  CONSTRAINT t_audio_conf_id_pk PRIMARY KEY ("ID"),
  CONSTRAINT t_audio_conf_event_id FOREIGN KEY (event_id) REFERENCES occ_dev.t_cust_event ("ID"),
  CONSTRAINT t_audio_conf_visual_id_fk FOREIGN KEY (audio_visual_id) REFERENCES occ_dev.t_audio_visual ("ID")
);