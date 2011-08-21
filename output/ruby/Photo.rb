# An individual photo as represented in the Graph API.
def Facebook::Graph::Photo
  #################################################
  ### This Object hast the following attributes ###
  #################################################

  # The photo ID
  # Permissions: generic access_token or user_photos or friend_photos or user_photo_video_tags or friends_photo_video_tags
  # Returns: string
  attr_accessor :id

  # The profile (user or page) that posted this photo
  # Permissions: generic access_token or user_photos or friend_photos or user_photo_video_tags or friends_photo_video_tags
  # Returns: object containing id and name fields
  attr_accessor :from

  # The tagged users and their positions in this photo
  # Permissions: generic access_token or user_photos or friend_photos or user_photo_video_tags or friends_photo_video_tags
  # Returns: array of objects, the x and y coordinates are percentages from the left and top edges of the photo, respectively
  attr_accessor :tags

  # The user provided caption given to this photo - do not include links or advertising in this field
  # Permissions: generic access_token or user_photos or friend_photos or user_photo_video_tags or friends_photo_video_tags
  # Returns: string
  attr_accessor :name

  # The icon that Facebook displays when photos are published to the Feed
  # Permissions: generic access_token or user_photos or friend_photos or user_photo_video_tags or friends_photo_video_tags
  # Returns: string representing a valid URL
  attr_accessor :icon

  # The thumbnail-sized source of the photo
  # Permissions: generic access_token or user_photos or friend_photos or user_photo_video_tags or friends_photo_video_tags
  # Returns: string representing a valid URL
  attr_accessor :picture

  # The full-sized source of the photo
  # Permissions: generic access_token or user_photos or friend_photos or user_photo_video_tags or friends_photo_video_tags
  # Returns: string representing a valid URL
  attr_accessor :source

  # The height of the photo in pixels
  # Permissions: generic access_token or user_photos or friend_photos or user_photo_video_tags or friends_photo_video_tags
  # Returns: number
  attr_accessor :height

  # The width of the photo in pixels
  # Permissions: generic access_token or user_photos or friend_photos or user_photo_video_tags or friends_photo_video_tags
  # Returns: number
  attr_accessor :width

  # The 4 different stored representations of the photo
  # Permissions: Requires access_token
  # Returns: array of objects, containing height, width, and source fields
  attr_accessor :images

  # A link to the photo on Facebook
  # Permissions: generic access_token or user_photos or friend_photos or user_photo_video_tags or friends_photo_video_tags
  # Returns: string representing a valid URL
  attr_accessor :link

  # The time the photo was initially published
  # Permissions: generic access_token or user_photos or friend_photos or user_photo_video_tags or friends_photo_video_tags
  # Returns: string containing ISO-8601 date-time
  attr_accessor :created_time

  # The last time the photo or its caption was updated
  # Permissions: generic access_token or user_photos or friend_photos or user_photo_video_tags or friends_photo_video_tags
  # Returns: string containing ISO-8601 date-time
  attr_accessor :updated_time

  # The position of this photo in the album
  # Permissions: generic access_token or user_photos or friend_photos or user_photo_video_tags or friends_photo_video_tags
  # Returns: number
  attr_accessor :position

  ##################################################
  ### This Object hast the following connections ###
  ##################################################

  # All of the comments on this photo.
  # Permissions: any valid access_token or user_photos or friend_photos or user_photo_video_tags or friends_photo_video_tags
  # Returns: array of objects containing id, from, message and created_time fields.
  def comments( params={} )
    comments = get_connections("comments", params)
    return map_connections comments, :to => Facebook::Graph::Comment
  end

  # Users who like this photo.
  # Permissions: any valid access_token or user_photos or friend_photos or user_photo_video_tags or friends_photo_video_tags
  # Returns: array of objects containing the id and name fields.
  def likes( params={} )
    likes = get_connections("likes", params)
    return map_connections likes, :to => Facebook::Graph::Like
  end

  # The album-sized view of the photo.
  # Permissions: any valid access_token or user_photos or friend_photos or user_photo_video_tags or friends_photo_video_tags
  # Returns: HTTP 302 redirect to the URL of the picture
  def picture( params={} )
    picture = get_connections("picture", params)
    return map_connections picture, :to => Facebook::Graph::Pictur
  end

  # The Users tagged in the photo.
  # Permissions: any valid access_token or user_photos or friend_photos or user_photo_video_tags or friends_photo_video_tags
  # Returns: Tags with names and IDs (if available).
  def tags( params={} )
    tags = get_connections("tags", params)
    return map_connections tags, :to => Facebook::Graph::Tag
  end

  #############################################################
  ### This Object hast the following actions on connections ###
  #############################################################

  # You can write to the PHOTO_ID/comments connection to post a comment to the photo by issuing an HTTP POST request with the publish_stream permission and following parameters.
  #  Parameter     Description     Type    Required    message      Comment  text      string      yes   
  # If the write is successful, you get the following return.
  #  Name     Description     Type    id     The new comment ID     string   
  def create_comments
  end

  # You can like a photo by issuing a HTTP POST request to PHOTO_ID/likes connection with the  publish_stream permission. No parameters necessary.
  # If the write is successful, you get the following return.
  #  Description     Type    If the like succeeded     boolean   
  def create_likes
  end

  # You can unlike an photo by issuing an HTTP DELETE request to the PHOTO_ID/likes connection with the publish_stream permission.
  # If the delete is successful, you get the following return.
  #  Description     Type    If the unlike succeeded     boolean   
  def delete_likes
  end

  # You can create a tag on the photo by issuing an HTTP POST request to the tags connection, PHOTO_ID/tags.
  # Note: This feature is intended to help users tag their friends in real photos. You should not use this feature to encourage users to tag their friends if their friends are not actually in that photo, or to tag friends in composite photos. If your app is found to be encouraging this behavior, your usage of this feature may be disabled.
  # You can specify which user to tag using two methods: in the URL path as PHOTO_ID/tags/USER_ID, or in a URL parameter as PHOTO_ID/tags?to=USER_ID.  Currently, you cannot tag a Page in a photo using this API.
  # Tagging a photo requires the user_photos and publish_stream permissions, and supports the following parameters.
  #  Parameter   Description   Type  Required    to      USER_ID of the User to tag; can also be provided in URL path (see above).      string      yes    x      x coordinate of tag, as a percentage offset from the left edge of the picture      number      no    y      y coordinate of tag, as a percentage offset from the top edge of the picture       number      no   
  # If the write is successful, you get the following return.
  #  Description     Type    If the update succeeded     boolean   
  def create_tags
  end

  # You can update the position of a tag for a particular user in the photo by issuing a HTTP POST request to /PHOTO_ID/tags/USER_ID or PHOTO_ID/tags?to=USER_ID with updated x and y coordinates.
  # Updating a tag on a photo requires the publish_stream permission and supports the following parameters.
  #  Parameter   Description   Type  Required    to      USER_ID of the User to tag; can also be provided in URL path (see above).      string      yes    x      x coordinate of tag, as a percentage offset from the left edge of the picture       number      no    y      y coordinate of tag, as a percentage offset from the top edge of the picture       number      no   
  # If the update is successful, you get the following return.
  #  Description     Type    If the update succeeded     boolean   
  def update_tags
  end


end

