# A status message on a user's wall as represented in the Graph API.
def Facebook::Graph::Status message
  #################################################
  ### This Object hast the following attributes ###
  #################################################

  # The status message ID
  # Permissions: Requires access_token
  # Returns: string
  attr_accessor :id

  # The user who posted the message
  # Permissions: Requires access_token
  # Returns: object containing id and name fields
  attr_accessor :from

  # The status message content
  # Permissions: Requires access_token
  # Returns: string
  attr_accessor :message

  # The time the message was published
  # Permissions: Requires access_token
  # Returns: string containing ISO-8601 date-time
  attr_accessor :updated_time

  # The object type which is set to status
  # Permissions: Requires access_token
  # Returns: string
  attr_accessor :type

  ##################################################
  ### This Object hast the following connections ###
  ##################################################

  # All of the comments on this message
  # Permissions: Requires access_token
  # Returns: array of objects containing id, from, message and created_time
  # fields
  def comments( params={} )
    comments = get_connections("comments", params)
    return map_connections comments, :to => Facebook::Graph::Comment
  end

  # The users that have liked this message
  # Permissions: Requires access_token
  # Returns: array of objects containing id and name
  def likes( params={} )
    likes = get_connections("likes", params)
    return map_connections likes, :to => Facebook::Graph::Like
  end

  #############################################################
  ### This Object hast the following actions on connections ###
  #############################################################

  # You can write to the STATUS_MESSAGE_ID/comments connection to post a comment
  # to the status message by issuing an HTTP POST request with the
  # publish_stream permission and following parameters.
  #  Parameter     Description     Type    Required    message      Comment 
  # text      string      yes   
  # If the write is successful, you get the following return.
  #  Name     Description     Type    id     The new comment ID     string   
  def create_comments
  end

  # You can write to the STATUS_MESSAGE_ID/likes connection to like the status
  # message by issuing an HTTP POST request with the  publish_stream permission.
  # No parameters necessary.
  # If the write is successful, you get the following return.
  #  Description     Type    If the like succeeded     boolean   
  def create_likes
  end

  # You can unlike an status message by issuing an HTTP DELETE request to the
  # STATUS_MESSAGE_ID/likes connection with the publish_stream permission.
  # If the delete is successful, you get the following return.
  #  Description     Type    If the unlike succeeded     boolean   
  # Vor etwa einem Monat aktualisiert
  def delete_likes
  end


end

