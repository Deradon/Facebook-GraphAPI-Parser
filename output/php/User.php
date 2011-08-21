<?php
# A user profile as represented in the Graph API.
class User{
  /*
   * This Object hast the following attributes
   */

  // The user's Facebook ID
  // Permissions: No access_token required
  // Returns: string
  public $id;

  // The user's full name
  // Permissions: No access_token required
  // Returns: string
  public $name;

  // The user's first name
  // Permissions: No access_token required
  // Returns: string
  public $firstName;

  // The user's middle name
  // Permissions: No access_token required
  // Returns: string
  public $middleName;

  // The user's last name
  // Permissions: No access_token required
  // Returns: string
  public $lastName;

  // The user's gender: female or male
  // Permissions: No access_token required
  // Returns: string
  public $gender;

  // The user's locale
  // Permissions: No access_token required
  // Returns: string containing the ISO Language Code and ISO Country Code
  public $locale;

  // The user's languages
  // Permissions: user_likes
  // Returns: array of objects containing language id and name
  public $languages;

  // The URL of the profile for the user on Facebook
  // Permissions: No access_token required
  // Returns: string containing a valid URL
  public $link;

  // The user's Facebook username
  // Permissions: No access_token required
  // Returns: string
  public $username;

  // An anonymous, but unique identifier for the user; only returned if specifically requested via the fields URL parameter
  // Permissions: Requires access_token
  // Returns: string
  public $thirdPartyId;

  // The user's timezone offset from UTC
  // Permissions: Available only for the current user
  // Returns: number
  public $timezone;

  // The last time the user's profile was updated; changes to the languages, link, timezone, verified, interested_in, favorite_athletes, favorite_teams, and video_upload_limits are not not reflected in this value
  // Permissions: Requires access_token
  // Returns: string containing an ISO-8601 datetime
  public $updatedTime;

  // The user's account verification status, either true or false (see below)
  // Permissions: Requires access_token
  // Returns: boolean
  public $verified;

  // The user's biography
  // Permissions: user_about_me or friends_about_me
  // Returns: string
  public $bio;

  // The user's birthday
  // Permissions: user_birthday or friends_birthday
  // Returns: Date string in MM/DD/YYYY format
  public $birthday;

  // A list of the user's education history
  // Permissions: user_education_history or friends_education_history
  // Returns: array of objects containing year and type fields, and school object (name,  id, type, and optional year, degree, concentration array, classes array, and with array )
  public $education;

  // The proxied or contact email address granted by the user
  // Permissions: email
  // Returns: string containing a valid RFC822 email address
  public $email;

  // The user's hometown
  // Permissions: user_hometown or friends_hometown
  // Returns: object containing name and id
  public $hometown;

  // The genders the user is interested in
  // Permissions: user_relationship_details or friends_relationship_details
  // Returns: array containing strings
  public $interestedIn;

  // The user's current city
  // Permissions: user_location or friends_location
  // Returns: object containing name and id
  public $location;

  // The user's political view
  // Permissions: user_religion_politics or friends_religion_politics
  // Returns: string
  public $political;

  // The user's favorite athletes; this field is deprecated and will be removed in the near future
  // Permissions: user_likes or friends_likes
  // Returns: array of objects containing id and name fields
  public $favoriteAthletes;

  // The user's favorite teams; this field is deprecated and will be removed in the near future
  // Permissions: user_likes or friends_likes
  // Returns: array of objects containing id and name fields
  public $favoriteTeams;

  // The user's favorite quotes
  // Permissions: user_about_me or friends_about_me
  // Returns: string
  public $quotes;

  // The user's relationship status: Single, In a relationship, Engaged, Married, It's complicated, In an open relationship, Widowed, Separated, Divorced, In a civil union, In a domestic partnership
  // Permissions: user_relationships or friends_relationships
  // Returns: string
  public $relationshipStatus;

  // The user's religion
  // Permissions: user_religion_politics or friends_religion_politics
  // Returns: string
  public $religion;

  // The user's significant other
  // Permissions: user_relationship_details or friends_relationship_details
  // Returns: object containing name and id
  public $significantOther;

  // The size of the video file and the length of the video that a user can upload; only returned if specifically requested via the fields URL parameter
  // Permissions: Requires access_token
  // Returns: object containing length and size of video
  public $videoUploadLimits;

  // The URL of the user's personal website
  // Permissions: user_website or friends_website
  // Returns: string containing a valid URL
  public $website;

  // A list of the user's work history
  // Permissions: user_work_history or friends_work_history
  // Returns: array of objects containing employer, location, position, start_date and end_date fields
  public $work;

