<?php
# An individual Video in the Graph API.
class Video{
  /*
   * This Object hast the following attributes
   */

  // The video ID
  // Permissions: user_videos
  // Returns: string
  public $id;

  // The profile (user or page) that created the video
  // Permissions: user_videos
  // Returns: object containing id and name fields
  public $from;

  // The users who are tagged in this video
  // Permissions: user_videos
  // Returns: array of objects containing id and name fields
  public $tags;

  // The video title or caption
  // Permissions: user_videos
  // Returns: string
  public $name;

  // The description of the video
  // Permissions: user_videos
  // Returns: string
  public $description;

  // The URL for the thumbnail picture for the video
  // Permissions: user_videos
  // Returns: string
  public $picture;

  // The html element that may be embedded in an Web page to play the video
  // Permissions: user_videos
  // Returns: string containing a valid URL
  public $embedHtml;

  // The icon that Facebook displays when video are published to the Feed
  // Permissions: user_videos
  // Returns: string containing a valid URL
  public $icon;

  // A URL to the raw, playable video file
  // Permissions: user_videos
  // Returns: string containing a valid URL
  public $source;

  // The time the video was initially published
  // Permissions: user_videos
  // Returns: string containing ISO-8601 date-time
  public $createdTime;

  // The last time the video or its caption were updated
  // Permissions: user_videos
  // Returns: string containing ISO-8601 date-time
  public $updatedTime;

  // All of the comments on this video
  // Permissions: user_videos
  // Returns: array of objects containing id, from, message, created_time, and likes fields
  public $comments;

  /*
   * This Object hast the following connections
   */

  // All of the likes on this video
  // Permissions: user_videos
  // Returns: array of objects containing id and name fields.
  public function likes(){
  }

  // All of the comments on this video
  // Permissions: user_videos
  // Returns: array of objects containing id, from, message, created_time, and likes fields.
  public function comments(){
  }

  // The image which represents the content of the video
  // Permissions: user_videos
  // Returns: An HTTP 302 to the URL of the album's cover picture.
  public function picture(){
  }

  /*
   *  This Object hast the following actions on connections
   */

  # You can like a Video by issuing an HTTP POST request to VIDEO_ID/likes with the publish_stream permission. No parameters necessary.
  # If the create is successful, you get the following return.
  #  Description     Type    If the create succeeded.     boolean   
  public function createLikes{
  }

  # You can unlike a Video by issuing an HTTP DELETE request to VIDEO_ID/like with the publish_stream permission.
  # If the delete is successful, you get the following return.
  #  Description     Type    If the unlike succeeded     boolean   
  public function deleteLikes{
  }

  # You can comment on a Video by issuing an HTTP POST request to VIDEO_ID/comments with the publish_stream permission and following parameters.
  #  Parameter     Description     Type    Required    message      Comment  text      string      yes   
  # If the create is successful, you get the following return.
  #  Name     Description     Type    id     The new comment ID     string   
  # 
  public function createComments{
  }


}
?>

