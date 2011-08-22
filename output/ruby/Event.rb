# Specifies information about an event, including the location, event name, and which invitees plan to attend. The User, Page, and Application objects have an events connection.
def Facebook::Graph::Event
  #################################################
  ### This Object hast the following attributes ###
  #################################################

  # The event ID
  # Permissions: generic access_token, user_events or friends_events
  # Returns: string
  attr_accessor :id

  # The profile that created the event
  # Permissions: generic access_token, user_events or friends_events
  # Returns: object containing id and name fields
  attr_accessor :owner

  # The event title
  # Permissions: generic access_token, user_events or friends_events
  # Returns: string
  attr_accessor :name

  # The long-form description of the event
  # Permissions: generic access_token, user_events or friends_events
  # Returns: string
  attr_accessor :description

  # The start time of the event, as you want it to be displayed on facebook
  # Permissions: generic access_token, user_events or friends_events
  # Returns: string containing an ISO-8601 formatted date/time or a UNIX
  # timestamp; if it contains a time zone (not recommended), it will be
  # converted to Pacific time before being stored and displayed
  attr_accessor :start_time

  # The end time of the event, as you want it to be displayed on facebook
  # Permissions: generic access_token, user_events or friends_events
  # Returns: string containing an ISO-8601 formatted date/time or a UNIX
  # timestamp; if it contains a time zone (not recommended), it will be
  # converted to Pacific time before being stored and displayed
  attr_accessor :end_time

  # The location for this event
  # Permissions: generic access_token, user_events or friends_events
  # Returns: string
  attr_accessor :location

  # The location of this event
  # Permissions: generic access_token, user_events or friends_events
  # Returns: object containing street, city, state, zip, country, latitude, and
  # longitude fields
  attr_accessor :venue

  # The visibility of this event
  # Permissions: generic access_token, user_events or friends_events
  # Returns: string containing 'OPEN', 'CLOSED', or 'SECRET'
  attr_accessor :privacy

  # The last time the event was updated
  # Permissions: generic access_token, user_events or friends_events
  # Returns: string containing ISO-8601 date-time
  attr_accessor :updated_time

  ##################################################
  ### This Object hast the following connections ###
  ##################################################

  # This event's wall.
  # Permissions: any valid access_token, user_events or friends_events
  # Returns: An array of Post objects.
  def feed( params={} )
    feed = get_connections("feed", params)
    return map_connections feed, :to => Facebook::Graph::Generic
  end

  # All of the users who have been not yet responded to their invitation to this
  # event.
  # Permissions: any valid access_token, user_events or friends_events
  # Returns: array containing objects with id, name and rsvp_status fields.
  def noreply( params={} )
    noreply = get_connections("noreply", params)
    return map_connections noreply, :to => Facebook::Graph::Generic
  end

  # All of the users who have been responded "Maybe" to their invitation to this
  # event.
  # Permissions: any valid access_token, user_events or friends_events
  # Returns: array containing objects with id, name and rsvp_status fields.
  def maybe( params={} )
    maybe = get_connections("maybe", params)
    return map_connections maybe, :to => Facebook::Graph::Generic
  end

  # All of the users who have been invited to this event.
  # Permissions: any valid access_token, user_events or friends_events
  # Returns: array containing objects with id, name and rsvp_status fields.
  def invited( params={} )
    invited = get_connections("invited", params)
    return map_connections invited, :to => Facebook::Graph::Generic
  end

  # All of the users who are attending this event.
  # Permissions: any valid access_token, user_events or friends_events
  # Returns: array containing objects with id, name and rsvp_status fields.
  def attending( params={} )
    attending = get_connections("attending", params)
    return map_connections attending, :to => Facebook::Graph::Generic
  end

  # All of the users who declined their invitation to this event.
  # Permissions: any valid access_token, user_events or friends_events
  # Returns: array containing JSON objects with id, name and rsvp_status fields.
  def declined( params={} )
    declined = get_connections("declined", params)
    return map_connections declined, :to => Facebook::Graph::Generic
  end

  # The event's profile picture.
  # Permissions: any valid access_token, user_events or friends_events
  # Returns: Returns a HTTP 302 with the URL of the event's picture (use
  # ?type=small | normal | large to request a different photo).
  def picture( params={} )
    picture = get_connections("picture", params)
    return map_connections picture, :to => Facebook::Graph::Generic
  end

  #############################################################
  ### This Object hast the following actions on connections ###
  #############################################################

  def links_feed
  end

  # You can post a link on the event's wall by issuing an HTTP POST request to
  # EVENT_ID/feed with the publish_stream permissions and the following
  # parameters.
  #  Parameter     Description     Type    Required     link       Link URL     
  # string      yes     message       Link message      string      no   
  # The other fields are taken from the metadata of the page URL given in the
  # 'link' param.
  # If the create is successful, you get the following return.
  #  Name     Description     Type    id     The new link ID     string   
  # 
  def create_feed
  end

  def posts_feed
  end

  # You can create a post on an Event's wall by issuing an HTTP POST request to
  # EVENT_ID/feed with the publish_stream permissions and the following
  # parameters.
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
  def create_feed
  end

  def statuses_feed
  end

  # You can post a status message on an Event's wall by issuing an HTTP POST
  # request to EVENT_ID/feed with the publish_stream permissions and the
  # following parameters.
  #  Parameter     Description     Type    Required     message       Status
  # Message content      string      yes   
  # If the create is successful, you get the following return.
  #  Name     Description     Type    id     The new status message ID    
  # string   
  # 
  def create_feed
  end


end

