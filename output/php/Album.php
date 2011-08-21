<?php
# An album of photos as represented in the Graph API.
class Album{
  /*
   * This Object hast the following attributes
   */

  // The album ID
  // Permissions: Any valid access_token or user_photos or friend_photos
  // Returns: string
  public $id;

  // The profile that created this album
  // Permissions: Any valid access_token
  // Returns: object containing id and name fields
  public $from;

  // The title of the album
  // Permissions: Any valid access_token or user_photos or friend_photos
  // Returns: string
  public $name;

  // The description of the album
  // Permissions: Any valid access_token or user_photos or friend_photos
  // Returns: string
  public $description;

  // The location of the album
  // Permissions: Any valid access_token or user_photos or friend_photos
  // Returns: string
  public $location;

  // A link to this album on Facebook
  // Permissions: Any valid access_token or user_photos or friend_photos
  // Returns: string containing a valid URL
  public $link;

  // The album cover photo ID
  // Permissions: Any valid access_token or user_photos or friend_photos
  // Returns: string
  public $coverPhoto;

  // The privacy settings for the album
  // Permissions: Any valid access_token or user_photos or friend_photos
  // Returns: string
  public $privacy;

  // The number of photos in this album
  // Permissions: Any valid access_token or user_photos or friend_photos
  // Returns: string
  public $count;

  // The type of the album: profile, mobile, wall, normal or album
  // Permissions: Any valid access_token or user_photos or friend_photos
  // Returns: string
  public $type;

  // The time the photo album was initially created
  // Permissions: Any valid access_token or user_photos or friend_photos
  // Returns: string containing ISO-8601 date-time
  public $createdTime;

  // The last time the photo album was updated
  // Permissions: Any valid access_token or user_photos or friend_photos
  // Returns: string containing ISO-8601 date-time
  public $updatedTime;

  /*
   * This Object hast the following connections
   */

  // The photos contained in this album
  // Permissions: Any valid access_token or user_photos or friend_photos
  // Returns: array of photo objects
  public function photos(){
  }

  // The likes made on this album
  // Permissions: Any valid access_token or user_photos or friend_photos
  // Returns: array of objects containing id, from, message and created_time fields.
  public function likes(){
  }

  // The comments made on this album
  // Permissions: Any valid access_token or user_photos or friend_photos
  // Returns: array of objects containing id and name fields.
  public function comments(){
  }

  // The album's cover photo, the first picture uploaded to an album becomes the cover photo for the album.
  // Permissions: Any valid access_token or user_photos or friend_photos
  // Returns: HTTP 302 redirect to URL of the album's cover picture
  public function picture(){
  }

  /*
   *  This Object hast the following actions on connections
   */

  # You can add photos to an album by issuing an HTTP POST request to ALBUM_ID/photos with the publish_stream permissions and the following parameters.
  #  Parameter     Description     Type    Required     source       Photo content      multipart/form-data      yes     message       Photo description      string      no   
  # If the create is successful, you get the following return.
  #  Name     Description     Type    id     The new photo ID     string   
  # 
  public function createPhotos{
  }

  # You can comment on an Album by issuing an HTTP POST request to ALBUM_ID/comments with the publish_stream permission and following parameters.
  #  Parameter     Description     Type    Required    message      Comment  text      string      yes   
  # If the create is successful, you get the following return.
  #  Name     Description     Type    id     The new comment ID     string   
  # 
  public function createComments{
  }

  # You can like an Album by issuing an HTTP POST request to ALBUM_ID/likes with the publish_stream permission. No parameters necessary.
  # If the create is successful, you get the following return.
  #  Description     Type    If the create succeeded.     boolean   
  public function createLikes{
  }

  # You can unlike an album by issuing an HTTP DELETE request to ALBUM_ID/like with the publish_stream permission.
  # If the delete is successful, you get the following return.
  #  Description     Type    If the unlike succeeded     boolean   
  # 
  public function deleteLikes{
  }


}
?>

