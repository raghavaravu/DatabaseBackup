CREATE TABLE occ_dev.t_cust_event_day (
  "ID" NUMBER NOT NULL,
  event_id NUMBER,
  unique_id VARCHAR2(256 BYTE) NOT NULL,
  idx_token VARCHAR2(4 BYTE) NOT NULL,
  created_by VARCHAR2(256 BYTE) NOT NULL,
  updated_by VARCHAR2(256 BYTE) NOT NULL,
  "VERSION" NUMBER,
  event_date DATE,
  created_at TIMESTAMP NOT NULL,
  updated_at TIMESTAMP NOT NULL,
  arrival_ts TIMESTAMP,
  adjourn_ts TIMESTAMP,
  CONSTRAINT t_cust_event_day_pk PRIMARY KEY ("ID"),
  CONSTRAINT t_cust_event_day_uk UNIQUE (unique_id),
  CONSTRAINT t_cust_event_id_fk FOREIGN KEY (event_id) REFERENCES occ_dev.t_cust_event ("ID")
);