  /*
   * This Object hast the following connections
   */

  // The Facebook apps and pages owned by the current user.
  // Permissions: If manage_pages permission has been granted, yields access_tokens that can be used to query the Graph API on behalf of the app/page; manage_pages required for all access to this field after September 22, 2011.
  // Returns: array of objects containing account id, category and name field
  public function accounts(){
  }

  // The achievements for the user.
  // Permissions: user_games_activity or friends_games_activity.
  // Returns: GET not yet implemented
  public function achievements(){
  }

  // The activities listed on the user's profile.
  // Permissions: user_activities or friends_activities.
  // Returns: array of objects containing activity id, name, category and create_time fields.
  public function activities(){
  }

  // The photo albums this user has created.
  // Permissions: user_photos or friends_photos.
  // Returns: array of Album objects.
  public function albums(){
  }

  // The user's outstanding requests from an app.
  // Permissions: Requires app access_token.
  // Returns: array of app requests for the user within that app.
  public function apprequests(){
  }

  // The books listed on the user's profile.
  // Permissions: user_likes or friends_likes.
  // Returns: array of objects containing book id, name, category and create_time fields.
  public function books(){
  }

  // The places that the user has checked-into.
  // Permissions: user_checkins or friends_checkins.
  // Returns: array of Checkin objects
  public function checkins(){
  }

  // The events this user is attending.
  // Permissions: user_events or friends_events.
  // Returns: array of objects containing event id, name, start_time, end_time, location and rsvp_status defaulting to the past two weeks.
  public function events(){
  }

  // The user's family relationships
  // Permissions: user_relationships
  // Returns: array of objects containing id, name, and relationship fields.
  public function family(){
  }

  // The user's wall.
  // Permissions: Any valid access_token or read_stream to see non-public posts.
  // Returns: array of Post objects containing (up to) the last 25 posts.
  public function feed(){
  }

  // The user's friend lists.
  // Permissions: read_friendlists.
  // Returns: array of objects containing id and name fields of the friendlist.
  public function friendlists(){
  }

  // The user's friends.
  // Permissions: Any valid access_token.
  // Returns: array of objects containing friend id and name fields.
  public function friends(){
  }

  // Games the user has added to the Arts and Entertainment section of their profile.
  // Permissions: user_likes
  // Returns: array of objects containing id, name, category, and created_time
  public function games(){
  }

  // The Groups that the user belongs to.
  // Permissions: user_groups or friends_groups.
  // Returns: An array of objects containing the version(old-0 or new Group-1), name, id, administrator (if user is the administrator of the Group) and bookmark_order(at what place in the list of group bookmarks on the homepage, the group shows up for the user).
  public function groups(){
  }

  // The user's news feed.
  // Permissions: read_stream.
  // Returns: array of Post objects containing (up to) the last 25 posts.
  public function home(){
  }

  // The Threads in this user's inbox.
  // Permissions: read_mailbox.
  // Returns: array of thread objects
  public function inbox(){
  }

  // The interests listed on the user's profile.
  // Permissions: user_interests or friends_interests.
  // Returns: array of objects containing interest id, name, category and create_time fields.
  public function interests(){
  }

  // All the pages this user has liked.
  // Permissions: user_likes or friends_likes.
  // Returns: array of objects containing like id, name, category and create_time fields.
  public function likes(){
  }

  // The user's posted links.
  // Permissions: read_stream.
  // Returns: array of Link objects.
  public function links(){
  }

  // The movies listed on the user's profile.
  // Permissions: user_likes or friends_likes.
  // Returns: array of objects containing movie id, name, category and create_time fields.
  public function movies(){
  }

  // The music listed on the user's profile.
  // Permissions: user_likes or friends_likes.
  // Returns: array of objects containing music id, name, category and create_time fields.
  public function music(){
  }

  // The user's notes.
  // Permissions: read_stream.
  // Returns: array of Note objects.
  public function notes(){
  }

  // The notifications for the user.
  // Permissions: manage_notifications.
  // Returns: array of objects containing id, from, to, created_time,updated_time, title, link, application, unread.
  public function notifications(){
  }

  // The messages in this user's outbox.
  // Permissions: read_mailbox.
  // Returns: array of messages
  public function outbox(){
  }

  // The transactions the user placed with an application. See the Get Orders section of the Credits Graph API for more information.
  // Permissions: application access_token
  // Returns: array of objects containing id, from, to, amount, status, application, created_time, and updated_time
  public function payments(){
  }

