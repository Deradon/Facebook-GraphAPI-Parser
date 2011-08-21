<?php
# A Facebook friend list. This object represents the list itself and not the members of the list. The User object has a friendlists connection
class Friendlist{
  /*
   * This Object hast the following attributes
   */

  // The friend list ID
  // Permissions: read_friendlists
  // Returns: string
  public $id;

  // The name of the friend list
  // Permissions: read_friendlists
  // Returns: string
  public $name;

  // The type of this object; always returns friendlist
  // Permissions: read_friendlists
  // Returns: string
  public $type;

  /*
   * This Object hast the following connections
   */

  //  Friend list name 
  // Permissions:  string 
  // Returns:  yes 
  public function name(){
  }

  /*
   *  This Object hast the following actions on connections
   */


}
?>

