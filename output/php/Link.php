<?php
# A link shared on a user's wall. The User, Application, and Page objects have a links connection.
class Link{
  /*
   * This Object hast the following attributes
   */

  // The link ID
  // Permissions: generic access_token or read_stream
  // Returns: string
  public $id;

  // The user that created the link
  // Permissions: generic access_token or read_stream
  // Returns: Object containing the id and name field
  public $from;

  // The URL that was shared
  // Permissions: generic access_token or read_stream
  // Returns: string containing a valid URL
  public $link;

  // The name of the link
  // Permissions: generic access_token or read_stream
  // Returns: string
  public $name;

  // All of the comments on this link
  // Permissions: read_stream
  // Returns: Array of objects containing id, from, message and created_time fields
  public $comments;

  // A description of the link (appears beneath the link caption)
  // Permissions: generic access_token or read_stream
  // Returns: string
  public $description;

  // A URL to the link icon that Facebook displays in the news feed
  // Permissions: generic access_token or read_stream
  // Returns: string containing a valid URL
  public $icon;

  // A URL to the thumbnail image used in the link post
  // Permissions: generic access_token or read_stream
  // Returns: string containing a valid URL
  public $picture;

  // The optional message from the user about this link
  // Permissions: generic access_token or read_stream
  // Returns: string
  public $message;

  // The time the message was published
  // Permissions: generic access_token or read_stream
  // Returns: string containing ISO-8601 date-time
  public $createdTime;

  // The type of this object; always returns link
  // Permissions: generic access_token or read_stream
  // Returns: string
  public $type;

  /*
   * This Object hast the following connections
   */

  // All of the comments on this link.
  // Permissions: read_stream
  // Returns: array of objects containing id, from, message and created_time fields.
  public function comments(){
  }

  // Users who like this link.
  // Permissions: read_stream
  // Returns: array of objects containing the id and name fields.
  public function likes(){
  }

  /*
   *  This Object hast the following actions on connections
   */

  # You can comment on a Link by issuing an HTTP POST request to /LINK_ID/comments with the publish_stream permission and following parameters.
  #  Parameter     Description     Type    Required    message      Comment  text      string      yes   
  # If the create is successful, you get the following return.
  #  Name     Description     Type    id     The new comment ID     string   
  # Vor etwa einem Monat aktualisiert
  public function createComments{
  }


}
?>

