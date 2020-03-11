CREATE TABLE occ_dev.m_location_hours (
  location_id NUMBER,
  sunday VARCHAR2(256 BYTE),
  monday VARCHAR2(256 BYTE),
  tuesday VARCHAR2(256 BYTE),
  wednesday VARCHAR2(256 BYTE),
  thursday VARCHAR2(256 BYTE),
  friday VARCHAR2(256 BYTE),
  saturday VARCHAR2(256 BYTE),
  start_date DATE,
  end_date DATE,
  CONSTRAINT m_loc_hours_loc_fk FOREIGN KEY (location_id) REFERENCES occ_dev.m_location ("ID")
);