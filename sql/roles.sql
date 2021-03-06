-- -----------------------------------------------------
-- Roles
-- -----------------------------------------------------
SET AUTOCOMMIT=0;

-- -----------------------------------------------------
-- -----------------------------------------------------
-- No need to insert the administrator role, cenozo creates it for us
-- INSERT INTO role( name, tier ) VALUES( "administrator", 3 );

-- administrator (specific to this role)
INSERT INTO role_has_operation( role_id, operation_id )
SELECT role.id, operation.id
FROM role, operation
WHERE role.name = "administrator"
AND operation.subject = "administrator";

-- participant and alternates
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "administrator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "pull" AND subject = "participant" AND name = "primary" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "administrator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "pull" AND subject = "participant" AND name = "list" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "administrator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "participant" AND name = "delete" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "administrator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "participant" AND name = "edit" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "administrator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "participant" AND name = "new" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "administrator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "participant" AND name = "add" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "administrator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "participant" AND name = "view" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "administrator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "participant" AND name = "list" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "administrator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "alternate" AND name = "delete" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "administrator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "alternate" AND name = "edit" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "administrator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "alternate" AND name = "new" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "administrator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "alternate" AND name = "add" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "administrator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "alternate" AND name = "view" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "administrator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "alternate" AND name = "list" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "administrator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "pull" AND subject = "participant" AND name = "list_alternate" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "administrator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "pull" AND subject = "participant" AND name = "list_consent" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "administrator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "participant" AND name = "add_alternate" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "administrator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "participant" AND name = "delete_alternate" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "administrator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "participant" AND name = "site_reassign" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "administrator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "participant" AND name = "site_reassign" );

-- availability
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "administrator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "availability" AND name = "delete" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "administrator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "availability" AND name = "edit" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "administrator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "availability" AND name = "new" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "administrator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "availability" AND name = "add" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "administrator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "availability" AND name = "view" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "administrator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "availability" AND name = "list" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "administrator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "participant" AND name = "add_availability" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "administrator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "participant" AND name = "delete_availability" );

-- consent
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "administrator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "consent" AND name = "delete" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "administrator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "consent" AND name = "edit" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "administrator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "consent" AND name = "new" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "administrator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "consent" AND name = "add" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "administrator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "consent" AND name = "view" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "administrator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "consent" AND name = "list" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "administrator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "participant" AND name = "add_consent" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "administrator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "participant" AND name = "delete_consent" );

-- contact information (address and phone)
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "administrator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "address" AND name = "add" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "administrator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "address" AND name = "delete" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "administrator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "address" AND name = "edit" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "administrator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "address" AND name = "list" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "administrator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "address" AND name = "new" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "administrator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "pull" AND subject = "address" AND name = "primary" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "administrator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "address" AND name = "view" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "administrator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "participant" AND name = "add_address" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "administrator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "participant" AND name = "delete_address" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "administrator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "alternate" AND name = "add_address" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "administrator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "alternate" AND name = "delete_address" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "administrator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "phone" AND name = "add" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "administrator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "phone" AND name = "delete" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "administrator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "phone" AND name = "edit" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "administrator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "phone" AND name = "list" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "administrator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "phone" AND name = "new" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "administrator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "pull" AND subject = "phone" AND name = "primary" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "administrator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "phone" AND name = "view" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "administrator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "participant" AND name = "add_phone" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "administrator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "participant" AND name = "delete_phone" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "administrator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "alternate" AND name = "add_phone" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "administrator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "alternate" AND name = "delete_phone" );

-- consent form
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "administrator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "consent_form" AND name = "adjudicate" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "administrator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "pull" AND subject = "consent_form" AND name = "download" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "administrator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "consent_form" AND name = "list" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "administrator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "consent_form" AND name = "view" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "administrator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "consent_form" AND name = "edit" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "administrator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "consent_form_entry" AND name = "edit" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "administrator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "pull" AND subject = "consent_form_entry" AND name = "validate" );

-- contact form
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "administrator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "contact_form" AND name = "adjudicate" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "administrator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "pull" AND subject = "contact_form" AND name = "download" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "administrator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "contact_form" AND name = "list" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "administrator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "contact_form" AND name = "view" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "administrator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "contact_form" AND name = "edit" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "administrator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "contact_form_entry" AND name = "edit" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "administrator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "pull" AND subject = "contact_form_entry" AND name = "validate" );

