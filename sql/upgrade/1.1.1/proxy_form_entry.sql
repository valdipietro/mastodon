-- create the new proxy_form_entry table
CREATE  TABLE IF NOT EXISTS `proxy_form_entry` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `update_timestamp` TIMESTAMP NOT NULL ,
  `create_timestamp` TIMESTAMP NOT NULL ,
  `proxy_form_id` INT UNSIGNED NOT NULL ,
  `user_id` INT UNSIGNED NOT NULL ,
  `deferred` TINYINT(1)  NOT NULL DEFAULT true ,
  `uid` VARCHAR(10) NULL ,
  `proxy` TINYINT(1)  NOT NULL DEFAULT false ,
  `already_identified` TINYINT(1)  NOT NULL DEFAULT false ,
  `proxy_first_name` VARCHAR(255) NULL ,
  `proxy_last_name` VARCHAR(255) NULL ,
  `proxy_apartment_number` VARCHAR(15) NULL ,
  `proxy_street_number` VARCHAR(15) NULL ,
  `proxy_street_name` VARCHAR(255) NULL ,
  `proxy_box` VARCHAR(15) NULL ,
  `proxy_rural_route` VARCHAR(15) NULL ,
  `proxy_address_other` VARCHAR(255) NULL ,
  `proxy_city` VARCHAR(255) NULL ,
  `proxy_region_id` INT UNSIGNED NULL ,
  `proxy_postcode` VARCHAR(10) NULL COMMENT 'May be postal code or zip code.' ,
  `proxy_address_note` TEXT NULL ,
  `proxy_phone` VARCHAR(45) NULL ,
  `proxy_phone_note` TEXT NULL ,
  `proxy_note` TEXT NULL ,
  `informant` TINYINT(1)  NOT NULL DEFAULT false ,
  `same_as_proxy` TINYINT(1)  NOT NULL DEFAULT false ,
  `informant_first_name` VARCHAR(255) NULL ,
  `informant_last_name` VARCHAR(255) NULL ,
  `informant_apartment_number` VARCHAR(15) NULL ,
  `informant_street_number` VARCHAR(15) NULL ,
  `informant_street_name` VARCHAR(255) NULL ,
  `informant_box` VARCHAR(15) NULL ,
  `informant_rural_route` VARCHAR(15) NULL ,
  `informant_address_other` VARCHAR(255) NULL ,
  `informant_city` VARCHAR(255) NULL ,
  `informant_region_id` INT UNSIGNED NULL ,
  `informant_postcode` VARCHAR(10) NULL ,
  `informant_address_note` TEXT NULL ,
  `informant_phone` VARCHAR(45) NULL ,
  `informant_phone_note` TEXT NULL ,
  `informant_note` TEXT NULL ,
  `informant_continue` TINYINT(1)  NOT NULL DEFAULT false ,
  `health_card` TINYINT(1)  NOT NULL DEFAULT false ,
  `signed` TINYINT(1)  NOT NULL DEFAULT false ,
  `date` DATE NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_user_id` (`user_id` ASC) ,
  INDEX `fk_proxy_form_id` (`proxy_form_id` ASC) ,
  INDEX `fk_proxy_region_id` (`proxy_region_id` ASC) ,
  INDEX `fk_informant_region_id` (`informant_region_id` ASC) ,
  UNIQUE INDEX `uq_proxy_form_id_user_id` (`proxy_form_id` ASC, `user_id` ASC) ,
  INDEX `dk_uid` (`uid` ASC) ,
  CONSTRAINT `fk_proxy_form_entry_user_id`
    FOREIGN KEY (`user_id` )
    REFERENCES `user` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_proxy_form_entry_proxy_form_id`
    FOREIGN KEY (`proxy_form_id` )
    REFERENCES `proxy_form` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_proxy_form_entry_proxy_region_id`
    FOREIGN KEY (`proxy_region_id` )
    REFERENCES `region` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_proxy_form_entry_informant_region_id`
    FOREIGN KEY (`informant_region_id` )
    REFERENCES `region` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
