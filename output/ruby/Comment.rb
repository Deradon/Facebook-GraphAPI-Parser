# A comment on a Graph API object
def Facebook::Graph::Comment
  #################################################
  ### This Object hast the following attributes ###
  #################################################

  # The Facebook ID of the comment
  # Permissions: generic access_token
  # Returns: string
  attr_accessor :id

  # The user that created the comment
  # Permissions: generic access_token
  # Returns: object containing the id and name of the creating user
  attr_accessor :from

  # The comment text
  # Permissions: generic access_token
  # Returns: string
  attr_accessor :message

  # The timedate the comment was created
  # Permissions: generic access_token
  # Returns: string containing ISO-8601 date-time
  attr_accessor :created_time

  # The number of times this comment was liked
  # Permissions: generic access_token
  # Returns: integer
  attr_accessor :likes

  # This field is returned only if the authenticated user likes this comment
  # Permissions: generic access_token
  # Returns: string; always true
  attr_accessor :user_likes

  # The type of this object; always returns comment
  # Permissions: generic access_token
  # Returns: string
  attr_accessor :type

  ##################################################
  ### This Object hast the following connections ###
  ##################################################

  #############################################################
  ### This Object hast the following actions on connections ###
  #############################################################

  # You can like a comment by issuing an HTTP POST request to COMMENT_ID/likes
  # with the publish_stream permission. No parameters necessary.
  # If the create is successful, you get the following return.
  #  Description     Type    If the create succeeded.     boolean   
  def create_likes
  end

  # You can unlike a comment by issuing an HTTP DELETE request to
  # COMMENT_ID/likes with the publish_stream permission.
  # If the delete is successful, you get the following return.
  #  Description     Type    If the unlike succeeded     boolean   
  # Vor etwa 2 Monaten aktualisiert
  def delete_likes
  end


end