-- import
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "administrator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "import" AND name = "add" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "administrator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "import" AND name = "new" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "administrator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "import" AND name = "delete" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "administrator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "import" AND name = "process" );

-- proxy form
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "administrator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "proxy_form" AND name = "adjudicate" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "administrator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "pull" AND subject = "proxy_form" AND name = "download" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "administrator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "proxy_form" AND name = "list" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "administrator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "proxy_form" AND name = "view" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "administrator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "proxy_form" AND name = "edit" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "administrator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "proxy_form_entry" AND name = "edit" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "administrator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "pull" AND subject = "proxy_form_entry" AND name = "validate" );

-- quota
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "administrator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "quota" AND name = "delete" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "administrator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "quota" AND name = "edit" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "administrator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "quota" AND name = "new" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "administrator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "quota" AND name = "add" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "administrator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "quota" AND name = "view" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "administrator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "quota" AND name = "list" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "administrator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "pull" AND subject = "quota" AND name = "primary" );

-- system messages
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "administrator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "system_message" AND name = "delete" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "administrator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "system_message" AND name = "edit" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "administrator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "system_message" AND name = "new" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "administrator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "system_message" AND name = "add" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "administrator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "system_message" AND name = "view" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "administrator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "system_message" AND name = "list" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "administrator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "pull" AND subject = "system_message" AND name = "primary" );

-- ALL reports
INSERT INTO role_has_operation( role_id, operation_id )
SELECT role.id, operation.id
FROM role, operation
WHERE role.name = "administrator"
AND operation.name = "report";


-- -----------------------------------------------------
-- -----------------------------------------------------
INSERT INTO role( name, tier ) VALUES( "coordinator", 2 );

-- coordinator (specific to this role)
INSERT INTO role_has_operation( role_id, operation_id )
SELECT role.id, operation.id
FROM role, operation
WHERE role.name = "coordinator"
AND operation.subject = "coordinator";

-- setting
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "coordinator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "setting" AND name = "edit" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "coordinator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "setting" AND name = "view" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "coordinator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "setting" AND name = "list" );

-- user/site/role
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "coordinator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "user" AND name = "delete" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "coordinator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "user" AND name = "edit" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "coordinator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "user" AND name = "new" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "coordinator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "user" AND name = "reset_password" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "coordinator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "user" AND name = "set_password" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "coordinator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "user" AND name = "add" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "coordinator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "user" AND name = "view" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "coordinator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "user" AND name = "list" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "coordinator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "pull" AND subject = "user" AND name = "list" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "coordinator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "role" AND name = "view" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "coordinator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "role" AND name = "list" );

-- operation
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "coordinator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "activity" AND name = "list" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "coordinator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "operation" AND name = "list" );

-- access
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "coordinator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "access" AND name = "delete" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "coordinator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "access" AND name = "list" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "coordinator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "user" AND name = "add_access" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "coordinator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "user" AND name = "new_access" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "coordinator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "user" AND name = "delete_access" );

-- participant
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "coordinator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "pull" AND subject = "participant" AND name = "primary" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "coordinator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "pull" AND subject = "participant" AND name = "list" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "coordinator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "participant" AND name = "edit" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "coordinator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "participant" AND name = "view" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "coordinator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "participant" AND name = "list" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "coordinator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "alternate" AND name = "delete" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "coordinator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "alternate" AND name = "edit" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "coordinator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "alternate" AND name = "new" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "coordinator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "alternate" AND name = "add" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "coordinator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "alternate" AND name = "view" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "coordinator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "alternate" AND name = "list" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "coordinator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "pull" AND subject = "participant" AND name = "list_alternate" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "coordinator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "pull" AND subject = "participant" AND name = "list_consent" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "coordinator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "participant" AND name = "add_alternate" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "coordinator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "participant" AND name = "delete_alternate" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "coordinator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "pull" AND subject = "contact_form" AND name = "download" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "coordinator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "pull" AND subject = "consent_form" AND name = "download" );

