# A user profile as represented in the Graph API.
def Facebook::Graph::User
  #################################################
  ### This Object hast the following attributes ###
  #################################################

  # The user's Facebook ID
  # Permissions: No access_token required
  # Returns: string
  attr_accessor :id

  # The user's full name
  # Permissions: No access_token required
  # Returns: string
  attr_accessor :name

  # The user's first name
  # Permissions: No access_token required
  # Returns: string
  attr_accessor :first_name

  # The user's middle name
  # Permissions: No access_token required
  # Returns: string
  attr_accessor :middle_name

  # The user's last name
  # Permissions: No access_token required
  # Returns: string
  attr_accessor :last_name

  # The user's gender: female or male
  # Permissions: No access_token required
  # Returns: string
  attr_accessor :gender

  # The user's locale
  # Permissions: No access_token required
  # Returns: string containing the ISO Language Code and ISO Country Code
  attr_accessor :locale

  # The user's languages
  # Permissions: user_likes
  # Returns: array of objects containing language id and name
  attr_accessor :languages

  # The URL of the profile for the user on Facebook
  # Permissions: No access_token required
  # Returns: string containing a valid URL
  attr_accessor :link

  # The user's Facebook username
  # Permissions: No access_token required
  # Returns: string
  attr_accessor :username

  # An anonymous, but unique identifier for the user; only returned if
  # specifically requested via the fields URL parameter
  # Permissions: Requires access_token
  # Returns: string
  attr_accessor :third_party_id

  # The user's timezone offset from UTC
  # Permissions: Available only for the current user
  # Returns: number
  attr_accessor :timezone

  # The last time the user's profile was updated; changes to the languages,
  # link, timezone, verified, interested_in, favorite_athletes, favorite_teams,
  # and video_upload_limits are not not reflected in this value
  # Permissions: Requires access_token
  # Returns: string containing an ISO-8601 datetime
  attr_accessor :updated_time

  # The user's account verification status, either true or false (see below)
  # Permissions: Requires access_token
  # Returns: boolean
  attr_accessor :verified

  # The user's biography
  # Permissions: user_about_me or friends_about_me
  # Returns: string
  attr_accessor :bio

  # The user's birthday
  # Permissions: user_birthday or friends_birthday
  # Returns: Date string in MM/DD/YYYY format
  attr_accessor :birthday

  # A list of the user's education history
  # Permissions: user_education_history or friends_education_history
  # Returns: array of objects containing year and type fields, and school object
  # (name,  id, type, and optional year, degree, concentration array, classes
  # array, and with array )
  attr_accessor :education

  # The proxied or contact email address granted by the user
  # Permissions: email
  # Returns: string containing a valid RFC822 email address
  attr_accessor :email

  # The user's hometown
  # Permissions: user_hometown or friends_hometown
  # Returns: object containing name and id
  attr_accessor :hometown

  # The genders the user is interested in
  # Permissions: user_relationship_details or friends_relationship_details
  # Returns: array containing strings
  attr_accessor :interested_in

  # The user's current city
  # Permissions: user_location or friends_location
  # Returns: object containing name and id
  attr_accessor :location

  # The user's political view
  # Permissions: user_religion_politics or friends_religion_politics
  # Returns: string
  attr_accessor :political

  # The user's favorite athletes; this field is deprecated and will be removed
  # in the near future
  # Permissions: user_likes or friends_likes
  # Returns: array of objects containing id and name fields
  attr_accessor :favorite_athletes

  # The user's favorite teams; this field is deprecated and will be removed in
  # the near future
  # Permissions: user_likes or friends_likes
  # Returns: array of objects containing id and name fields
  attr_accessor :favorite_teams

  # The user's favorite quotes
  # Permissions: user_about_me or friends_about_me
  # Returns: string
  attr_accessor :quotes

  # The user's relationship status: Single, In a relationship, Engaged, Married,
  # It's complicated, In an open relationship, Widowed, Separated, Divorced, In
  # a civil union, In a domestic partnership
  # Permissions: user_relationships or friends_relationships
  # Returns: string
  attr_accessor :relationship_status

  # The user's religion
  # Permissions: user_religion_politics or friends_religion_politics
  # Returns: string
  attr_accessor :religion

  # The user's significant other
  # Permissions: user_relationship_details or friends_relationship_details
  # Returns: object containing name and id
  attr_accessor :significant_other

  # The size of the video file and the length of the video that a user can
  # upload; only returned if specifically requested via the fields URL parameter
  # Permissions: Requires access_token
  # Returns: object containing length and size of video
  attr_accessor :video_upload_limits

  # The URL of the user's personal website
  # Permissions: user_website or friends_website
  # Returns: string containing a valid URL
  attr_accessor :website

  # A list of the user's work history
  # Permissions: user_work_history or friends_work_history
  # Returns: array of objects containing employer, location, position,
  # start_date and end_date fields
  attr_accessor :work

  ##################################################
  ### This Object hast the following connections ###
  ##################################################

  # The Facebook apps and pages owned by the current user.
  # Permissions: If manage_pages permission has been granted, yields
  # access_tokens that can be used to query the Graph API on behalf of the
  # app/page; manage_pages required for all access to this field after September
  # 22, 2011.
  # Returns: array of objects containing account id, category and name field
  def accounts( params={} )
    accounts = get_connections("accounts", params)
    return map_connections accounts, :to => Facebook::Graph::Account
  end

  # The achievements for the user.
  # Permissions: user_games_activity or friends_games_activity.
  # Returns: GET not yet implemented
  def achievements( params={} )
    achievements = get_connections("achievements", params)
    return map_connections achievements, :to => Facebook::Graph::Achievement
  end

  # The activities listed on the user's profile.
  # Permissions: user_activities or friends_activities.
  # Returns: array of objects containing activity id, name, category and
  # create_time fields.
  def activities( params={} )
    activities = get_connections("activities", params)
    return map_connections activities, :to => Facebook::Graph::Activitie
  end

  # The photo albums this user has created.
  # Permissions: user_photos or friends_photos.
  # Returns: array of Album objects.
  def albums( params={} )
    albums = get_connections("albums", params)
    return map_connections albums, :to => Facebook::Graph::Album
  end

  # The user's outstanding requests from an app.
  # Permissions: Requires app access_token.
  # Returns: array of app requests for the user within that app.
  def apprequests( params={} )
    apprequests = get_connections("apprequests", params)
    return map_connections apprequests, :to => Facebook::Graph::Apprequest
  end

  # The books listed on the user's profile.
  # Permissions: user_likes or friends_likes.
  # Returns: array of objects containing book id, name, category and create_time
  # fields.
  def books( params={} )
    books = get_connections("books", params)
    return map_connections books, :to => Facebook::Graph::Book
  end

  # The places that the user has checked-into.
  # Permissions: user_checkins or friends_checkins.
  # Returns: array of Checkin objects
  def checkins( params={} )
    checkins = get_connections("checkins", params)
    return map_connections checkins, :to => Facebook::Graph::Checkin
  end

  # The events this user is attending.
  # Permissions: user_events or friends_events.
  # Returns: array of objects containing event id, name, start_time, end_time,
  # location and rsvp_status defaulting to the past two weeks.
  def events( params={} )
    events = get_connections("events", params)
    return map_connections events, :to => Facebook::Graph::Event
  end

  # The user's family relationships
  # Permissions: user_relationships
  # Returns: array of objects containing id, name, and relationship fields.
  def family( params={} )
    family = get_connections("family", params)
    return map_connections family, :to => Facebook::Graph::Famil
  end

  # The user's wall.
  # Permissions: Any valid access_token or read_stream to see non-public posts.
  # Returns: array of Post objects containing (up to) the last 25 posts.
  def feed( params={} )
    feed = get_connections("feed", params)
    return map_connections feed, :to => Facebook::Graph::Fee
  end

  # The user's friend lists.
  # Permissions: read_friendlists.
  # Returns: array of objects containing id and name fields of the friendlist.
  def friendlists( params={} )
    friendlists = get_connections("friendlists", params)
    return map_connections friendlists, :to => Facebook::Graph::Friendlist
  end

  # The user's friends.
  # Permissions: Any valid access_token.
  # Returns: array of objects containing friend id and name fields.
  def friends( params={} )
    friends = get_connections("friends", params)
    return map_connections friends, :to => Facebook::Graph::Friend
  end

  # Games the user has added to the Arts and Entertainment section of their
  # profile.
  # Permissions: user_likes
  # Returns: array of objects containing id, name, category, and created_time
  def games( params={} )
    games = get_connections("games", params)
    return map_connections games, :to => Facebook::Graph::Game
  end

  # The Groups that the user belongs to.
  # Permissions: user_groups or friends_groups.
  # Returns: An array of objects containing the version(old-0 or new Group-1),
  # name, id, administrator (if user is the administrator of the Group) and
  # bookmark_order(at what place in the list of group bookmarks on the homepage,
  # the group shows up for the user).
  def groups( params={} )
    groups = get_connections("groups", params)
    return map_connections groups, :to => Facebook::Graph::Group
  end

  # The user's news feed.
  # Permissions: read_stream.
  # Returns: array of Post objects containing (up to) the last 25 posts.
  def home( params={} )
    home = get_connections("home", params)
    return map_connections home, :to => Facebook::Graph::Hom
  end

  # The Threads in this user's inbox.
  # Permissions: read_mailbox.
  # Returns: array of thread objects
  def inbox( params={} )
    inbox = get_connections("inbox", params)
    return map_connections inbox, :to => Facebook::Graph::Inbo
  end

  # The interests listed on the user's profile.
  # Permissions: user_interests or friends_interests.
  # Returns: array of objects containing interest id, name, category and
  # create_time fields.
  def interests( params={} )
    interests = get_connections("interests", params)
    return map_connections interests, :to => Facebook::Graph::Interest
  end

  # All the pages this user has liked.
  # Permissions: user_likes or friends_likes.
  # Returns: array of objects containing like id, name, category and create_time
  # fields.
  def likes( params={} )
    likes = get_connections("likes", params)
    return map_connections likes, :to => Facebook::Graph::Like
  end

  # The user's posted links.
  # Permissions: read_stream.
  # Returns: array of Link objects.
  def links( params={} )
    links = get_connections("links", params)
    return map_connections links, :to => Facebook::Graph::Link
  end

  # The movies listed on the user's profile.
  # Permissions: user_likes or friends_likes.
  # Returns: array of objects containing movie id, name, category and
  # create_time fields.
  def movies( params={} )
    movies = get_connections("movies", params)
    return map_connections movies, :to => Facebook::Graph::Movie
  end

  # The music listed on the user's profile.
  # Permissions: user_likes or friends_likes.
  # Returns: array of objects containing music id, name, category and
  # create_time fields.
  def music( params={} )
    music = get_connections("music", params)
    return map_connections music, :to => Facebook::Graph::Musi
  end

  # The user's notes.
  # Permissions: read_stream.
  # Returns: array of Note objects.
  def notes( params={} )
    notes = get_connections("notes", params)
    return map_connections notes, :to => Facebook::Graph::Note
  end

  # The notifications for the user.
  # Permissions: manage_notifications.
  # Returns: array of objects containing id, from, to,
  # created_time,updated_time, title, link, application, unread.
  def notifications( params={} )
    notifications = get_connections("notifications", params)
    return map_connections notifications, :to => Facebook::Graph::Notification
  end

  # The messages in this user's outbox.
  # Permissions: read_mailbox.
  # Returns: array of messages
  def outbox( params={} )
    outbox = get_connections("outbox", params)
    return map_connections outbox, :to => Facebook::Graph::Outbo
  end

  # The transactions the user placed with an application. See the Get Orders
  # section of the Credits Graph API for more information.
  # Permissions: application access_token
  # Returns: array of objects containing id, from, to, amount, status,
  # application, created_time, and updated_time
  def payments( params={} )
    payments = get_connections("payments", params)
    return map_connections payments, :to => Facebook::Graph::Payment
  end

  # The permissions that user has granted the application.
  # Permissions: None.
  # Returns: array containing a single object which has the keys as the
  # permission names and the values as the permission values (1/0) - Permissions
  # with value 0 are omitted from the object by default; also includes a type
  # field  which is always permissions.
  def permissions( params={} )
    permissions = get_connections("permissions", params)
    return map_connections permissions, :to => Facebook::Graph::Permission
  end

  # Photos the user (or friend) is tagged in.
  # Permissions: user_photo_video_tags or friends_photo_video_tags.
  # Returns: array of Photo objects.
  def photos( params={} )
    photos = get_connections("photos", params)
    return map_connections photos, :to => Facebook::Graph::Photo
  end

  # The user's profile picture.
  # Permissions: No access_token required.
  # Returns: HTTP 302 redirect to URL of the user's profile picture (use
  # ?type=square | small | normal | large to request a different photo).
  def picture( params={} )
    picture = get_connections("picture", params)
    return map_connections picture, :to => Facebook::Graph::Pictur
  end

  # The user's pokes.
  # Permissions: read_mailbox.
  # Returns: an array of objects containing to, from, created_time and type
  # fields.
  def pokes( params={} )
    pokes = get_connections("pokes", params)
    return map_connections pokes, :to => Facebook::Graph::Poke
  end

  # The user's own posts.
  # Permissions: Any valid access_token or read_stream to see non-public posts.
  # Returns: array of Post objects.
  def posts( params={} )
    posts = get_connections("posts", params)
    return map_connections posts, :to => Facebook::Graph::Post
  end

  # The scores for the user.
  # Permissions: user_games_activity or friends_games_activity.
  # Returns: array of objects containing user, application, score and type.
  def scores( params={} )
    scores = get_connections("scores", params)
    return map_connections scores, :to => Facebook::Graph::Score
  end

  # The user's status updates.
  # Permissions: read_stream.
  # Returns: An array of Status message objects.
  def statuses( params={} )
    statuses = get_connections("statuses", params)
    return map_connections statuses, :to => Facebook::Graph::Statuse
  end

  # Posts the user is tagged in.
  # Permissions: read_stream
  # Returns: array of objects containing id, from, to, picture, link, name,
  # caption, description, properties, icon, actions, type, application,
  # created_time, and updated_time
  def tagged( params={} )
    tagged = get_connections("tagged", params)
    return map_connections tagged, :to => Facebook::Graph::Tagge
  end

  # The television listed on the user's profile.
  # Permissions: user_likes or friends_likes.
  # Returns: array of objects containing television id, name, category and
  # create_time fields.
  def television( params={} )
    television = get_connections("television", params)
    return map_connections television, :to => Facebook::Graph::Televisio
  end

  # The updates in this user's inbox.
  # Permissions: read_mailbox.
  # Returns: array of messages
  def updates( params={} )
    updates = get_connections("updates", params)
    return map_connections updates, :to => Facebook::Graph::Update
  end

  # The videos this user has been tagged in.
  # Permissions: user_videos or friends_videos.
  # Returns: array of Video objects.
  def videos( params={} )
    videos = get_connections("videos", params)
    return map_connections videos, :to => Facebook::Graph::Video
  end

  #############################################################
  ### This Object hast the following actions on connections ###
  #############################################################

  # You can create an album for a user by issuing an HTTP POST request to
  # PROFILE_ID/albums with the publish_stream permissions and the following
  # parameters.
  # Parameter  Description  Type  Requiredname  Album name  string  yesmessage 
  # Album description  string  noprivacy  Privacy settings for the Album  A
  # JSON-encoded object that defines the privacy setting for the album, for
  # example: {"value":"SELF"} (see details below). Only the user can specify the
  # privacy settings for the post.Privacy Policy: Any non-default privacy
  # setting must be intentionally chosen by the user.  You may not set a custom
  # privacy setting unless the user has proactively specified that they want
  # this non-default setting.  no
  # The privacy parameter is a JSON-encoded object that contains one or more of
  # the following string fields:
  # value: The privacy value for the object, specify one of EVERYONE, CUSTOM,
  # ALL_FRIENDS, NETWORKS_FRIENDS, FRIENDS_OF_FRIENDS, SELF.friends: For CUSTOM
  # settings, this indicates which users can see the object. Can be one of
  # EVERYONE, NETWORKS_FRIENDS (when the object can be seen by networks and
  # friends), FRIENDS_OF_FRIENDS, ALL_FRIENDS, SOME_FRIENDS, SELF, or NO_FRIENDS
  # (when the object can be seen by a network only).networks: For CUSTOM
  # settings, specify a comma-separated list of network IDs that can see the
  # object, or 1 for all of a user's networks.allow: When friends is set to
  # SOME_FRIENDS, specify a comma-separated list of user IDs and friend list IDs
  # that can see the post.deny: When friends is set to SOME_FRIENDS, specify a
  # comma-separated list of user IDs and friend list IDs that cannot see the
  # post.
  # If the create is successful, you get the following return.
  # Name  Description  Typeid  The new album ID  string
  # 
  def create_albums
  end

  # You can checkin a user by issuing an HTTP POST request to
  # PROFILE_ID/checkins with the publish_checkins permissions and the following
  # parameters.
  # Parameter  Description  Type  Requiredplace  Checkin Place ID  string
  # containing the ID of the Place Page, for example 110506962309835 for
  # Facebook HQ  yescoordinates  The user's location  string containing latitude
  # and longitude: {"latitude":"...", "longitude": "..."}  yestags  List of
  # tagged friends  Comma separated list of USER_IDs  nomessage  Checkin
  # description  string  nolink  Checkin link  string  nopicture  Checkin
  # picture  string  no
  # If the create is successful, you get the following return.
  # Name  Description  Typeid  The new checkin ID  string
  # 
  def create_checkins
  end

  # You can create an event for a user by issuing an HTTP POST request to
  # PROFILE_ID/event with the create_event permissions and the following
  # parameters.
  #  Parameter     Description     Type    Required     name       Event name   
  #   string      yes     start_time       Event start time      UNIX timestamp 
  #     yes     end_time       Event end time      UNIX timestamp      no    
  # message       Event description      string      no     location       
  # Event  location      string      no     privacy_type       Event privacy
  # setting      string containing 'OPEN' (default), 'CLOSED', or 'SECRET'     
  # no   
  # If the create is successful, you get the following return.
  #  Name     Description     Type    id     The new event ID     string   
  # 
  def create_events
  end

  # You can read the list of a User's friends by issuing an HTTP GET to
  # /PROFILE_ID/friends with any valid access_token. For example:
  # https://graph.facebook.com/me/friends
  # You can also see if a User is a friend of the current session User by
  # issuing an HTTP GET to /PROFILE_ID/friends/FRIEND_ID. This will return, in
  # the data array, an object with the following fields if the current user is
  # friends with the User represented by FRIEND_ID:
  # Name  Description  Typeid  Facebook ID of the friend  stringname  Name of
  # friend of current user  string
  # If the current user is not a friend with the User represented by FRIEND_ID,
  # the data array will be empty.
  # For example, to see if you are friends with Dhiren Patel, issue an HTTP GET
  # to:
  # https://graph.facebook.com/me/friends/1207059
  # 
  def read_friends
  end

  # You can create a friend list for a user by issuing an HTTP POST request to
  # PROFILE_ID/friendlists with the manage_friendlists permissions and the
  # following parameters.
  #  Parameter     Description     Type    Required     name       Friend list
  # name      string      yes   
  # If the create is successful, you get the following return.
  #  Name     Description     Type    id     The new friend list ID     string  
  # 
  # 
  def create_friendlists
  end

  # You can read the pages that a User has liked by issuing an HTTP GET to
  # /PROFILE_ID/likes with the user_likes of friend_likes permissions. For
  # example:
  # https://graph.facebook.com/me/likes
  # You can check if a User likes a specific page by issuing an HTTP GET to
  # /PROFILE_ID/likes/PAGE_ID. This will return, in the data array, an object
  # with the following fields if the user is connected to the page:
  # Name  Description  Typeid  Facebook ID of the page  stringname  Name of the
  # Page  stringcategory  Category of the Page, e.g. 'Website',
  # 'Product/Service', etc.  stringcreated_time  ISO-8601 datetime representing
  # when the User was connected to the Page  string
  # If the user is not connected to the page, the data array will be empty.
  # For example to see if you like the Facebook Platform Page, HTTP GET the
  # following:
  # https://graph.facebook.com/me/likes/19292868552
  # 
  def read_likes
  end

  # You can post a link on the user's behalf by issuing an HTTP POST request to
  # PROFILE_ID/feed with the publish_stream permissions and the following
  # parameters.
  #  Parameter     Description     Type    Required     link       Link URL     
  # string      yes     message       Link message      string      no   
  # The other fields are taken from the metadata of the page URL given in the
  # 'link' param.
  # If the create is successful, you get the following return.
  #  Name     Description     Type    id     The new link ID     string   
  # 
  def create_links
  end

  # You can create a note on behalf of the user by issuing an HTTP POST request
  # to PROFILE_ID/notes with the publish_stream permissions and the following
  # parameters.
  #  Parameter     Description     Type    Required     subject       The
  # subject of the Note      string      yes     message        Note  content   
  #   string      yes   
  # If the create is successful, you get the following return.
  #  Name     Description     Type    id     The new note ID     string   
  # 
  def create_notes
  end

  # You can read the unread notifications for a user by issuing an HTTP GET
  # request to USER_ID/notifications with the manage_notifications permission.
  # /me/notifications
  # To see unread notifications you can issue the HTTP GET request with the
  # following parameters:
  #  Parameter     Description     Type    Required  include_read    Enables you
  # to see notifications that the user has already read in addition to the ones
  # which are unread    boolean     No   
  # This returns an array of objects of the following type:
  # Name Description Typeid id of the notification stringfrom name and id of the
  # user who sent the notification object containing string name  and string
  # id.to name and id of the user to whom the notification was sent object
  # containing string name  and string id.created_time Time at which the
  # notification was created ISO 8601 datetimeupdated_time Time at which the
  # notifications was last updated ISO 8601title Title of the notification
  # stringlink The link for the notification URL stringapplication name and id
  # of application via which the notification was sent object containing string
  # name  and string id.unread Whether the user has read the notification or
  # not. boolean
  def read_notifications
  end

  # You can mark a notification as read by issuing an HTTP POST request to
  # /NOTIFICATION_ID?unread=0 with the manage_notifications permission.
  # 
  def update_notifications
  end

  # You can post photos to a user's Wall on their behalf by issuing an HTTP POST
  # request to PROFILE_ID/photos with the publish_stream permissions and the
  # following parameters.
  #  Parameter     Description     Type    Required     source       Photo
  # content      multipart/form-data      yes     message       Photo
  # description      string      no   
  # If the create is successful, you get the following return.
  #  Name     Description     Type    id     The new photo ID     string   
  # 
  def create_photos
  end

  # You can de-authorize an application or revoke a specific extended
  # permissions on behalf of a user by issuing an HTTP DELETE request to
  # PROFILE_ID/permissions with a user access_token for that app.
  #  Parameter     Description     Type    Required     permission       The
  # permission you wish to revoke. If you don't specify a permission then this
  # will de-authorize the application completely.      string      no   
  # You get the following result.
  #  Description     Type    True if the delete succeeded and error otherwise.  
  #  boolean   
  # 
  def delete_permissions
  end

  # You can create a post on behalf of the user by issuing an HTTP POST request
  # to PROFILE_ID/feed (not PROFILE_ID/posts) with the publish_stream
  # permissions and the following parameters. Note that you can only delete the
  # post if it was created by your app.
  #  Parameter     Description     Type    Required     message       Post
  # message      string      yes     link       Post URL      string      yes   
  #  picture       Post thumbnail image      string      no     name       Post
  # name      string      no     caption       Post caption      string      no 
  #    description       Post description      string      no     actions      
  # Post actions      array of objects containing name and link      no    
  # privacy       Post privacy settings      string      no    
  # object_attachment       Facebook ID for an existing picture in the User's
  # photo albums to use as the thumbnail image. The User must be the owner of
  # the photo, and the photo cannot be part of a message attachment.      string
  #      no   
  # If the create is successful, you get the following return.
  #  Name     Description     Type    id     The new post ID     string   
  # 
  def create_posts
  end

  # You can post a status message on behalf of the user by issuing an HTTP POST
  # request to PROFILE_ID/feed with the publish_stream permissions and the
  # following parameters.
  #  Parameter     Description     Type    Required     message       Status
  # Message content      string      yes   
  # If the create is successful, you get the following return.
  #  Name     Description     Type    id     The new status message ID    
  # string   
  # 
  def create_statuses
  end

  # You can publish a video on behalf of a user by issuing an HTTP POST request
  # to PROFILE_ID/videos with the publish_stream permissions and the following
  # parameters.
  #  Parameter     Description     Type    Required     source       Video
  # content      multipart/form-data      yes     title       Video title     
  # string      no     description       Video description      string      no  
  # 
  # If the create is successful, you get the following return.
  #  Name     Description     Type    id     The new video ID     string   
  # 
  def create_videos
  end

  # You can read the scores for a user for your app by issuing an HTTP GET
  # request to  /USER_ID/scores  with user or app access_token for that app.
  # If the user has granted your app with the user_games_activity permission
  # then this api will give you scores for all apps for that user. Otherwise it
  # will give you scores only for your app.The friends_games_activity permission
  # will enable you to access scores for users' friends for all apps by issuing
  # an HTTP GET request to /FRIEND_ID/scores. 
  # The API returns an array of objects containing the following data:
  # Name Description TypeuserUser associated with the scores.object containing
  # the name and id for the user.scoreNumeric score.integerapplicationApp
  # associated with the score.object containing the name and id of the
  # app.typetype of the data which is "score".string
  def read_scores
  end

  # You can post a score or a user by issuing an HTTP POST request to
  # /USER_ID/scores with the app access_token as long as you have the
  # publish_actions permission.
  # Name Description Type Requiredscorenumeric score with value < 0.integeryes
  # Return value
  # Description TypeWhether the write succeeded. boolean
  def create_scores
  end

  # You can delete the score for a user for your app by issuing an HTTP DELETE
  # request to /USER_ID/scores with the app access_token as long as your app has
  # the  publish_actions permission.
  # Response
  # Description Typetrue or error depending on whether the delete was
  # successful.boolean
  # 
  def delete_scores
  end

  # You can post an achievement for a user by issuing an HTTP POST request to 
  # /USER_ID/achievements  with an app access_token as long as the user has
  # given the app the publish_actions permission. The API takes the following
  # parameters:
  # Name Description Type RequiredachievementThe unique URL of the achievement
  # which the user achieved.stringyes
  # Response
  # Name Description Typeidachievement (instance) id for that user.string
  # Error Code Description3403If the app tries to post an achievement which
  # isn't registered.3501If the app tries to post an achievement which the user
  # already has. 
  def create_achievements
  end

  # You can delete an achievement for a user by issuing an HTTP DELETE request
  # to USER_ID/achievements with the app access_token as long as you have the
  # publish_actions permission.
  # Name Description Type RequiredachievementThe unique URL of the achievement
  # you wish to delete.stringyes
  # Response
  # Description Typetrue or error depending on whether the delete was
  # successful.boolean
  # Error Code Description3404If the app tries to delete an achievement that the
  # user doesn't have.
  def delete_achievements
  end

  # Note that today you cannot issue an HTTP GET request to
  # /USER_ID/achievements. You can only publish achievements for a user or
  # delete existing achievements instances. We are working on support for
  # reading the achievements for a user and this will be available soon.
  # Am Freitag aktualisiert
  def read_achievements
  end


end

