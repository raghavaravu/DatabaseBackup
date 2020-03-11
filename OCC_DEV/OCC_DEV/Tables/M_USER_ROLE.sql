CREATE TABLE occ_dev.m_user_role (
  user_id NUMBER,
  role_id NUMBER,
  CONSTRAINT m_user_role_id_fk FOREIGN KEY (role_id) REFERENCES occ_dev.m_role ("ID"),
  CONSTRAINT m_user_role_user_fk FOREIGN KEY (user_id) REFERENCES occ_dev.m_user ("ID")
);