  // The permissions that user has granted the application.
  // Permissions: None.
  // Returns: array containing a single object which has the keys as the permission names and the values as the permission values (1/0) - Permissions with value 0 are omitted from the object by default; also includes a type field  which is always permissions.
  public function permissions(){
  }

  // Photos the user (or friend) is tagged in.
  // Permissions: user_photo_video_tags or friends_photo_video_tags.
  // Returns: array of Photo objects.
  public function photos(){
  }

  // The user's profile picture.
  // Permissions: No access_token required.
  // Returns: HTTP 302 redirect to URL of the user's profile picture (use ?type=square | small | normal | large to request a different photo).
  public function picture(){
  }

  // The user's pokes.
  // Permissions: read_mailbox.
  // Returns: an array of objects containing to, from, created_time and type fields.
  public function pokes(){
  }

  // The user's own posts.
  // Permissions: Any valid access_token or read_stream to see non-public posts.
  // Returns: array of Post objects.
  public function posts(){
  }

  // The scores for the user.
  // Permissions: user_games_activity or friends_games_activity.
  // Returns: array of objects containing user, application, score and type.
  public function scores(){
  }

  // The user's status updates.
  // Permissions: read_stream.
  // Returns: An array of Status message objects.
  public function statuses(){
  }

  // Posts the user is tagged in.
  // Permissions: read_stream
  // Returns: array of objects containing id, from, to, picture, link, name, caption, description, properties, icon, actions, type, application, created_time, and updated_time
  public function tagged(){
  }

  // The television listed on the user's profile.
  // Permissions: user_likes or friends_likes.
  // Returns: array of objects containing television id, name, category and create_time fields.
  public function television(){
  }

  // The updates in this user's inbox.
  // Permissions: read_mailbox.
  // Returns: array of messages
  public function updates(){
  }

  // The videos this user has been tagged in.
  // Permissions: user_videos or friends_videos.
  // Returns: array of Video objects.
  public function videos(){
  }

  /*
   *  This Object hast the following actions on connections
   */

  # You can create an album for a user by issuing an HTTP POST request to PROFILE_ID/albums with the publish_stream permissions and the following parameters.
  # Parameter  Description  Type  Requiredname  Album name  string  yesmessage  Album description  string  noprivacy  Privacy settings for the Album  A JSON-encoded object that defines the privacy setting for the album, for example: {"value":"SELF"} (see details below). Only the user can specify the privacy settings for the post.Privacy Policy: Any non-default privacy setting must be intentionally chosen by the user.  You may not set a custom privacy setting unless the user has proactively specified that they want this non-default setting.  no
  # The privacy parameter is a JSON-encoded object that contains one or more of the following string fields:
  # value: The privacy value for the object, specify one of EVERYONE, CUSTOM, ALL_FRIENDS, NETWORKS_FRIENDS, FRIENDS_OF_FRIENDS, SELF.friends: For CUSTOM settings, this indicates which users can see the object. Can be one of EVERYONE, NETWORKS_FRIENDS (when the object can be seen by networks and friends), FRIENDS_OF_FRIENDS, ALL_FRIENDS, SOME_FRIENDS, SELF, or NO_FRIENDS (when the object can be seen by a network only).networks: For CUSTOM settings, specify a comma-separated list of network IDs that can see the object, or 1 for all of a user's networks.allow: When friends is set to SOME_FRIENDS, specify a comma-separated list of user IDs and friend list IDs that can see the post.deny: When friends is set to SOME_FRIENDS, specify a comma-separated list of user IDs and friend list IDs that cannot see the post.
  # If the create is successful, you get the following return.
  # Name  Description  Typeid  The new album ID  string
  # 
  public function createAlbums{
  }

  # You can checkin a user by issuing an HTTP POST request to PROFILE_ID/checkins with the publish_checkins permissions and the following parameters.
  # Parameter  Description  Type  Requiredplace  Checkin Place ID  string containing the ID of the Place Page, for example 110506962309835 for Facebook HQ  yescoordinates  The user's location  string containing latitude and longitude: {"latitude":"...", "longitude": "..."}  yestags  List of tagged friends  Comma separated list of USER_IDs  nomessage  Checkin description  string  nolink  Checkin link  string  nopicture  Checkin picture  string  no
  # If the create is successful, you get the following return.
  # Name  Description  Typeid  The new checkin ID  string
  # 
  public function createCheckins{
  }

  # You can create an event for a user by issuing an HTTP POST request to PROFILE_ID/event with the create_event permissions and the following parameters.
  #  Parameter     Description     Type    Required     name       Event name      string      yes     start_time       Event start time      UNIX timestamp      yes     end_time       Event end time      UNIX timestamp      no     message       Event description      string      no     location        Event  location      string      no     privacy_type       Event privacy setting      string containing 'OPEN' (default), 'CLOSED', or 'SECRET'      no   
  # If the create is successful, you get the following return.
  #  Name     Description     Type    id     The new event ID     string   
  # 
  public function createEvents{
  }

