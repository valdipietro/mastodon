<?php
/**
 * user_delete.class.php
 * 
 * @author Patrick Emond <emondpd@mcmaster.ca>
 * @package mastodon\ui
 * @filesource
 */

namespace mastodon\ui\push;
use cenozo\lib, cenozo\log, mastodon\util;

/**
 * push: user delete
 * 
 * @package mastodon\ui
 */
class user_delete extends \cenozo\ui\push\user_delete
{
  /** 
   * Processes arguments, preparing them for the operation.
   * 
   * @author Patrick Emond <emondpd@mcmaster.ca>
   * @throws exception\notice
   * @abstract
   * @access protected
   */
  protected function prepare()
  {
    parent::prepare();

    $this->set_machine_request_enabled( true );
  }

  /**
   * Sets up the operation with any pre-execution instructions that may be necessary.
   * 
   * @author Patrick Emond <emondpd@mcmaster.ca>
   * @throws exception\notice
   * @abstract
   * @access protected
   */
  protected function setup()
  {
    parent::setup();

    // we send a machine request even if one was received
    if( $this->get_machine_request_received() && $this->get_machine_request_enabled() )
      $this->machine_arguments = $this->convert_to_noid( $this->arguments );
  }

  /**
   * Finishes the operation with any post-execution instructions that may be necessary.
   * 
   * @author Patrick Emond <emondpd@mcmaster.ca>
   * @access public
   */
  public function finish()
  {
    parent::finish();

    // we send a machine request even if one was received
    if( $this->get_machine_request_received() && $this->get_machine_request_enabled() )
      $this->send_machine_request();
  }

  /**
   * Override the parent method to send a request to both Beartooth and Sabretooth
   * @author Patrick Emond <emondpd@mcmaster.ca>
   * @access protected
   */
  protected function send_machine_request()
  {
    if( 'beartooth' != $this->get_machine_application_name() )
    {
      $this->set_machine_request_url( BEARTOOTH_URL );
      parent::send_machine_request();
    }

    if( 'sabretooth' != $this->get_machine_application_name() )
    {
      $this->set_machine_request_url( SABRETOOTH_URL );
      parent::send_machine_request();
    }
  }
}
?>
