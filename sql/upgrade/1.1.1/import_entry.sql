CREATE TABLE IF NOT EXISTS import_entry (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  update_timestamp TIMESTAMP NOT NULL ,
  create_timestamp TIMESTAMP NOT NULL ,
  import_id INT UNSIGNED NOT NULL ,
  row INT NOT NULL ,
  participant_id INT UNSIGNED NULL DEFAULT NULL ,
  apartment_error TINYINT(1)  NOT NULL DEFAULT false ,
  address_error TINYINT(1)  NOT NULL DEFAULT false ,
  province_error TINYINT(1)  NOT NULL DEFAULT false ,
  postcode_error TINYINT(1)  NOT NULL DEFAULT false ,
  home_phone_error TINYINT(1)  NOT NULL DEFAULT false ,
  mobile_phone_error TINYINT(1)  NOT NULL DEFAULT false ,
  duplicate_error TINYINT(1)  NOT NULL DEFAULT false ,
  gender_error TINYINT(1)  NOT NULL DEFAULT false ,
  date_of_birth_error TINYINT(1)  NOT NULL DEFAULT false ,
  language_error TINYINT(1)  NOT NULL DEFAULT false ,
  cohort_error TINYINT(1)  NOT NULL DEFAULT false ,
  date_error TINYINT(1)  NOT NULL DEFAULT false ,
  first_name VARCHAR(255) NOT NULL ,
  last_name VARCHAR(255) NOT NULL ,
  apartment VARCHAR(15) NULL ,
  street VARCHAR(255) NOT NULL ,
  address_other VARCHAR(255) NULL ,
  city VARCHAR(255) NOT NULL ,
  province VARCHAR(2) NOT NULL ,
  postcode VARCHAR(10) NOT NULL ,
  home_phone VARCHAR(45) NOT NULL ,
  mobile_phone VARCHAR(45) NULL ,
  phone_preference ENUM('home','mobile') NULL ,
  email VARCHAR(255) NULL ,
  gender ENUM('male','female') NOT NULL ,
  date_of_birth DATE NOT NULL ,
  monday TINYINT(1)  NOT NULL DEFAULT false ,
  tuesday TINYINT(1)  NOT NULL DEFAULT false ,
  wednesday TINYINT(1)  NOT NULL DEFAULT false ,
  thursday TINYINT(1)  NOT NULL DEFAULT false ,
  friday TINYINT(1)  NOT NULL DEFAULT false ,
  saturday TINYINT(1)  NOT NULL DEFAULT false ,
  time_9_10 TINYINT(1)  NOT NULL DEFAULT false ,
  time_10_11 TINYINT(1)  NOT NULL DEFAULT false ,
  time_11_12 TINYINT(1)  NOT NULL DEFAULT false ,
  time_12_13 TINYINT(1)  NOT NULL DEFAULT false ,
  time_13_14 TINYINT(1)  NOT NULL DEFAULT false ,
  time_14_15 TINYINT(1)  NOT NULL DEFAULT false ,
  time_15_16 TINYINT(1)  NOT NULL DEFAULT false ,
  time_16_17 TINYINT(1)  NOT NULL DEFAULT false ,
  time_17_18 TINYINT(1)  NOT NULL DEFAULT false ,
  time_18_19 TINYINT(1)  NOT NULL DEFAULT false ,
  time_19_20 TINYINT(1)  NOT NULL DEFAULT false ,
  time_20_21 TINYINT(1)  NOT NULL DEFAULT false ,
  language ENUM('en','fr') NULL ,
  cohort ENUM('tracking','comprehensive') NOT NULL ,
  signed TINYINT(1)  NOT NULL DEFAULT false ,
  date DATE NOT NULL ,
  PRIMARY KEY (id) ,
  INDEX fk_import_id (import_id ASC) ,
  INDEX fk_participant_id (participant_id ASC) ,
  UNIQUE INDEX uq_participant_id (participant_id ASC) ,
  UNIQUE INDEX uq_import_id_row (import_id ASC, row ASC) ,
  CONSTRAINT fk_import_entry_import_id
    FOREIGN KEY (import_id )
    REFERENCES import (id )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_import_entry_participant_id
    FOREIGN KEY (participant_id )
    REFERENCES participant (id )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