-- availability
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "coordinator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "availability" AND name = "delete" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "coordinator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "availability" AND name = "edit" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "coordinator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "availability" AND name = "new" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "coordinator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "availability" AND name = "add" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "coordinator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "availability" AND name = "view" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "coordinator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "availability" AND name = "list" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "coordinator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "participant" AND name = "add_availability" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "coordinator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "participant" AND name = "delete_availability" );

-- consent
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "coordinator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "consent" AND name = "delete" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "coordinator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "consent" AND name = "edit" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "coordinator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "consent" AND name = "new" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "coordinator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "consent" AND name = "add" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "coordinator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "consent" AND name = "view" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "coordinator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "consent" AND name = "list" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "coordinator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "participant" AND name = "add_consent" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "coordinator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "participant" AND name = "delete_consent" );

-- contact information (address and phone)
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "coordinator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "address" AND name = "add" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "coordinator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "address" AND name = "delete" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "coordinator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "address" AND name = "edit" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "coordinator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "address" AND name = "list" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "coordinator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "address" AND name = "new" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "coordinator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "pull" AND subject = "address" AND name = "primary" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "coordinator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "address" AND name = "view" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "coordinator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "participant" AND name = "add_address" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "coordinator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "participant" AND name = "delete_address" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "coordinator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "alternate" AND name = "add_address" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "coordinator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "alternate" AND name = "delete_address" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "coordinator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "phone" AND name = "add" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "coordinator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "phone" AND name = "delete" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "coordinator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "phone" AND name = "edit" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "coordinator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "phone" AND name = "list" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "coordinator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "phone" AND name = "new" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "coordinator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "pull" AND subject = "phone" AND name = "primary" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "coordinator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "phone" AND name = "view" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "coordinator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "participant" AND name = "add_phone" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "coordinator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "participant" AND name = "delete_phone" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "coordinator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "alternate" AND name = "add_phone" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "coordinator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "alternate" AND name = "delete_phone" );

-- notes
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "coordinator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "note" AND name = "delete" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "coordinator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "note" AND name = "edit" );

-- report
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "coordinator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "alternate" AND name = "report" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "coordinator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "pull" AND subject = "alternate" AND name = "report" );

-- system messages
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "supervisor" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "system_message" AND name = "delete" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "supervisor" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "system_message" AND name = "edit" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "supervisor" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "system_message" AND name = "new" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "supervisor" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "system_message" AND name = "add" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "supervisor" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "system_message" AND name = "view" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "supervisor" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "system_message" AND name = "list" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "supervisor" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "pull" AND subject = "system_message" AND name = "primary" );


-- -----------------------------------------------------
-- -----------------------------------------------------
INSERT INTO role( name ) VALUES( "interviewer" );

-- interviewer (specific to this role)
INSERT INTO role_has_operation( role_id, operation_id )
SELECT role.id, operation.id
FROM role, operation
WHERE role.name = "interviewer"
AND operation.subject = "interviewer";

-- participant
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "interviewer" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "participant" AND name = "view" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "interviewer" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "participant" AND name = "edit" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "interviewer" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "pull" AND subject = "participant" AND name = "primary" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "interviewer" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "pull" AND subject = "participant" AND name = "list" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "interviewer" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "alternate" AND name = "delete" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "interviewer" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "alternate" AND name = "edit" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "interviewer" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "alternate" AND name = "new" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "interviewer" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "alternate" AND name = "add" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "interviewer" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "alternate" AND name = "view" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "interviewer" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "alternate" AND name = "list" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "interviewer" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "pull" AND subject = "participant" AND name = "list_alternate" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "interviewer" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "pull" AND subject = "participant" AND name = "list_consent" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "interviewer" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "participant" AND name = "add_alternate" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "interviewer" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "participant" AND name = "delete_alternate" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "interviewer" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "pull" AND subject = "contact_form" AND name = "download" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "interviewer" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "pull" AND subject = "consent_form" AND name = "download" );

-- availability
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "interviewer" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "availability" AND name = "delete" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "interviewer" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "availability" AND name = "edit" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "interviewer" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "availability" AND name = "new" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "interviewer" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "availability" AND name = "add" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "interviewer" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "availability" AND name = "view" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "interviewer" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "availability" AND name = "list" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "interviewer" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "participant" AND name = "add_availability" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "interviewer" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "participant" AND name = "delete_availability" );

