<?php
# An individual message in the new Facebook messaging system.  Every message has a message ID that represents an object in the Graph.  To get access to read a user's messages, you should request the read_mailbox Extended Permission.
class Message{
  /*
   * This Object hast the following attributes
   */

  /*
   * This Object hast the following connections
   */

  // The unique ID for this message
  // Permissions: read_mailbox
  // Returns: string
  public function id(){
  }

  // A timestamp of when this message was created
  // Permissions: read_mailbox
  // Returns: string containing ISO-8601 date-time
  public function createdTime(){
  }

  // The sender of this message
  // Permissions: read_mailbox
  // Returns: Object containing name and Facebook id (if available)
  public function from(){
  }

  // A list of the message recipients
  // Permissions: read_mailbox
  // Returns: Array of objects each containing name and Facebook id (if available)
  public function to(){
  }

  // The text of the message
  // Permissions: read_mailbox
  // Returns: string
  public function message(){
  }

  /*
   *  This Object hast the following actions on connections
   */


}
?>