  # You can read the list of a User's friends by issuing an HTTP GET to /PROFILE_ID/friends with any valid access_token. For example:
  # https://graph.facebook.com/me/friends
  # You can also see if a User is a friend of the current session User by issuing an HTTP GET to /PROFILE_ID/friends/FRIEND_ID. This will return, in the data array, an object with the following fields if the current user is friends with the User represented by FRIEND_ID:
  # Name  Description  Typeid  Facebook ID of the friend  stringname  Name of friend of current user  string
  # If the current user is not a friend with the User represented by FRIEND_ID, the data array will be empty.
  # For example, to see if you are friends with Dhiren Patel, issue an HTTP GET to:
  # https://graph.facebook.com/me/friends/1207059
  # 
  public function readFriends{
  }

  # You can create a friend list for a user by issuing an HTTP POST request to PROFILE_ID/friendlists with the manage_friendlists permissions and the following parameters.
  #  Parameter     Description     Type    Required     name       Friend list name      string      yes   
  # If the create is successful, you get the following return.
  #  Name     Description     Type    id     The new friend list ID     string   
  # 
  public function createFriendlists{
  }

  # You can read the pages that a User has liked by issuing an HTTP GET to /PROFILE_ID/likes with the user_likes of friend_likes permissions. For example:
  # https://graph.facebook.com/me/likes
  # You can check if a User likes a specific page by issuing an HTTP GET to /PROFILE_ID/likes/PAGE_ID. This will return, in the data array, an object with the following fields if the user is connected to the page:
  # Name  Description  Typeid  Facebook ID of the page  stringname  Name of the Page  stringcategory  Category of the Page, e.g. 'Website', 'Product/Service', etc.  stringcreated_time  ISO-8601 datetime representing when the User was connected to the Page  string
  # If the user is not connected to the page, the data array will be empty.
  # For example to see if you like the Facebook Platform Page, HTTP GET the following:
  # https://graph.facebook.com/me/likes/19292868552
  # 
  public function readLikes{
  }

  # You can post a link on the user's behalf by issuing an HTTP POST request to PROFILE_ID/feed with the publish_stream permissions and the following parameters.
  #  Parameter     Description     Type    Required     link       Link URL      string      yes     message       Link message      string      no   
  # The other fields are taken from the metadata of the page URL given in the 'link' param.
  # If the create is successful, you get the following return.
  #  Name     Description     Type    id     The new link ID     string   
  # 
  public function createLinks{
  }

  # You can create a note on behalf of the user by issuing an HTTP POST request to PROFILE_ID/notes with the publish_stream permissions and the following parameters.
  #  Parameter     Description     Type    Required     subject       The subject of the Note      string      yes     message        Note  content      string      yes   
  # If the create is successful, you get the following return.
  #  Name     Description     Type    id     The new note ID     string   
  # 
  public function createNotes{
  }

  # You can read the unread notifications for a user by issuing an HTTP GET request to USER_ID/notifications with the manage_notifications permission.
  # /me/notifications
  # To see unread notifications you can issue the HTTP GET request with the following parameters:
  #  Parameter     Description     Type    Required  include_read    Enables you to see notifications that the user has already read in addition to the ones which are unread    boolean     No   
  # This returns an array of objects of the following type:
  # Name Description Typeid id of the notification stringfrom name and id of the user who sent the notification object containing string name  and string id.to name and id of the user to whom the notification was sent object containing string name  and string id.created_time Time at which the notification was created ISO 8601 datetimeupdated_time Time at which the notifications was last updated ISO 8601title Title of the notification stringlink The link for the notification URL stringapplication name and id of application via which the notification was sent object containing string name  and string id.unread Whether the user has read the notification or not. boolean
  public function readNotifications{
  }

  # You can mark a notification as read by issuing an HTTP POST request to /NOTIFICATION_ID?unread=0 with the manage_notifications permission.
  # 
  public function updateNotifications{
  }

  # You can post photos to a user's Wall on their behalf by issuing an HTTP POST request to PROFILE_ID/photos with the publish_stream permissions and the following parameters.
  #  Parameter     Description     Type    Required     source       Photo content      multipart/form-data      yes     message       Photo description      string      no   
  # If the create is successful, you get the following return.
  #  Name     Description     Type    id     The new photo ID     string   
  # 
  public function createPhotos{
  }