-- consent
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "interviewer" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "consent" AND name = "new" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "interviewer" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "consent" AND name = "delete" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "interviewer" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "consent" AND name = "add" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "interviewer" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "consent" AND name = "view" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "interviewer" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "consent" AND name = "list" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "interviewer" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "participant" AND name = "add_consent" );

-- contact information (address and phone)
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "interviewer" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "address" AND name = "add" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "interviewer" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "address" AND name = "delete" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "interviewer" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "address" AND name = "edit" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "interviewer" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "address" AND name = "list" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "interviewer" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "address" AND name = "new" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "interviewer" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "pull" AND subject = "address" AND name = "primary" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "interviewer" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "address" AND name = "view" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "interviewer" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "participant" AND name = "add_address" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "interviewer" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "participant" AND name = "delete_address" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "interviewer" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "alternate" AND name = "add_address" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "interviewer" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "alternate" AND name = "delete_address" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "interviewer" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "phone" AND name = "add" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "interviewer" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "phone" AND name = "delete" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "interviewer" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "phone" AND name = "edit" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "interviewer" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "phone" AND name = "list" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "interviewer" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "phone" AND name = "new" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "interviewer" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "pull" AND subject = "phone" AND name = "primary" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "interviewer" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "phone" AND name = "view" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "interviewer" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "participant" AND name = "add_phone" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "interviewer" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "participant" AND name = "delete_phone" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "interviewer" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "alternate" AND name = "add_phone" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "interviewer" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "alternate" AND name = "delete_phone" );


-- -----------------------------------------------------
-- -----------------------------------------------------
INSERT INTO role( name ) VALUES( "onyx" );

-- onyx (specific to this role)
INSERT INTO role_has_operation( role_id, operation_id )
SELECT role.id, operation.id
FROM role, operation
WHERE role.name = "onyx"
AND operation.subject = "onyx";

INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "onyx" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "pull" AND subject = "participant" AND name = "primary" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "onyx" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "pull" AND subject = "participant" AND name = "list" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "onyx" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "participant" AND name = "edit" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "onyx" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "consent" AND name = "new" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "onyx" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "proxy_form" AND name = "new" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "onyx" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "pull" AND subject = "proxy_form_entry" AND name = "validate" );


-- -----------------------------------------------------
-- -----------------------------------------------------
INSERT INTO role( name ) VALUES( "opal" );

-- opal (specific to this role)
INSERT INTO role_has_operation( role_id, operation_id )
SELECT role.id, operation.id
FROM role, operation
WHERE role.name = "opal"
AND operation.subject = "opal";


-- -----------------------------------------------------
-- -----------------------------------------------------
INSERT INTO role( name ) VALUES( "operator" );

-- operator (specific to this role)
INSERT INTO role_has_operation( role_id, operation_id )
SELECT role.id, operation.id
FROM role, operation
WHERE role.name = "operator"
AND operation.subject = "operator";

-- participant
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "operator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "participant" AND name = "view" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "operator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "participant" AND name = "edit" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "operator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "pull" AND subject = "participant" AND name = "primary" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "operator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "pull" AND subject = "participant" AND name = "list" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "operator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "alternate" AND name = "delete" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "operator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "alternate" AND name = "edit" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "operator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "alternate" AND name = "new" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "operator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "alternate" AND name = "add" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "operator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "alternate" AND name = "view" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "operator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "alternate" AND name = "list" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "operator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "pull" AND subject = "participant" AND name = "list_alternate" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "operator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "pull" AND subject = "participant" AND name = "list_consent" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "operator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "participant" AND name = "add_alternate" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "operator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "participant" AND name = "delete_alternate" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "operator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "pull" AND subject = "contact_form" AND name = "download" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "operator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "pull" AND subject = "consent_form" AND name = "download" );

-- availability
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "operator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "availability" AND name = "delete" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "operator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "availability" AND name = "edit" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "operator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "availability" AND name = "new" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "operator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "availability" AND name = "add" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "operator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "availability" AND name = "view" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "operator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "availability" AND name = "list" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "operator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "participant" AND name = "add_availability" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "operator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "participant" AND name = "delete_availability" );

