<?php
# A status message on a user's wall as represented in the Graph API.
class StatusMessage{
  /*
   * This Object hast the following attributes
   */

  // The status message ID
  // Permissions: Requires access_token
  // Returns: string
  public $id;

  // The user who posted the message
  // Permissions: Requires access_token
  // Returns: object containing id and name fields
  public $from;

  // The status message content
  // Permissions: Requires access_token
  // Returns: string
  public $message;

  // The time the message was published
  // Permissions: Requires access_token
  // Returns: string containing ISO-8601 date-time
  public $updatedTime;

  // The object type which is set to status
  // Permissions: Requires access_token
  // Returns: string
  public $type;

  /*
   * This Object hast the following connections
   */

  // All of the comments on this message
  // Permissions: Requires access_token
  // Returns: array of objects containing id, from, message and created_time fields
  public function comments(){
  }

  // The users that have liked this message
  // Permissions: Requires access_token
  // Returns: array of objects containing id and name
  public function likes(){
  }

  /*
   *  This Object hast the following actions on connections
   */

  # You can write to the STATUS_MESSAGE_ID/comments connection to post a comment to the status message by issuing an HTTP POST request with the publish_stream permission and following parameters.
  #  Parameter     Description     Type    Required    message      Comment  text      string      yes   
  # If the write is successful, you get the following return.
  #  Name     Description     Type    id     The new comment ID     string   
  public function createComments{
  }

  # You can write to the STATUS_MESSAGE_ID/likes connection to like the status message by issuing an HTTP POST request with the  publish_stream permission. No parameters necessary.
  # If the write is successful, you get the following return.
  #  Description     Type    If the like succeeded     boolean   
  public function createLikes{
  }

  # You can unlike an status message by issuing an HTTP DELETE request to the STATUS_MESSAGE_ID/likes connection with the publish_stream permission.
  # If the delete is successful, you get the following return.
  #  Description     Type    If the unlike succeeded     boolean   
  # Vor etwa einem Monat aktualisiert
  public function deleteLikes{
  }


}
?>

