CREATE TABLE occ_dev.t_cust_event_day_topic (
  "ID" NUMBER NOT NULL,
  event_day_id NUMBER,
  duration NUMBER,
  room NUMBER,
  event_type_activity_id NUMBER,
  topic VARCHAR2(4000 BYTE),
  sub_topic VARCHAR2(256 BYTE),
  optional_topic VARCHAR2(4000 BYTE),
  unique_id VARCHAR2(256 BYTE) NOT NULL,
  created_by VARCHAR2(256 BYTE) NOT NULL,
  updated_by VARCHAR2(256 BYTE) NOT NULL,
  "VERSION" NUMBER,
  no_of_attendees NUMBER,
  created_at TIMESTAMP NOT NULL,
  updated_at TIMESTAMP NOT NULL,
  activity_start_time TIMESTAMP,
  event_id NUMBER,
  activity_date DATE,
  notes VARCHAR2(4000 BYTE),
  topic_type NUMBER,
  idx_token VARCHAR2(4 BYTE) NOT NULL,
  CONSTRAINT t_cust_ev_day_topic_pk PRIMARY KEY ("ID"),
  CONSTRAINT t_cust_event_day_topic_uk UNIQUE (unique_id),
  CONSTRAINT t_cust_ev_day_top_ev_day_fk FOREIGN KEY (event_day_id) REFERENCES occ_dev.t_cust_event_day ("ID"),
  CONSTRAINT t_cust_ev_day_top_ev_id_fk FOREIGN KEY (event_id) REFERENCES occ_dev.t_cust_event ("ID"),
  CONSTRAINT t_cust_ev_day_top_ev_type_fk FOREIGN KEY (event_type_activity_id) REFERENCES occ_dev.t_cust_event_type ("ID"),
  CONSTRAINT t_cust_ev_day_top_type_fk FOREIGN KEY (topic_type) REFERENCES occ_dev.m_topic_type ("ID")
);