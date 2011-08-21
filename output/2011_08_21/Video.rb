# An individual Video in the Graph API.
def Facebook::Graph::Video
  #################################################
  ### This Object hast the following attributes ###
  #################################################

  # The video ID
  # Permissions: user_videos
  # Returns: string
  attr_accessor :id

  # The profile (user or page) that created the video
  # Permissions: user_videos
  # Returns: object containing id and name fields
  attr_accessor :from

  # The users who are tagged in this video
  # Permissions: user_videos
  # Returns: array of objects containing id and name fields
  attr_accessor :tags

  # The video title or caption
  # Permissions: user_videos
  # Returns: string
  attr_accessor :name

  # The description of the video
  # Permissions: user_videos
  # Returns: string
  attr_accessor :description

  # The URL for the thumbnail picture for the video
  # Permissions: user_videos
  # Returns: string
  attr_accessor :picture

  # The html element that may be embedded in an Web page to play the video
  # Permissions: user_videos
  # Returns: string containing a valid URL
  attr_accessor :embed_html

  # The icon that Facebook displays when video are published to the Feed
  # Permissions: user_videos
  # Returns: string containing a valid URL
  attr_accessor :icon

  # A URL to the raw, playable video file
  # Permissions: user_videos
  # Returns: string containing a valid URL
  attr_accessor :source

  # The time the video was initially published
  # Permissions: user_videos
  # Returns: string containing ISO-8601 date-time
  attr_accessor :created_time

  # The last time the video or its caption were updated
  # Permissions: user_videos
  # Returns: string containing ISO-8601 date-time
  attr_accessor :updated_time

  # All of the comments on this video
  # Permissions: user_videos
  # Returns: array of objects containing id, from, message, created_time, and likes fields
  attr_accessor :comments

  ##################################################
  ### This Object hast the following connections ###
  ##################################################

  # All of the likes on this video
  # Permissions: user_videos
  # Returns: array of objects containing id and name fields.
  def likes( params={} )
    likes = get_connections("likes", params)
    return map_connections likes, :to => Facebook::Graph::Like
  end

  # All of the comments on this video
  # Permissions: user_videos
  # Returns: array of objects containing id, from, message, created_time, and likes fields.
  def comments( params={} )
    comments = get_connections("comments", params)
    return map_connections comments, :to => Facebook::Graph::Comment
  end

  # The image which represents the content of the video
  # Permissions: user_videos
  # Returns: An HTTP 302 to the URL of the album's cover picture.
  def picture( params={} )
    picture = get_connections("picture", params)
    return map_connections picture, :to => Facebook::Graph::Pictur
  end

  #############################################################
  ### This Object hast the following actions on connections ###
  #############################################################

  # You can like a Video by issuing an HTTP POST request to VIDEO_ID/likes with the publish_stream permission. No parameters necessary.
  # If the create is successful, you get the following return.
  #  Description     Type    If the create succeeded.     boolean   
  def create_likes
  end

  # You can unlike a Video by issuing an HTTP DELETE request to VIDEO_ID/like with the publish_stream permission.
  # If the delete is successful, you get the following return.
  #  Description     Type    If the unlike succeeded     boolean   
  def delete_likes
  end

  # You can comment on a Video by issuing an HTTP POST request to VIDEO_ID/comments with the publish_stream permission and following parameters.
  #  Parameter     Description     Type    Required    message      Comment  text      string      yes   
  # If the create is successful, you get the following return.
  #  Name     Description     Type    id     The new comment ID     string   
  # 
  def create_comments
  end


end

