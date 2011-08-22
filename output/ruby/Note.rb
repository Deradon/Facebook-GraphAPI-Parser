# A Facebook Note. The User object has a notes connection.
def Facebook::Graph::Note
  #################################################
  ### This Object hast the following attributes ###
  #################################################

  # The note ID
  # Permissions: generic access_token or user_notes or friends_notes
  # Returns: string
  attr_accessor :id

  # The profile that created the note
  # Permissions: generic access_token or user_notes or friends_notes
  # Returns: Object containing id and name fields
  attr_accessor :from

  # The title of the note
  # Permissions: generic access_token or user_notes or friends_notes
  # Returns: string
  attr_accessor :subject

  # The content of the note
  # Permissions: generic access_token or user_notes or friends_notes
  # Returns: string containing HTML text
  attr_accessor :message

  # Comments made on the note
  # Permissions: generic access_token or user_notes or friends_notes
  # Returns: Array of Comment objects
  attr_accessor :comments

  # The time the note was initially published
  # Permissions: generic access_token or user_notes or friends_notes
  # Returns: string containing ISO-8601 date-time
  attr_accessor :created_time

  # The time the note was last updated
  # Permissions: generic access_token or user_notes or friends_notes
  # Returns: string containing ISO-8601 date-time
  attr_accessor :updated_time

  # The icon that Facebook displays with notes
  # Permissions: generic access_token or user_notes or friends_notes
  # Returns: string containing a valid URL
  attr_accessor :icon

  ##################################################
  ### This Object hast the following connections ###
  ##################################################

  # All of the comments on this note.
  # Permissions: Any valid access_token  or user_notes or friends_notes.
  # Returns: array of objects containing id, from, message and created_time
  # fields.
  def comments( params={} )
    comments = get_connections("comments", params)
    return map_connections comments, :to => Facebook::Graph::Comment
  end

  # The likes on this note.
  # Permissions: Any valid access_token  or user_notes or friends_notes.
  # Returns: array of objects containing the id and name fields.
  def likes( params={} )
    likes = get_connections("likes", params)
    return map_connections likes, :to => Facebook::Graph::Like
  end

  #############################################################
  ### This Object hast the following actions on connections ###
  #############################################################

  # You can comment on a Note by issuing an HTTP POST request to
  # NOTE_ID/comments with the user_notes or friends_notes permissions and
  # following parameters.
  #  Parameter     Description     Type    Required    message      Comment 
  # text      string      yes   
  # If the create is successful, you get the following return.
  #  Name     Description     Type    id     The new comment ID     string   
  def create_comments
  end

  # You can like a Note by issuing a HTTP POST request to NOTE_ID/likes
  # connection with the  publish_stream permission. No parameters necessary.
  # If the write is successful, you get the following return.
  #  Description     Type    If the like succeeded     boolean   
  def create_likes
  end

  # You can unlike a Note by issuing an HTTP DELETE request to the NOTE_ID/likes
  # connection with the publish_stream permission.
  # If the delete is successful, you get the following return.
  #  Description     Type    If the unlike succeeded     boolean   
  # Vor etwa einem Monat aktualisiert
  def delete_likes
  end


end

