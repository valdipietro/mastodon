<?php
/**
 * phone_edit.class.php
 * 
 * @author Patrick Emond <emondpd@mcmaster.ca>
 * @package mastodon\ui
 * @filesource
 */

namespace mastodon\ui\push;
use cenozo\lib, cenozo\log, mastodon\util;

/**
 * push: phone edit
 *
 * Edit a phone.
 * @package mastodon\ui
 */
class phone_edit extends \cenozo\ui\push\base_edit
{
  /**
   * Constructor.
   * @author Patrick Emond <emondpd@mcmaster.ca>
   * @param array $args Push arguments
   * @access public
   */
  public function __construct( $args )
  {
    if( array_key_exists( 'noid', $args ) )
    {
      // use the noid argument and remove it from the args input
      $noid = $args['noid'];
      unset( $args['noid'] );

      // make sure there is sufficient information
      if( !is_array( $noid ) ||
          !array_key_exists( 'participant.uid', $noid ) ||
          !array_key_exists( 'phone.rank', $noid ) )
        throw lib::create( 'exception\argument', 'noid', $noid, __METHOD__ );

      $participant_class_name = lib::get_class_name( 'database\participant' );
      $db_participant = $participant_class_name::get_unique_record( 'uid', $noid['participant.uid'] );
      if( !$db_participant ) throw lib::create( 'exception\argument', 'noid', $noid, __METHOD__ );

      $phone_class_name = lib::get_class_name( 'database\phone' );
      $db_phone = $phone_class_name::get_unique_record(
        array( 'person_id', 'rank' ),
        array( $db_participant->person_id, $noid['phone.rank'] ) );
      if( !$db_phone ) throw lib::create( 'exception\argument', 'noid', $noid, __METHOD__ );
      $args['id'] = $db_phone->id;

      if( array_key_exists( 'address.rank', $noid ) )
      {
        $address_class_name = lib::get_class_name( 'database\address' );
        $db_address = $address_class_name::get_unique_record(
          array( 'person_id', 'rank' ),
          array( $db_participant->person_id, $noid['address.rank'] ) );
        if( !$db_address ) throw lib::create( 'exception\argument', 'noid', $noid, __METHOD__ );
        $args['columns']['address_id'] = $db_address->id;
      }
    }

    parent::__construct( 'phone', $args );
  }

  /**
   * Executes the push.
   * @author Patrick Emond <emondpd@mcmaster.ca>
   * @access public
   */
  public function finish()
  {
    $columns = $this->get_argument( 'columns' );

    // if there is a phone number, validate it
    if( array_key_exists( 'number', $columns ) )
    {
      if( 10 != strlen( preg_replace( '/[^0-9]/', '', $columns['number'] ) ) )
        throw lib::create( 'exception\notice',
          'Phone numbers must have exactly 10 digits.', __METHOD__ );
    }

    parent::finish();
  }
}
?>
