<?php
# An individual entry in a profile's feed as represented in the Graph API.
class Post{
  /*
   * This Object hast the following attributes
   */

  // The post ID
  // Permissions: Requires access_token
  // Returns: string
  public $id;

  // Information about the user who posted the message
  // Permissions: Requires access_token
  // Returns: object containing the name and Facebook id of the user who posted the message
  public $from;

  // Profiles mentioned or targeted in this post
  // Permissions: Requires access_token
  // Returns: Contains in data an array of objects, each with the name and Facebook id of the user
  public $to;

  // The message
  // Permissions: Requires access_token
  // Returns: string
  public $message;

  // If available, a link to the picture included with this post
  // Permissions: Requires access_token
  // Returns: string containing the URL
  public $picture;

  // The link attached to this post
  // Permissions: Requires access_token
  // Returns: string containing the URL
  public $link;

  // The name of the link
  // Permissions: Requires access_token
  // Returns: string
  public $name;

  // The caption of the link (appears beneath the link name)
  // Permissions: Requires access_token
  // Returns: string
  public $caption;

  // A description of the link (appears beneath the link caption)
  // Permissions: Requires access_token
  // Returns: string
  public $description;

  // A URL to a Flash movie or video file to be embedded within the post
  // Permissions: Requires access_token
  // Returns: string containing the URL
  public $source;

  // A list of properties for an uploaded video, for example, the length of the video
  // Permissions: Requires access_token
  // Returns: array of objects containing the name and text
  public $properties;

  // A link to an icon representing the type of this post
  // Permissions: Requires access_token
  // Returns: string
  public $icon;

  // A list of available actions on the post (including commenting, liking, and an optional app-specified action)
  // Permissions: Requires access_token
  // Returns: array of objects containing the name and link
  public $actions;

  // The privacy settings of the Post
  // Permissions: read_stream
  // Returns: object containing the value field and optional friends, networks, allow and deny fields.The value field may specify one of the following strings: EVERYONE, ALL_FRIENDS, NETWORKS_FRIENDS, FRIENDS_OF_FRIENDS, CUSTOM .The friends field must be specified if value is set to CUSTOM and contain one of the following strings: EVERYONE, NETWORKS_FRIENDS (when the object can be seen by networks and friends), FRIENDS_OF_FRIENDS, ALL_FRIENDS, SOME_FRIENDS, SELF, or NO_FRIENDS (when the object can be seen by a network only).The networks field may contain a comma-separated list of network IDs that can see the object, or 1 for all of a user's network.The allow field must be specified when the friends value is set to SOME_FRIENDS and must specify a comma-separated list of user IDs and friend list IDs that 'can' see the post.The deny field may be specified if the friends field is set to SOME_FRIENDS and must specify a comma-separated list of user IDs and friend list IDs that 'cannot' see the post.Note: This privacy setting only applies to posts to the current or specified user's own Wall. Facebook ignores this setting for targeted Wall posts (when the user is writing on the Wall of a friend, Page, event, group connected to the user). Consistent with behavior on Facebook, all targeted posts are viewable by anyone who can see the target's Wall. Privacy Policy: Any non-default privacy setting must be intentionally chosen by the user
  public $privacy;

  // A string indicating the type for this post (including link, photo, video)
  // Permissions: Requires access_token
  // Returns: string
  public $type;

  // Likes for this post
  // Permissions: Requires access_token
  // Returns: Structure containing a data object and the number of total likes, with data containing an array of objects, each with the name and Facebook id of the user who liked the post
  public $likes;

  // Comments for this post
  // Permissions: read_stream
  // Returns: Structure containing a data object containing an array of objects, each with the id, from, message, and created_time for each comment
  public $comments;

  // The Facebook object id for an uploaded photo or video
  // Permissions: read_stream
  // Returns: number
  public $objectId;

  // Information about the application this post came from
  // Permissions: read_stream
  // Returns: object containing the name and id of the application
  public $application;

  // The time the post was initially published
  // Permissions: read_stream
  // Returns: string containing ISO-8601 date-time
  public $createdTime;

  // The time of the last comment on this post
  // Permissions: read_stream
  // Returns: string containing ISO-8601 date-time
  public $updatedTime;

  // Location and language restrictions for Page posts only
  // Permissions: manage_pages
  // Returns: object containing comma separated lists of valid country , city , region and locale
  public $targeting;

  /*
   * This Object hast the following connections
   */

  /*
   *  This Object hast the following actions on connections
   */

  # You can write to the POST_ID/comments connection to post a comment to the post by issuing an HTTP POST request with the publish_stream permission and following parameters.
  #  Parameter     Description     Type    Required    message      Comment  text      string      yes   
  # If the write is successful, you get the following return.
  #  Name     Description     Type    id     The new comment ID     string   
  public function createComments{
  }

  # You can delete a comment by issuing an HTTP DELETE request to the COMMENT_ID object with the publish_stream permission.
  # If the delete is successful, you get the following return.
  #  Description     Type    If the delete succeeded     boolean   
  public function deleteComments{
  }

  # You can like a Post by issuing a HTTP POST request to the POST_ID/likes connection with the  publish_stream permission. No parameters necessary.
  # If the write is successful, you get the following return.
  #  Description     Type    If the like succeeded     boolean   
  public function createLikes{
  }

  # You can unlike a post by issuing an HTTP DELETE request to the POST_ID/like connection with the publish_stream permission.
  # If the delete is successful, you get the following return.
  #  Description     Type    If the unlike succeeded     boolean   
  # Vor etwa einem Monat aktualisiert
  public function deleteLikes{
  }


}
?>

