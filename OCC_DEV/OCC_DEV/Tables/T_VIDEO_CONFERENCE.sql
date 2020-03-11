CREATE TABLE occ_dev.t_video_conference (
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
  video_start_time TIMESTAMP,
  CONSTRAINT t_video_conf_id_pk PRIMARY KEY ("ID"),
  CONSTRAINT t_video_conff_event_id FOREIGN KEY (event_id) REFERENCES occ_dev.t_cust_event ("ID"),
  CONSTRAINT t_video_conf_visual_id_fk FOREIGN KEY (audio_visual_id) REFERENCES occ_dev.t_audio_visual ("ID")
);