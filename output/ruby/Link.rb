# A link shared on a user's wall. The User, Application, and Page objects have a links connection.
def Facebook::Graph::Link
  #################################################
  ### This Object hast the following attributes ###
  #################################################

  # The link ID
  # Permissions: generic access_token or read_stream
  # Returns: string
  attr_accessor :id

  # The user that created the link
  # Permissions: generic access_token or read_stream
  # Returns: Object containing the id and name field
  attr_accessor :from

  # The URL that was shared
  # Permissions: generic access_token or read_stream
  # Returns: string containing a valid URL
  attr_accessor :link

  # The name of the link
  # Permissions: generic access_token or read_stream
  # Returns: string
  attr_accessor :name

  # All of the comments on this link
  # Permissions: read_stream
  # Returns: Array of objects containing id, from, message and created_time
  # fields
  attr_accessor :comments

  # A description of the link (appears beneath the link caption)
  # Permissions: generic access_token or read_stream
  # Returns: string
  attr_accessor :description

  # A URL to the link icon that Facebook displays in the news feed
  # Permissions: generic access_token or read_stream
  # Returns: string containing a valid URL
  attr_accessor :icon

  # A URL to the thumbnail image used in the link post
  # Permissions: generic access_token or read_stream
  # Returns: string containing a valid URL
  attr_accessor :picture

  # The optional message from the user about this link
  # Permissions: generic access_token or read_stream
  # Returns: string
  attr_accessor :message

  # The time the message was published
  # Permissions: generic access_token or read_stream
  # Returns: string containing ISO-8601 date-time
  attr_accessor :created_time

  # The type of this object; always returns link
  # Permissions: generic access_token or read_stream
  # Returns: string
  attr_accessor :type

  ##################################################
  ### This Object hast the following connections ###
  ##################################################

  # All of the comments on this link.
  # Permissions: read_stream
  # Returns: array of objects containing id, from, message and created_time
  # fields.
  def comments( params={} )
    comments = get_connections("comments", params)
    return map_connections comments, :to => Facebook::Graph::Comment
  end

  # Users who like this link.
  # Permissions: read_stream
  # Returns: array of objects containing the id and name fields.
  def likes( params={} )
    likes = get_connections("likes", params)
    return map_connections likes, :to => Facebook::Graph::Like
  end

  #############################################################
  ### This Object hast the following actions on connections ###
  #############################################################

  # You can comment on a Link by issuing an HTTP POST request to
  # /LINK_ID/comments with the publish_stream permission and following
  # parameters.
  #  Parameter     Description     Type    Required    message      Comment 
  # text      string      yes   
  # If the create is successful, you get the following return.
  #  Name     Description     Type    id     The new comment ID     string   
  # Vor etwa einem Monat aktualisiert
  def create_comments
  end


end

