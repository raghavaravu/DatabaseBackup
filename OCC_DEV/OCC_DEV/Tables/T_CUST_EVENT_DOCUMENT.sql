CREATE TABLE occ_dev.t_cust_event_document (
  "ID" NUMBER NOT NULL,
  document_name VARCHAR2(256 BYTE),
  document_content_type VARCHAR2(256 BYTE),
  document_size NUMBER,
  unique_id VARCHAR2(256 BYTE) NOT NULL,
  created_by VARCHAR2(256 BYTE) NOT NULL,
  created_at TIMESTAMP NOT NULL,
  updated_by VARCHAR2(256 BYTE) NOT NULL,
  updated_at TIMESTAMP NOT NULL,
  "VERSION" NUMBER,
  event_id NUMBER,
  document_type VARCHAR2(256 BYTE),
  idx_token VARCHAR2(4 BYTE) NOT NULL,
  document_id VARCHAR2(200 BYTE),
  CONSTRAINT t_cust_event_document_pk PRIMARY KEY ("ID"),
  CONSTRAINT t_cust_event_document_uk UNIQUE (unique_id),
  CONSTRAINT t_cust_event_document_event_fk FOREIGN KEY (event_id) REFERENCES occ_dev.t_cust_event ("ID")
);