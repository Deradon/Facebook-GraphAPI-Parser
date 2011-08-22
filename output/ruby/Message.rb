# An individual message in the new Facebook messaging system.  Every message has a message ID that represents an object in the Graph.  To get access to read a user's messages, you should request the read_mailbox Extended Permission.
def Facebook::Graph::Message
  #################################################
  ### This Object hast the following attributes ###
  #################################################

  ##################################################
  ### This Object hast the following connections ###
  ##################################################

  # The unique ID for this message
  # Permissions: read_mailbox
  # Returns: string
  def id( params={} )
    id = get_connections("id", params)
    return map_connections id, :to => Facebook::Graph::Generic
  end

  # A timestamp of when this message was created
  # Permissions: read_mailbox
  # Returns: string containing ISO-8601 date-time
  def created_time( params={} )
    created_time = get_connections("created_time", params)
    return map_connections created_time, :to => Facebook::Graph::Generic
  end

  # The sender of this message
  # Permissions: read_mailbox
  # Returns: Object containing name and Facebook id (if available)
  def from( params={} )
    from = get_connections("from", params)
    return map_connections from, :to => Facebook::Graph::Generic
  end

  # A list of the message recipients
  # Permissions: read_mailbox
  # Returns: Array of objects each containing name and Facebook id (if
  # available)
  def to( params={} )
    to = get_connections("to", params)
    return map_connections to, :to => Facebook::Graph::Generic
  end

  # The text of the message
  # Permissions: read_mailbox
  # Returns: string
  def message( params={} )
    message = get_connections("message", params)
    return map_connections message, :to => Facebook::Graph::Messag
  end

  #############################################################
  ### This Object hast the following actions on connections ###
  #############################################################


end

