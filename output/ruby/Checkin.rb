# A Checkin represents a single visit by a user to a location.  The User and Page objects have checkin connections.
def Facebook::Graph::Checkin
  #################################################
  ### This Object hast the following attributes ###
  #################################################

  # The checkin ID
  # Permissions: user_checkins
  # Returns: string
  attr_accessor :id

  # The ID and name of the user who made the checkin
  # Permissions: user_checkins
  # Returns: object containing the id and name fields
  attr_accessor :from

  # The users the author tagged in the checkin
  # Permissions: user_checkins
  # Returns: array of objects containing the id and name fields
  attr_accessor :tags

  # Information about the Facebook Page that represents the location of the
  # checkin
  # Permissions: user_checkins
  # Returns: object containing the Page id, name, and location; location
  # includes the specific latitude and longitude along with information about
  # the postal addresses, if available
  attr_accessor :place

  # Information about the application that made the checkin
  # Permissions: user_checkins
  # Returns: object that contains the name and id of the application
  attr_accessor :application

  # The time the checkin was created
  # Permissions: user_checkins
  # Returns: string containing ISO-8601 date-time datetime
  attr_accessor :created_time

  # Users who like the checkin
  # Permissions: user_checkins
  # Returns: array of objects containing id and name fields
  attr_accessor :likes

  # The message the user added to the checkin
  # Permissions: user_checkins
  # Returns: string
  attr_accessor :message

  # All of the comments on this link
  # Permissions: user_checkins
  # Returns: Array of objects containing id, from, message and created_time
  # fields
  attr_accessor :comments

  # The type of this object; always returns checkin
  # Permissions: user_checkins
  # Returns: string
  attr_accessor :type

  ##################################################
  ### This Object hast the following connections ###
  ##################################################

  # All of the comments on this checkin.
  # Permissions: any valid access_token
  # Returns: array of objects containing id, from, message and created_time
  # fields.
  def comments( params={} )
    comments = get_connections("comments", params)
    return map_connections comments, :to => Facebook::Graph::Comment
  end

  # Users who like this checkin.
  # Permissions: any valid access_token
  # Returns: array of objects containing the id and name fields.
  def likes( params={} )
    likes = get_connections("likes", params)
    return map_connections likes, :to => Facebook::Graph::Like
  end

  #############################################################
  ### This Object hast the following actions on connections ###
  #############################################################

  # You can write to the CHECKIN_ID/comments connection to post a comment to the
  # checkin by issuing an HTTP POST request with the publish_stream permission
  # and following parameters.
  #  Parameter     Description     Type    Required    message      Comment 
  # text      string      yes   
  # If the write is successful, you get the following return.
  #  Name     Description     Type    id     The new comment ID     string   
  def create_comments
  end

  # You can like a checkin by issuing a HTTP POST request to CHECKIN_ID/likes
  # connection with the  publish_stream permission. No parameters are necessary.
  # If the write is successful, you get the following return.
  #  Description     Type    If the like succeeded     boolean   
  def create_likes
  end

  # You can unlike an checkin by issuing an HTTP DELETE request to the
  # CHECKIN_ID/like connection with the publish_stream permission.
  # If the delete is successful, you get the following return.
  #  Description     Type    If the unlike succeeded     boolean   
  # Vor etwa einem Monat aktualisiert
  def delete_likes
  end


end

