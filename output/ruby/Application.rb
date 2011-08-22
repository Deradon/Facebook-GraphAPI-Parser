# An application registered on Facebook Platform as represented in the Graph API. Applications a user administers can be retrieved via the /accounts connection on the User object.
def Facebook::Graph::Application
  #################################################
  ### This Object hast the following attributes ###
  #################################################

  # The application ID
  # Permissions: No access_token required
  # Returns: string
  attr_accessor :id

  # The title of the application
  # Permissions: No access_token required
  # Returns: string
  attr_accessor :name

  # The description of the application written by the 3rd party developers
  # Permissions: No access_token required
  # Returns: string
  attr_accessor :description

  # The category of the application
  # Permissions: No access_token required
  # Returns: string
  attr_accessor :category

  # The subcategory of the application
  # Permissions: No access_token required
  # Returns: string
  attr_accessor :subcategory

  # A link to the Application's profile page
  # Permissions: No access_token required
  # Returns: string
  attr_accessor :link

  ##################################################
  ### This Object hast the following connections ###
  ##################################################

  # Test User accounts associated with the application.
  # Permissions: App access_token
  # Returns: array of objects containing id, access_token and login_url for the
  # test users
  def accounts( params={} )
    accounts = get_connections("accounts", params)
    return map_connections accounts, :to => Facebook::Graph::Generic
  end

  # The photo albums this page has created
  # Permissions: Any valid access_token
  # Returns: array of Album objects.
  def albums( params={} )
    albums = get_connections("albums", params)
    return map_connections albums, :to => Facebook::Graph::Album
  end

  # The application's wall.
  # Permissions: Any valid access_token to see public or read_stream to see
  # non-public posts
  # Returns: array of Post objects containing the last 25 posts.
  def feed( params={} )
    feed = get_connections("feed", params)
    return map_connections feed, :to => Facebook::Graph::Generic
  end

  # Usage metrics for this application.
  # Permissions: read_insights for an admin, or App access_token
  # Returns: array of Insight objects.
  def insights( params={} )
    insights = get_connections("insights", params)
    return map_connections insights, :to => Facebook::Graph::Insight
  end

  # The application's posted links.
  # Permissions: Any valid access_token to see public, or read_stream to see
  # non-public posts.
  # Returns: array of Link objects.
  def links( params={} )
    links = get_connections("links", params)
    return map_connections links, :to => Facebook::Graph::Link
  end

  # The application's profile picture with maximum dimensions of 75x75 pixels
  # suitable for embedding as the source of an image tag.
  # Permissions: Publicly available
  # Returns: An HTTP 302 with the location set to the picture URL.
  def picture( params={} )
    picture = get_connections("picture", params)
    return map_connections picture, :to => Facebook::Graph::Generic
  end

  # The applications's own posts.
  # Permissions: Any valid access_token to see public, or read_stream to see
  # non-public posts
  # Returns: array of Post objects.
  def posts( params={} )
    posts = get_connections("posts", params)
    return map_connections posts, :to => Facebook::Graph::Post
  end

  # Reviews of this application.
  # Permissions: Publicly Available
  # Returns: array of Review objects.
  def reviews( params={} )
    reviews = get_connections("reviews", params)
    return map_connections reviews, :to => Facebook::Graph::Review
  end

  # Usage stats about the canvas application's static resources, such as
  # javascript and CSS, and which ones are being flushed to browsers early.
  # Permissions: Application owner access_token
  # Returns: array of usage_stats and flushed_resources.
  def staticresources( params={} )
    staticresources = get_connections("staticresources", params)
    return map_connections staticresources, :to => Facebook::Graph::Generic
  end

  # The application's status updates.
  # Permissions: Any valid access_token to see public, and read_stream to see
  # non-public posts
  # Returns: array of Status message objects.
  def statuses( params={} )
    statuses = get_connections("statuses", params)
    return map_connections statuses, :to => Facebook::Graph::Generic
  end

  # All of the subscriptions this application has for real-time notifications.
  # Permissions: application access_token
  # Returns: array of Subscription objects.
  def subscriptions( params={} )
    subscriptions = get_connections("subscriptions", params)
    return map_connections subscriptions, :to => Facebook::Graph::Subscription
  end

  # The photos, videos, and posts in which this application has been tagged.
  # Permissions: Any valid access_token
  # Returns: array of Post, Photo or Video objects.
  def tagged( params={} )
    tagged = get_connections("tagged", params)
    return map_connections tagged, :to => Facebook::Graph::Generic
  end

  # The translated strings for this application.
  # Permissions: application access_token
  # Returns: array of objects containing native_string, description for a given
  # locale.
  def translations( params={} )
    translations = get_connections("translations", params)
    return map_connections translations, :to => Facebook::Graph::Generic
  end

  # Scores for the user and their friends.
  # Permissions: user access_token
  # Returns: array of objects containing user, score, application and type.
  def scores( params={} )
    scores = get_connections("scores", params)
    return map_connections scores, :to => Facebook::Graph::Generic
  end

  # Achievements registered for the app.
  # Permissions: app access_token
  # Returns: Not yet implemented
  def achievements( params={} )
    achievements = get_connections("achievements", params)
    return map_connections achievements, :to => Facebook::Graph::Generic
  end

  #############################################################
  ### This Object hast the following actions on connections ###
  #############################################################

  # You can create a test account for an application by issuing an HTTP POST
  # request to APP_ID/accounts/test-users with an application access token (i.e.
  # a token created using the app secret, not an application Page access token
  # as described above). You can specify the following parameters.
  # Parameter  Description  Type  Requiredinstalled  Install app for the test
  # user upon creation  boolean  nopermissions  List of extended permissions app
  # granted for the new test user if installed is true  string  noname  A name
  # for the test user. The specified name will also be used in the email address
  # assigned to the test user.  string  no
  # If the create is successful, you get the following return.
  # Name  Description  Typeid  The new test user ID  stringaccess_token  Test
  # user access token to make API calls  stringlogin_url  Test user automatic
  # login URL. Expires after first use or within an hour for security reasons. 
  # stringemail  The new test user email  stringpassword  The new test user
  # password  string
  def create_accounts
  end

  # You can delete a test account by issuing an HTTP DELETE request to
  # TEST_USER_ID with a user or application access token.
  # If the delete is successful, you get the following return.
  #  Description     Type    If the delete succeeded     boolean   
  # See Test User accounts for more details on managing test accounts.
  # 
  def delete_accounts
  end

  # You can create a link, post or status message by issuing an HTTP POST
  # request to the APP_ID/feed connection. To see more details please see links,
  # posts, and status messages documentation.
  # To impersonate the Application when posting to the wall (i.e. post as the
  # Application, and not the current user), you must use an Application Page
  # access_token with the manage_pages and publish_stream permissions, as
  # described under Application Access Tokens above.
  # 
  def create_feed
  end

  # You can post a link on the application's profile page by issuing an HTTP
  # POST request to APP_ID/feed with the publish_stream permissions and the
  # following parameters.
  #  Parameter     Description     Type    Required     link       Link URL     
  # string      yes     message       Link message      string      no   
  # The other fields are taken from the metadata of the page URL given in the
  # 'link' param.
  # If the create is successful, you get the following return.
  #  Name     Description     Type    id     The new link ID     string   
  # 
  def create_links
  end

  # You can create a post on an application's profile page by issuing an HTTP
  # POST request to APP_ID/feed (not PROFILE_ID/posts) with the publish_stream
  # permissions and the following parameters.
  #  Parameter     Description     Type    Required     message       Post
  # message      string      yes     link       Post URL      string      yes   
  #  picture       Post thumbnail image      string      no     name       Post
  # name      string      no     caption       Post caption      string      no 
  #    description       Post description      string      no     actions      
  # Post actions      array of objects containing name and link      no    
  # privacy       Post privacy settings      string      no   
  # If the create is successful, you get the following return.
  #  Name     Description     Type    id     The new post ID     string   
  # 
  def create_posts
  end

  # Gets usage statistics for the static resources used by your Canvas IFrame
  # application.  These statistics are collected for the purpose of flushing
  # some of them to the browser early, to improve application performance.
  #  Name     Description     Type    usage_stats     An array, keyed by static
  # resource URL, whose values are fractions of page loads that used each static
  # resource.     array    flushed_resources     An array of static resource
  # URLs, which is a subset of those in the usage_stats array, that are
  # currently being flushed early for users who are using the application.     
  # array   
  # 
  def get_staticresources
  end

  # You can post a status message on an application's profile page by issuing an
  # HTTP POST request to APP_ID/feed with the publish_stream permissions and the
  # following parameters.
  #  Parameter     Description     Type    Required     message       Status
  # Message content      string      yes   
  # If the create is successful, you get the following return.
  #  Name     Description     Type    id     The new status message ID    
  # string   
  # 
  def create_statuses
  end

  # You can set up a subscription by issuing an HTTP POST request to
  # APP_ID/subscriptions with an application page access token and the following
  # parameters.
  #  Parameter     Description     Type    Required     object       Object to
  # monitor - `user`, `permissions`, or `page`.      string      yes     fields 
  #      List of properties for the `object` to monitor.      string      array 
  #    callback_url       A callback URL to which Facebook will post
  # subscription updates.      string      yes     verify_token       Token sent
  # in the verification request.      string      no   
  # Note that you must first set up an endpoint URL to handle the subscription
  # verification and updates. For more details on setting that up see the
  # subscriptions documentation.
  # Your create is successful if you do not get an error.
  def create / update_subscriptions
  end

  # You can delete subscriptions by issuing an HTTP DELETE request to
  # APP_ID/subscriptions with an application access token.
  #  Parameter     Description     Type    Required     object       Object to
  # monitor - `user`, `permissions`, or `page`. If no object is specified all
  # subscriptions are deleted.      string      no   
  # Your create is successful if you do not get an error.
  # See subscriptions for more details on managing subscriptions.
  # 
  def delete_subscriptions
  end

  # You can upload application strings for translation by issuing an HTTP POST
  # request to APP_ID/translations with an application access token.
  #  Parameter     Description     Type    Required     native_strings       A
  # JSON-encoded array of strings to translate. Each element of the string array
  # is an object, with text storing the actual string, description storing the
  # description of the text.      array      yes   
  # If the create is successful, you get the following return.
  #  Name     Description     Type    id     The number of strings uploaded    
  # number   
  def create_translations
  end

  # You can delete a translation string by issuing an HTTP DELETE request to
  # APP_ID/translations with an application access token.
  #  Parameter     Description     Type    Required     native_hashes       An
  # array of native hashes. The native hash is a unique identifier of the native
  # string and a description and is generated by the Translations application.  
  #    array      yes   
  # If the delete is successful, you get the following return.
  #  Name     Description     Type    id     The number of strings deleted    
  # number   
  # 
  def delete_translations
  end

  # You can read the scores for the user and their friends for your app by
  # issuing an HTTP GET request to  /APP_ID/scores  with the user access_token
  # for that app. This returns the list of scores for the user and their friends
  # who have authorized the app. You can use this api to create leaderboard for
  # the user and their friends.
  # The API returns an array of objects containing the following data:
  # Name Description TypeuserUser associated with the scores.object containing
  # the name and id for the user.scoreNumeric score.integerapplicationApp
  # associated with the score.object containing the name and id of the
  # app.typetype of the data which is "score".string
  def read_scores
  end

  # You can delete all the scores for your app by issuing an HTTP DELETE request
  # to /APP_ID/scores with the app access_token for that app. This will reset
  # the scores for your app. Use this if you'd like to periodically reset your
  # game's scores and leaderboards.
  # Response
  # Description Typetrue or error depending on whether the delete was
  # successful.boolean
  # 
  def delete_scores
  end

  # You can register an achievement for a game by issuing an HTTP POST to
  # APP_ID/achievements with an app access_token and the following parameters.
  # Name Description Type RequiredachievementUnique URL to the
  # achievement.string yesdisplay_orderOrder of this achievement as it shows up
  # in the achievement stories UI (low to high). For example a display order of
  # 100 will be displayed in the UI before 200. We use this value to surface
  # achievements according to the order the developer has specified. Please make
  # sure this value is unique and increments in the correct order for your
  # achievements.integerno
  # Response:
  # Description Typetrue or error depending on whether the registration was
  # successful.boolean
  # Error Code Description100Service error3401If an app tries to register more
  # than the maximum number(1000) of achievements.3402When the app tries to
  # register an achievement that would raise the app’s point total above the
  # 1000-point limit.
  def create_achievements
  end

  # You can un-register an achievement for a game by issuing an HTTP DELETE
  # request to /APP_ID/achievements with an app access_token and the following
  # parameter.
  # Name Description Type RequiredachievementThe  unique URL to the
  # achievement.stringyes
  # Response
  # Description Typetrue or error depending on whether the delete was
  # successful.boolean
  # When a developer deletes an achievement, it un-registers it from the app
  # which means
  # The app will no longer be able to publish that achievement for a user.The
  # point value of the achievement is deducted from the app’s achievements
  # point total.All existing user achievements for that achievement will not
  # show up in the UI though they will still be available via the API.
  def delete_achievements
  end

  # A developer may update the <meta> tag  property values of their achievement
  # by forcing a re-scrape of it’s Open Graph URL using the Facebook Linter.
  # Please note that after a significant number of publishes, the property
  # values are locked and cannot be edited.
  # A developer may update the custom properties of an achievement registration
  # (e.g. display_order) by re-POSTing with the same achievement parameter
  # value, but with an updated custom registration property value.
  def update_achievements
  end

  # Note that today you cannot issue an HTTP GET request to
  # /APP_ID/achievements. You can only register new achievements or delete
  # existing achievements. We are working on support for reading the list of
  # registered achievements and this will be available soon.
  # Am Donnerstag aktualisiert
  def read_achievements
  end


end