-- consent
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "operator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "consent" AND name = "new" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "operator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "consent" AND name = "delete" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "operator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "consent" AND name = "add" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "operator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "consent" AND name = "view" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "operator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "consent" AND name = "list" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "operator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "participant" AND name = "add_consent" );

-- contact information (address and phone)
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "operator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "address" AND name = "add" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "operator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "address" AND name = "delete" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "operator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "address" AND name = "edit" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "operator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "address" AND name = "list" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "operator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "address" AND name = "new" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "operator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "pull" AND subject = "address" AND name = "primary" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "operator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "address" AND name = "view" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "operator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "participant" AND name = "add_address" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "operator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "participant" AND name = "delete_address" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "operator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "alternate" AND name = "add_address" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "operator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "alternate" AND name = "delete_address" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "operator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "phone" AND name = "add" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "operator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "phone" AND name = "delete" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "operator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "phone" AND name = "edit" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "operator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "phone" AND name = "list" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "operator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "phone" AND name = "new" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "operator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "pull" AND subject = "phone" AND name = "primary" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "operator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "phone" AND name = "view" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "operator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "participant" AND name = "add_phone" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "operator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "participant" AND name = "delete_phone" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "operator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "alternate" AND name = "add_phone" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "operator" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "alternate" AND name = "delete_phone" );


-- -----------------------------------------------------
-- -----------------------------------------------------
INSERT INTO role( name, tier ) VALUES( "supervisor", 2 );

-- supervisor (specific to this role)
INSERT INTO role_has_operation( role_id, operation_id )
SELECT role.id, operation.id
FROM role, operation
WHERE role.name = "supervisor"
AND operation.subject = "supervisor";

-- setting
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "supervisor" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "setting" AND name = "edit" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "supervisor" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "setting" AND name = "view" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "supervisor" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "setting" AND name = "list" );

-- user/site/role
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "supervisor" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "user" AND name = "delete" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "supervisor" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "user" AND name = "edit" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "supervisor" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "user" AND name = "new" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "supervisor" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "user" AND name = "reset_password" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "supervisor" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "user" AND name = "set_password" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "supervisor" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "user" AND name = "add" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "supervisor" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "user" AND name = "view" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "supervisor" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "user" AND name = "list" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "supervisor" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "pull" AND subject = "user" AND name = "list" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "supervisor" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "role" AND name = "view" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "supervisor" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "role" AND name = "list" );

-- operation
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "supervisor" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "activity" AND name = "list" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "supervisor" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "operation" AND name = "list" );

-- access
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "supervisor" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "access" AND name = "delete" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "supervisor" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "access" AND name = "list" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "supervisor" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "user" AND name = "add_access" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "supervisor" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "user" AND name = "new_access" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "supervisor" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "user" AND name = "delete_access" );

-- participant
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "supervisor" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "pull" AND subject = "participant" AND name = "primary" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "supervisor" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "pull" AND subject = "participant" AND name = "list" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "supervisor" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "participant" AND name = "edit" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "supervisor" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "participant" AND name = "view" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "supervisor" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "participant" AND name = "list" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "supervisor" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "alternate" AND name = "delete" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "supervisor" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "alternate" AND name = "edit" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "supervisor" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "alternate" AND name = "new" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "supervisor" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "alternate" AND name = "add" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "supervisor" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "alternate" AND name = "view" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "supervisor" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "alternate" AND name = "list" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "supervisor" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "pull" AND subject = "participant" AND name = "list_alternate" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "supervisor" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "pull" AND subject = "participant" AND name = "list_consent" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "supervisor" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "participant" AND name = "add_alternate" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "supervisor" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "participant" AND name = "delete_alternate" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "supervisor" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "pull" AND subject = "contact_form" AND name = "download" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "supervisor" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "pull" AND subject = "consent_form" AND name = "download" );

-- availability
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "supervisor" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "availability" AND name = "delete" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "supervisor" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "availability" AND name = "edit" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "supervisor" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "availability" AND name = "new" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "supervisor" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "availability" AND name = "add" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "supervisor" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "availability" AND name = "view" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "supervisor" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "availability" AND name = "list" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "supervisor" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "participant" AND name = "add_availability" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "supervisor" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "participant" AND name = "delete_availability" );

