<?php
# A Checkin represents a single visit by a user to a location.  The User and Page objects have checkin connections.
class Checkin{
  /*
   * This Object hast the following attributes
   */

  // The checkin ID
  // Permissions: user_checkins
  // Returns: string
  public $id;

  // The ID and name of the user who made the checkin
  // Permissions: user_checkins
  // Returns: object containing the id and name fields
  public $from;

  // The users the author tagged in the checkin
  // Permissions: user_checkins
  // Returns: array of objects containing the id and name fields
  public $tags;

  // Information about the Facebook Page that represents the location of the checkin
  // Permissions: user_checkins
  // Returns: object containing the Page id, name, and location; location includes the specific latitude and longitude along with information about the postal addresses, if available
  public $place;

  // Information about the application that made the checkin
  // Permissions: user_checkins
  // Returns: object that contains the name and id of the application
  public $application;

  // The time the checkin was created
  // Permissions: user_checkins
  // Returns: string containing ISO-8601 date-time datetime
  public $createdTime;

  // Users who like the checkin
  // Permissions: user_checkins
  // Returns: array of objects containing id and name fields
  public $likes;

  // The message the user added to the checkin
  // Permissions: user_checkins
  // Returns: string
  public $message;

  // All of the comments on this link
  // Permissions: user_checkins
  // Returns: Array of objects containing id, from, message and created_time fields
  public $comments;

  // The type of this object; always returns checkin
  // Permissions: user_checkins
  // Returns: string
  public $type;

  /*
   * This Object hast the following connections
   */

  // All of the comments on this checkin.
  // Permissions: any valid access_token
  // Returns: array of objects containing id, from, message and created_time fields.
  public function comments(){
  }

  // Users who like this checkin.
  // Permissions: any valid access_token
  // Returns: array of objects containing the id and name fields.
  public function likes(){
  }

  /*
   *  This Object hast the following actions on connections
   */

  # You can write to the CHECKIN_ID/comments connection to post a comment to the checkin by issuing an HTTP POST request with the publish_stream permission and following parameters.
  #  Parameter     Description     Type    Required    message      Comment  text      string      yes   
  # If the write is successful, you get the following return.
  #  Name     Description     Type    id     The new comment ID     string   
  public function createComments{
  }

  # You can like a checkin by issuing a HTTP POST request to CHECKIN_ID/likes connection with the  publish_stream permission. No parameters are necessary.
  # If the write is successful, you get the following return.
  #  Description     Type    If the like succeeded     boolean   
  public function createLikes{
  }

  # You can unlike an checkin by issuing an HTTP DELETE request to the CHECKIN_ID/like connection with the publish_stream permission.
  # If the delete is successful, you get the following return.
  #  Description     Type    If the unlike succeeded     boolean   
  # Vor etwa einem Monat aktualisiert
  public function deleteLikes{
  }


}
?>

