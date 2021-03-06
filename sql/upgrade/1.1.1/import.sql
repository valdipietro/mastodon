CREATE TABLE IF NOT EXISTS import (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  update_timestamp TIMESTAMP NOT NULL ,
  create_timestamp TIMESTAMP NOT NULL ,
  name VARCHAR(255) NOT NULL ,
  date DATE NOT NULL ,
  processed TINYINT(1)  NOT NULL DEFAULT false ,
  md5 VARCHAR(45) NOT NULL ,
  data MEDIUMBLOB NOT NULL ,
  PRIMARY KEY (id) ,
  UNIQUE INDEX uq_md5 (md5 ASC) ,
  UNIQUE INDEX uq_name (name ASC) )
ENGINE = InnoDB;