  # You can de-authorize an application or revoke a specific extended permissions on behalf of a user by issuing an HTTP DELETE request to PROFILE_ID/permissions with a user access_token for that app.
  #  Parameter     Description     Type    Required     permission       The permission you wish to revoke. If you don't specify a permission then this will de-authorize the application completely.      string      no   
  # You get the following result.
  #  Description     Type    True if the delete succeeded and error otherwise.    boolean   
  # 
  public function deletePermissions{
  }

  # You can create a post on behalf of the user by issuing an HTTP POST request to PROFILE_ID/feed (not PROFILE_ID/posts) with the publish_stream permissions and the following parameters. Note that you can only delete the post if it was created by your app.
  #  Parameter     Description     Type    Required     message       Post message      string      yes     link       Post URL      string      yes     picture       Post thumbnail image      string      no     name       Post name      string      no     caption       Post caption      string      no     description       Post description      string      no     actions       Post actions      array of objects containing name and link      no     privacy       Post privacy settings      string      no     object_attachment       Facebook ID for an existing picture in the User's photo albums to use as the thumbnail image. The User must be the owner of the photo, and the photo cannot be part of a message attachment.      string      no   
  # If the create is successful, you get the following return.
  #  Name     Description     Type    id     The new post ID     string   
  # 
  public function createPosts{
  }

  # You can post a status message on behalf of the user by issuing an HTTP POST request to PROFILE_ID/feed with the publish_stream permissions and the following parameters.
  #  Parameter     Description     Type    Required     message       Status Message content      string      yes   
  # If the create is successful, you get the following return.
  #  Name     Description     Type    id     The new status message ID     string   
  # 
  public function createStatuses{
  }

  # You can publish a video on behalf of a user by issuing an HTTP POST request to PROFILE_ID/videos with the publish_stream permissions and the following parameters.
  #  Parameter     Description     Type    Required     source       Video content      multipart/form-data      yes     title       Video title      string      no     description       Video description      string      no   
  # If the create is successful, you get the following return.
  #  Name     Description     Type    id     The new video ID     string   
  # 
  public function createVideos{
  }

  # You can read the scores for a user for your app by issuing an HTTP GET request to  /USER_ID/scores  with user or app access_token for that app.
  # If the user has granted your app with the user_games_activity permission then this api will give you scores for all apps for that user. Otherwise it will give you scores only for your app.The friends_games_activity permission will enable you to access scores for users' friends for all apps by issuing an HTTP GET request to /FRIEND_ID/scores. 
  # The API returns an array of objects containing the following data:
  # Name Description TypeuserUser associated with the scores.object containing the name and id for the user.scoreNumeric score.integerapplicationApp associated with the score.object containing the name and id of the app.typetype of the data which is "score".string
  public function readScores{
  }

  # You can post a score or a user by issuing an HTTP POST request to /USER_ID/scores with the app access_token as long as you have the publish_actions permission.
  # Name Description Type Requiredscorenumeric score with value < 0.integeryes
  # Return value
  # Description TypeWhether the write succeeded. boolean
  public function createScores{
  }

  # You can delete the score for a user for your app by issuing an HTTP DELETE request to /USER_ID/scores with the app access_token as long as your app has the  publish_actions permission.
  # Response
  # Description Typetrue or error depending on whether the delete was successful.boolean
  # 
  public function deleteScores{
  }

  # You can post an achievement for a user by issuing an HTTP POST request to  /USER_ID/achievements  with an app access_token as long as the user has given the app the publish_actions permission. The API takes the following parameters:
  # Name Description Type RequiredachievementThe unique URL of the achievement which the user achieved.stringyes
  # Response
  # Name Description Typeidachievement (instance) id for that user.string
  # Error Code Description3403If the app tries to post an achievement which isn't registered.3501If the app tries to post an achievement which the user already has. 
  public function createAchievements{
  }

  # You can delete an achievement for a user by issuing an HTTP DELETE request to USER_ID/achievements with the app access_token as long as you have the publish_actions permission.
  # Name Description Type RequiredachievementThe unique URL of the achievement you wish to delete.stringyes
  # Response
  # Description Typetrue or error depending on whether the delete was successful.boolean
  # Error Code Description3404If the app tries to delete an achievement that the user doesn't have.
  public function deleteAchievements{
  }

  # Note that today you cannot issue an HTTP GET request to /USER_ID/achievements. You can only publish achievements for a user or delete existing achievements instances. We are working on support for reading the achievements for a user and this will be available soon.
  # Am Freitag aktualisiert
  public function readAchievements{
  }


}
?>