-- consent
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "supervisor" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "consent" AND name = "delete" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "supervisor" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "consent" AND name = "edit" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "supervisor" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "consent" AND name = "new" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "supervisor" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "consent" AND name = "add" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "supervisor" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "consent" AND name = "view" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "supervisor" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "consent" AND name = "list" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "supervisor" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "participant" AND name = "add_consent" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "supervisor" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "participant" AND name = "delete_consent" );

-- contact information (address and phone)
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "supervisor" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "address" AND name = "add" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "supervisor" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "address" AND name = "delete" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "supervisor" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "address" AND name = "edit" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "supervisor" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "address" AND name = "list" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "supervisor" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "address" AND name = "new" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "supervisor" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "pull" AND subject = "address" AND name = "primary" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "supervisor" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "address" AND name = "view" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "supervisor" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "participant" AND name = "add_address" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "supervisor" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "participant" AND name = "delete_address" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "supervisor" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "alternate" AND name = "add_address" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "supervisor" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "alternate" AND name = "delete_address" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "supervisor" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "phone" AND name = "add" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "supervisor" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "phone" AND name = "delete" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "supervisor" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "phone" AND name = "edit" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "supervisor" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "phone" AND name = "list" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "supervisor" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "phone" AND name = "new" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "supervisor" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "pull" AND subject = "phone" AND name = "primary" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "supervisor" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "phone" AND name = "view" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "supervisor" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "participant" AND name = "add_phone" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "supervisor" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "participant" AND name = "delete_phone" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "supervisor" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "alternate" AND name = "add_phone" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "supervisor" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "alternate" AND name = "delete_phone" );

-- notes
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "supervisor" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "note" AND name = "delete" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "supervisor" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "note" AND name = "edit" );

-- system messages
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "supervisor" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "system_message" AND name = "delete" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "supervisor" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "system_message" AND name = "edit" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "supervisor" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "system_message" AND name = "new" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "supervisor" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "system_message" AND name = "add" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "supervisor" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "system_message" AND name = "view" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "supervisor" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "system_message" AND name = "list" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "supervisor" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "pull" AND subject = "system_message" AND name = "primary" );


-- -----------------------------------------------------
-- -----------------------------------------------------
INSERT INTO role( name ) VALUES( "typist" );

-- typist (specific to this role)
INSERT INTO role_has_operation( role_id, operation_id )
SELECT role.id, operation.id
FROM role, operation
WHERE role.name = "typist"
AND operation.subject = "typist";

-- consent form
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "typist" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "pull" AND subject = "consent_form" AND name = "download" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "typist" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "consent_form_entry" AND name = "list" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "typist" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "consent_form_entry" AND name = "view" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "typist" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "consent_form_entry" AND name = "new" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "typist" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "consent_form_entry" AND name = "edit" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "typist" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "consent_form_entry" AND name = "defer" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "typist" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "pull" AND subject = "consent_form_entry" AND name = "validate" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "typist" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "consent" AND name = "new" );

-- contact form
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "typist" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "pull" AND subject = "contact_form" AND name = "download" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "typist" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "contact_form_entry" AND name = "list" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "typist" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "contact_form_entry" AND name = "view" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "typist" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "contact_form_entry" AND name = "new" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "typist" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "contact_form_entry" AND name = "edit" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "typist" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "contact_form_entry" AND name = "defer" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "typist" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "pull" AND subject = "contact_form_entry" AND name = "validate" );

-- proxy form
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "typist" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "pull" AND subject = "proxy_form" AND name = "download" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "typist" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "proxy_form_entry" AND name = "list" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "typist" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "widget" AND subject = "proxy_form_entry" AND name = "view" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "typist" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "proxy_form_entry" AND name = "new" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "typist" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "proxy_form_entry" AND name = "edit" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "typist" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "push" AND subject = "proxy_form_entry" AND name = "defer" );
INSERT INTO role_has_operation
SET role_id = ( SELECT id FROM role WHERE name = "typist" ),
    operation_id = ( SELECT id FROM operation WHERE
      type = "pull" AND subject = "proxy_form_entry" AND name = "validate" );

COMMIT;
