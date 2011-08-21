# A Page in the Graph API.
def Facebook::Graph::Page
  #################################################
  ### This Object hast the following attributes ###
  #################################################

  # The Page's ID
  # Permissions: No access token or user access_token
  # Returns: string
  attr_accessor :id

  # The Page's name
  # Permissions: No access token or user access_token
  # Returns: string
  attr_accessor :name

  # Link to the page on Facebook
  # Permissions: No access token or user access_token
  # Returns: string containing a valid URL
  attr_accessor :link

  # The Page's category
  # Permissions: No access token or user access_token
  # Returns: string
  attr_accessor :category

  # The number of users who like the Page
  # Permissions: No access token or user access_token
  # Returns: number
  attr_accessor :likes

  # The Page's street address, latitude, and longitude (when available)
  # Permissions: No access token or user access_token
  # Returns: dictionary
  attr_accessor :location

  # The phone number (not always normalized for country code) for the Page
  # Permissions: No access token or user access_token
  # Returns: string
  attr_accessor :phone

  # The total number of users who have checked in to the Page
  # Permissions: No access token or user access_token
  # Returns: number
  attr_accessor :checkins

  # A Page admin access_token for this page; The current user must be an administrator of this page; only returned if specifically requested via the fields URL parameter
  # Permissions: manage_pages
  # Returns: string
  attr_accessor :access_token

  ##################################################
  ### This Object hast the following connections ###
  ##################################################

  # The Page's wall.
  # Permissions: any valid access_token or user access_token
  # Returns: array of Post objects.
  def feed( params={} )
    feed = get_connections("feed", params)
    return map_connections feed, :to => Facebook::Graph::Fee
  end

  # The Page's profile picture.
  # Permissions: No access token or user access_token.
  # Returns: Returns a HTTP 302 with the URL of the user's profile picture.
  def picture( params={} )
    picture = get_connections("picture", params)
    return map_connections picture, :to => Facebook::Graph::Pictur
  end

  # The settings for this page.
  # Permissions: page access_token
  # Returns: array of objects containing setting and value fields.
  def settings( params={} )
    settings = get_connections("settings", params)
    return map_connections settings, :to => Facebook::Graph::Setting
  end

  # The photos, videos, and posts in which the Page has been tagged.
  # Permissions: any valid access_token or user access_token
  # Returns: a heterogeneous array of Photo, Video or Post objects.
  def tagged( params={} )
    tagged = get_connections("tagged", params)
    return map_connections tagged, :to => Facebook::Graph::Tagge
  end

  # The Page's posted links.
  # Permissions: any valid access_token or user access_token.
  # Returns: array of link objects
  def links( params={} )
    links = get_connections("links", params)
    return map_connections links, :to => Facebook::Graph::Link
  end

  # The Page's uploaded photos.
  # Permissions: No access token or user access_token
  # Returns: array of Photo objects.
  def photos( params={} )
    photos = get_connections("photos", params)
    return map_connections photos, :to => Facebook::Graph::Photo
  end

  # Groups to which the Page belongs.
  # Permissions: any valid access_token or user access_token
  # Returns: array containing group id, version, name and unread fields.
  def groups( params={} )
    groups = get_connections("groups", params)
    return map_connections groups, :to => Facebook::Graph::Group
  end

  # The photo albums the Page has uploaded.
  # Permissions: No access token or user access_token
  # Returns: array of Album objects.
  def albums( params={} )
    albums = get_connections("albums", params)
    return map_connections albums, :to => Facebook::Graph::Album
  end

  # The Page's status updates.
  # Permissions: any valid access_token or user access_token
  # Returns: array of Status message objects.
  def statuses( params={} )
    statuses = get_connections("statuses", params)
    return map_connections statuses, :to => Facebook::Graph::Statuse
  end

  # The videos the Page has uploaded.
  # Permissions: any valid access_token or user access_token
  # Returns: array of Video objects.
  def videos( params={} )
    videos = get_connections("videos", params)
    return map_connections videos, :to => Facebook::Graph::Video
  end

  # The Page's notes.
  # Permissions: any valid access_token or user access_token
  # Returns: An array of Note objects.
  def notes( params={} )
    notes = get_connections("notes", params)
    return map_connections notes, :to => Facebook::Graph::Note
  end

  # The Page's own posts.
  # Permissions: any valid access_token or user access_token
  # Returns: array of Post objects.
  def posts( params={} )
    posts = get_connections("posts", params)
    return map_connections posts, :to => Facebook::Graph::Post
  end

  # The events the Page is attending.
  # Permissions: any valid access_token or user access_token
  # Returns: array containing event id, name, start_time, end_time, location and rsvp_status
  def events( params={} )
    events = get_connections("events", params)
    return map_connections events, :to => Facebook::Graph::Event
  end

  # Checkins made to this Place Page by the current user, and friends of the current user.
  # Permissions: user_checkins or friends_checkins
  # Returns: array of Checkin objects.
  def checkins( params={} )
    checkins = get_connections("checkins", params)
    return map_connections checkins, :to => Facebook::Graph::Checkin
  end

  # The Page's profile tabs.
  # Permissions: Page admin access_token
  # Returns: array of objects containing id, name, link, application, custom_name, is_permanent, position, and is_non_connection_landing_tab.
  def tabs( params={} )
    tabs = get_connections("tabs", params)
    return map_connections tabs, :to => Facebook::Graph::Tab
  end

  # A list of the Page's Admins.
  # Permissions: Page admin access_token
  # Returns: array of objects containing id, name.
  def admins( params={} )
    admins = get_connections("admins", params)
    return map_connections admins, :to => Facebook::Graph::Admin
  end

  # A list of users blocked from the Page.
  # Permissions: Page admin access_token
  # Returns: array of objects containing id, name.
  def blocked( params={} )
    blocked = get_connections("blocked", params)
    return map_connections blocked, :to => Facebook::Graph::Blocke
  end

  #############################################################
  ### This Object hast the following actions on connections ###
  #############################################################

  # To perform the following operations as a Page, and not the current user, you must use the Page's access token, not the user access token commonly used for reading Graph API objects. This access token can be retrieved by issuing an HTTP GET to /USER_ID/accounts with the manage_pages permission. This will return a list of Pages (including application profile Pages) to which the user has administrative access, along with  access_tokens for those Pages. Publishing to a Page also requires the publish_stream permission, unless otherwise noted.
  # 
  def page access tokens_connections
  end

  # You can create an event for a page by issuing an HTTP POST request to PAGE_ID/events with the create_event and manage_pages permissions and the following parameters.
  #  Parameter     Description     Type    Required     name       Event name      string      yes     start_time       Event start time      UNIX timestamp      yes     end_time       Event end time      UNIX timestamp      no     message       Event description      string      no     location        Event  location      string      no     privacy_type       Event privacy setting      string containing 'OPEN' (default), 'CLOSED', or 'SECRET'      no   
  # If the create is successful, you get the following return.
  #  Name     Description     Type    id     The new event ID     string   
  # 
  def create_events
  end

  # You can post a link on a Page by issuing an HTTP POST request to PAGE_ID/feed with the publish_stream  and manage_pages permissions and the following parameters.
  #  Parameter     Description     Type    Required     link       Link URL      string      yes     message       Link message      string      no   
  # The other fields are taken from the metadata of the page URL given in the 'link' param.
  # If the create is successful, you get the following return.
  #  Name     Description     Type    id     The new link ID     string   
  # 
  def create_links
  end

  # You can create a note on a Page by issuing an HTTP POST request to PAGE_ID/notes with the publish_stream and manage_pages permissions and the following parameters.
  #  Parameter     Description     Type     Required     subject       The subject of the Note      string      yes     message        Note  content      string      yes   
  # If the create is successful, you get the following return.
  #  Name     Description     Type    id     The new note ID     string   
  # 
  def create_notes
  end

  # You can post photos to a Page's Wall by issuing an HTTP POST request to PAGE_ID/photos with the publish_stream and manage_pages permissions and the following parameters.
  #  Parameter     Description     Type    Required     source       Photo content      multipart/form-data      yes     message       Photo description      string      no   
  # If the create is successful, you get the following return.
  #  Name     Description     Type    id     The new photo ID     string   
  # 
  def create_photos
  end

  # You can create a post on a Page by issuing an HTTP POST request to PAGE_ID/feed with the publish_stream and manage_pages permissions and the following parameters.
  #  Parameter     Description     Type    Required     message       Post message      string      yes     link       Post URL      string      yes     picture       Post thumbnail image      string      no     name       Post name      string      no     caption       Post caption      string      no     description       Post description      string      no     actions       Post actions      array of objects containing name and link      no     privacy       Post privacy settings      string      no   
  # If the create is successful, you get the following return.
  #  Name     Description     Type    id     The new post ID     string   
  # 
  def create_posts
  end

  # You can change whether users can post to the Wall of a page by issuing a POST request to PAGE_ID/settings with the manage_pages permissions and the following parameters.
  # Parameter  Description  Type  Requiredsetting  Which single setting to update: USERS_CAN_POST, USERS_CAN_POST_PHOTOS, USERS_CAN_TAG_PHOTOS, USERS_CAN_POST_VIDEOS  string  Yvalue  true or false  boolean  Y
  # If the setting has been changed successfully you will get the following return:
  # Description  TypeIf the setting was successfully set or changed  boolean
  # 
  def update_settings
  end

  # You can post a status message on a Page by issuing an HTTP POST request to PAGE_ID/feed with the publish_stream and manage_pages permissions and the following parameters.
  #  Parameter     Description     Type    Required     message       Status Message content      string      yes   
  # If the create is successful, you get the following return.
  #  Name     Description     Type    id     The new status message ID     string   
  # 
  def create_statuses
  end

  # You can publish a video on a Page by issuing an HTTP POST request to PAGE_ID/videos with the publish_stream and manage_pages permissions and the following parameters.
  #  Parameter     Description     Type    Required     source       Video content      multipart/form-data      yes     title       Video title      string      no     description       Video description      string      no   
  # If the create is successful, you get the following return.
  #  Name     Description     Type    id     The new video ID     string   
  # 
  def create_videos
  end

  # You can read the tabs for a Page by issuing an HTTP GET to /PAGE_ID/tabs with a Page Access Token. This will return the following fields.
  # Name  Description  Typeid  ID of the tab  stringname  Name of the tab  stringlink  Link to the tab on Facebook  string containing the tab's URLapplication  The Application providing the tab  object containing id and namecustom_name  The custom name of the tab. If this is not set, the name of the tab will be determined by the application.  stringis_permanent  Whether or not the tab is permanently installed  booleanposition  The order in which the tab appears on the Page's profile  integeris_non_connection_landing_tab  Whether this is the default landing tab for users who have not liked and are not admins of this Page  boolean
  # You can also retrieve specific tabs by issuing an HTTP GET to /PAGE_ID/tabs/TAB_ID. For certain common tabs,  TAB_ID is a plain text string such as events, info, notes, photos, reviews, wall.
  def read_tabs
  end

  # You can install a profile_tab at the end of the current list of installed tabs for a page by issuing an HTTP POST request to PAGE_ID/tabs with a Page Access Token:
  # Parameter  Description  Type  Requiredapp_id  ID of the application for which to install the tab.  string  Y
  # If the create is successful, you get the following return:
  # Description  TypeIf the create succeeded  boolean
  def create_tabs
  end

  # You can update an installed profile_tab for a page by issuing an HTTP POST request to /PAGE_ID/tabs/TAB_ID with Page Access Token and the following parameters:
  # Parameter  Description  Type  Requiredposition  Order in which the tab will appear on the profile. Must be after permanent tabs and less than the number of installed tabs. Index starts at 0  integer  Ncustom_name  Name to be used for the tab. If this is set to an empty string, the tab will use the application’s default tab name.  string  Nis_non_connection_landing_tab  Set this tab as the default landing tab for users who have not liked and are not admins of the Page. If provided, value must be true.  boolean  N
  # If the edit is successful, you get the following return.
  # Description  TypeIf the edit succeeded  boolean
  def update_tabs
  end

  # You can delete an installed profile_tab where is_permanent is not true for a page by issuing an HTTP DELETE request to /PAGE_ID/tabs/TAB_ID object with a Page Access Token.
  # If the delete is successful, you get the following return.
  # Description  TypeIf the delete is successful  boolean
  # 
  def delete_tabs
  end

  # You can get a list of users blocked for a page by issuing an HTTP GET request to PAGE_ID/blocked/ with the page admin access_token. This returns an array of objects with the following fields:
  # Name  Description  Typeid  ID of the user  stringname  Name of the user  string
  def read_blocked
  end

  # You can check if a user is blocked for a page by issuing an HTTP GET request to PAGE_ID/blocked/USER_ID with the page admin access_token.
  # If the user is blocked successfully, you get the following return.
  # Description  TypeIf the user was successfully blocked  boolean
  def belongs_blocked
  end

  # You can block a user from posting content to your page by issuing an HTTP POST request to PAGE_ID/blocked with the the page admin access_token with the following parameters:
  # Parameter  Description  Type  Requireduid  Comma-separated list of the user IDs you wish to block  string  yes
  # This returns an array where the keys are the user IDs (string) and the values a boolean of whether or not the block was successful.
  def create_blocked
  end

  # You can unblock a blocked user for your page by issuing an HTTP DELETE request to PAGE_ID/blocked with the page admin access_token with the following parameters:
  # Parameter  Description  Type  Requireduid  ID of the user you wish to unblock  string  yes
  # If the delete is successful, you get the following return.
  # Description  TypeIf the delete is successful  boolean
  # 
  def delete_blocked
  end


end

