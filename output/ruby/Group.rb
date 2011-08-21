# A Facebook Group. The User and Page objects have a groups connection.
def Facebook::Graph::Group
  #################################################
  ### This Object hast the following attributes ###
  #################################################

  # The group ID
  # Permissions: generic access_token, user_groups, or friends_groups
  # Returns: string
  attr_accessor :id

  # A flag which indicates if the group was created prior to launch of the current groups product in October 2010
  # Permissions: generic access_token, user_groups, or friends_groups
  # Returns: int where 0 = Old type Group, 1 = Current Group
  attr_accessor :version

  # The URL for the group's icon
  # Permissions: generic access_token, user_groups, or friends_groups
  # Returns: string containing a valid URL
  attr_accessor :icon

  # The profile that created this group
  # Permissions: generic access_token, user_groups, or friends_groups
  # Returns: object containing the id and name fields
  attr_accessor :owner

  # The name of the group
  # Permissions: generic access_token, user_groups, or friends_groups
  # Returns: string
  attr_accessor :name

  # A brief description of the group
  # Permissions: generic access_token, user_groups, or friends_groups
  # Returns: string
  attr_accessor :description

  # The URL for the group's website
  # Permissions: generic access_token, user_groups, or friends_groups
  # Returns: string containing a valid URL
  attr_accessor :link

  # The privacy setting of the group
  # Permissions: generic access_token, user_groups, or friends_groups
  # Returns: string containing OPEN, CLOSED, or SECRET
  attr_accessor :privacy

  # The last time the group was updated
  # Permissions: generic access_token, user_groups, or friends_groups
  # Returns: string containing ISO-8601 date-time
  attr_accessor :updated_time

  ##################################################
  ### This Object hast the following connections ###
  ##################################################

  # This group's wall.
  # Permissions: any valid access_token, user_groups, or friends_groups
  # Returns: array of Post objects.
  def feed( params={} )
    feed = get_connections("feed", params)
    return map_connections feed, :to => Facebook::Graph::Fee
  end

  # All of the users who are members of this group (can only currently return the first 500 members).
  # Permissions: any valid access_token, user_groups, or friends_groups
  # Returns: array of objects containing id, and name, fields; some members will also have an administrator field.
  def members( params={} )
    members = get_connections("members", params)
    return map_connections members, :to => Facebook::Graph::Member
  end

  # The profile picture of this group.
  # Permissions: any valid access_token, user_groups, or friends_groups
  # Returns: HTTP 302 with the URL of the group's profile picture
  def picture( params={} )
    picture = get_connections("picture", params)
    return map_connections picture, :to => Facebook::Graph::Pictur
  end

  # The docs in this group.
  # Permissions: any valid access_token, user_groups, or friends_groups
  # Returns: array of objects containing id, from, subject, message, icon, updated_time, revision, can_edit, and can_delete fields.
  def docs( params={} )
    docs = get_connections("docs", params)
    return map_connections docs, :to => Facebook::Graph::Doc
  end

  #############################################################
  ### This Object hast the following actions on connections ###
  #############################################################

  def links_feed
  end

  # You can post a link on the Group's wall by issuing an HTTP POST request to GROUP_ID/feed with the publish_stream permissions and the following parameters.
  #  Parameter     Description     Type    Required     link       Link URL      string      yes     message       Link message      string      no   
  # The other fields are taken from the metadata of the page URL given in the 'link' param.
  # If the create is successful, you get the following return.
  #  Name     Description     Type    id     The new link ID     string   
  # 
  def create_feed
  end

  def posts_feed
  end

  # You can create a post on a Group's wall by issuing an HTTP POST request to GROUP_ID/feed with the publish_stream permissions and the following parameters.
  #  Parameter     Description     Type    Required     message       Post message      string      yes     link       Post URL      string      yes     picture       Post thumbnail image      string      no     name       Post name      string      no     caption       Post caption      string      no     description       Post description      string      no     actions       Post actions      array of objects containing name and link      no     privacy       Post privacy settings      string      no   
  # If the create is successful, you get the following return.
  #  Name     Description     Type    id     The new post ID     string   
  # 
  def create_feed
  end

  def statuses_feed
  end

  # You can post a status message on a Group's wall by issuing an HTTP POST request to GROUP_ID/feed with the publish_stream permissions and the following parameters.
  #  Parameter     Description     Type    Required     message       Status Message content      string      yes   
  # If the create is successful, you get the following return.
  #  Name     Description     Type    id     The new status message ID     string   
  # Vor etwa 2 Wochen aktualisiert
  def create_feed
  end


end

