<?php
/**
 * settings.ini.php
 * 
 * Defines initialization settings for mastodon.
 * DO NOT edit this file, to override these settings use settings.local.ini.php instead.i
 * Any changes in the local ini file will override the settings found here.
 */

global $SETTINGS;

// tagged version
$SETTINGS['general']['application_name'] = 'mastodon';
$SETTINGS['general']['version'] = '1.1.3';

// always leave as false when running as production server
$SETTINGS['general']['development_mode'] = false;

// the location of mastodon internal path
$SETTINGS['path']['APPLICATION'] = '/usr/local/lib/mastodon';

// the location of new consent forms which need to be processed
$SETTINGS['path']['CONSENT_FORM'] = $SETTINGS['path']['APPLICATION'].'/doc/form/consent';

// the location of new contact forms which need to be processed
$SETTINGS['path']['CONTACT_FORM'] = $SETTINGS['path']['APPLICATION'].'/doc/form/contact';

// the location of new proxy forms which need to be processed
$SETTINGS['path']['PROXY_FORM'] = $SETTINGS['path']['APPLICATION'].'/doc/form/proxy';

// database settings
$SETTINGS['db']['driver'] = 'mysql';
$SETTINGS['db']['server'] = 'localhost';
$SETTINGS['db']['username'] = 'mastodon';
$SETTINGS['db']['password'] = '';
$SETTINGS['db']['database'] = 'mastodon';
$SETTINGS['db']['prefix'] = '';

// audit database settings (false values use the limesurvey database settings)
$SETTINGS['audit_db']['enabled'] = false;
$SETTINGS['audit_db']['driver'] = false;
$SETTINGS['audit_db']['server'] = false;
$SETTINGS['audit_db']['username'] = false;
$SETTINGS['audit_db']['password'] = false;
$SETTINGS['audit_db']['database'] = false;
$SETTINGS['audit_db']['prefix'] = 'audit_';
?>
