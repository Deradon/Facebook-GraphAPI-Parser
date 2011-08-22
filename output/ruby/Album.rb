# An album of photos as represented in the Graph API.
def Facebook::Graph::Album
  #################################################
  ### This Object hast the following attributes ###
  #################################################

  # The album ID
  # Permissions: Any valid access_token or user_photos or friend_photos
  # Returns: string
  attr_accessor :id

  # The profile that created this album
  # Permissions: Any valid access_token
  # Returns: object containing id and name fields
  attr_accessor :from

  # The title of the album
  # Permissions: Any valid access_token or user_photos or friend_photos
  # Returns: string
  attr_accessor :name

  # The description of the album
  # Permissions: Any valid access_token or user_photos or friend_photos
  # Returns: string
  attr_accessor :description

  # The location of the album
  # Permissions: Any valid access_token or user_photos or friend_photos
  # Returns: string
  attr_accessor :location

  # A link to this album on Facebook
  # Permissions: Any valid access_token or user_photos or friend_photos
  # Returns: string containing a valid URL
  attr_accessor :link

  # The album cover photo ID
  # Permissions: Any valid access_token or user_photos or friend_photos
  # Returns: string
  attr_accessor :cover_photo

  # The privacy settings for the album
  # Permissions: Any valid access_token or user_photos or friend_photos
  # Returns: string
  attr_accessor :privacy

  # The number of photos in this album
  # Permissions: Any valid access_token or user_photos or friend_photos
  # Returns: string
  attr_accessor :count

  # The type of the album: profile, mobile, wall, normal or album
  # Permissions: Any valid access_token or user_photos or friend_photos
  # Returns: string
  attr_accessor :type

  # The time the photo album was initially created
  # Permissions: Any valid access_token or user_photos or friend_photos
  # Returns: string containing ISO-8601 date-time
  attr_accessor :created_time

  # The last time the photo album was updated
  # Permissions: Any valid access_token or user_photos or friend_photos
  # Returns: string containing ISO-8601 date-time
  attr_accessor :updated_time

  ##################################################
  ### This Object hast the following connections ###
  ##################################################

  # The photos contained in this album
  # Permissions: Any valid access_token or user_photos or friend_photos
  # Returns: array of photo objects
  def photos( params={} )
    photos = get_connections("photos", params)
    return map_connections photos, :to => Facebook::Graph::Photo
  end

  # The likes made on this album
  # Permissions: Any valid access_token or user_photos or friend_photos
  # Returns: array of objects containing id, from, message and created_time
  # fields.
  def likes( params={} )
    likes = get_connections("likes", params)
    return map_connections likes, :to => Facebook::Graph::Like
  end

  # The comments made on this album
  # Permissions: Any valid access_token or user_photos or friend_photos
  # Returns: array of objects containing id and name fields.
  def comments( params={} )
    comments = get_connections("comments", params)
    return map_connections comments, :to => Facebook::Graph::Comment
  end

  # The album's cover photo, the first picture uploaded to an album becomes the
  # cover photo for the album.
  # Permissions: Any valid access_token or user_photos or friend_photos
  # Returns: HTTP 302 redirect to URL of the album's cover picture
  def picture( params={} )
    picture = get_connections("picture", params)
    return map_connections picture, :to => Facebook::Graph::Pictur
  end

  #############################################################
  ### This Object hast the following actions on connections ###
  #############################################################

  # You can add photos to an album by issuing an HTTP POST request to
  # ALBUM_ID/photos with the publish_stream permissions and the following
  # parameters.
  #  Parameter     Description     Type    Required     source       Photo
  # content      multipart/form-data      yes     message       Photo
  # description      string      no   
  # If the create is successful, you get the following return.
  #  Name     Description     Type    id     The new photo ID     string   
  # 
  def create_photos
  end

  # You can comment on an Album by issuing an HTTP POST request to
  # ALBUM_ID/comments with the publish_stream permission and following
  # parameters.
  #  Parameter     Description     Type    Required    message      Comment 
  # text      string      yes   
  # If the create is successful, you get the following return.
  #  Name     Description     Type    id     The new comment ID     string   
  # 
  def create_comments
  end

  # You can like an Album by issuing an HTTP POST request to ALBUM_ID/likes with
  # the publish_stream permission. No parameters necessary.
  # If the create is successful, you get the following return.
  #  Description     Type    If the create succeeded.     boolean   
  def create_likes
  end

  # You can unlike an album by issuing an HTTP DELETE request to ALBUM_ID/like
  # with the publish_stream permission.
  # If the delete is successful, you get the following return.
  #  Description     Type    If the unlike succeeded     boolean   
  # 
  def delete_likes
  end


end

