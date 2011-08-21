<?php
# A comment on a Graph API object
class Comment{
  /*
   * This Object hast the following attributes
   */

  // The Facebook ID of the comment
  // Permissions: generic access_token
  // Returns: string
  public $id;

  // The user that created the comment
  // Permissions: generic access_token
  // Returns: object containing the id and name of the creating user
  public $from;

  // The comment text
  // Permissions: generic access_token
  // Returns: string
  public $message;

  // The timedate the comment was created
  // Permissions: generic access_token
  // Returns: string containing ISO-8601 date-time
  public $createdTime;

  // The number of times this comment was liked
  // Permissions: generic access_token
  // Returns: integer
  public $likes;

  // This field is returned only if the authenticated user likes this comment
  // Permissions: generic access_token
  // Returns: string; always true
  public $userLikes;

  // The type of this object; always returns comment
  // Permissions: generic access_token
  // Returns: string
  public $type;

  /*
   * This Object hast the following connections
   */

  /*
   *  This Object hast the following actions on connections
   */

  # You can like a comment by issuing an HTTP POST request to COMMENT_ID/likes with the publish_stream permission. No parameters necessary.
  # If the create is successful, you get the following return.
  #  Description     Type    If the create succeeded.     boolean   
  public function createLikes{
  }

  # You can unlike a comment by issuing an HTTP DELETE request to COMMENT_ID/likes with the publish_stream permission.
  # If the delete is successful, you get the following return.
  #  Description     Type    If the unlike succeeded     boolean   
  # Vor etwa 2 Monaten aktualisiert
  public function deleteLikes{
  }


}
?>

