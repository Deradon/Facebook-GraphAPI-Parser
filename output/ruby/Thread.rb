# A message thread in the new Facebook messaging system as represented in the Graph API. The User object has a threads connections.
def Facebook::Graph::Thread
  #################################################
  ### This Object hast the following attributes ###
  #################################################

  ##################################################
  ### This Object hast the following connections ###
  ##################################################

  # The unique ID for this message thread
  # Permissions: read_mailbox
  # Returns: string
  def id( params={} )
    id = get_connections("id", params)
    return map_connections id, :to => Facebook::Graph::Generic
  end

  # Fragment of the thread for use in thread lists
  # Permissions: read_mailbox
  # Returns: string
  def snippet( params={} )
    snippet = get_connections("snippet", params)
    return map_connections snippet, :to => Facebook::Graph::Generic
  end

  # Timestamp of when the thread was last updated
  # Permissions: read_mailbox
  # Returns: string containing ISO-8601 date-time
  def updated_time( params={} )
    updated_time = get_connections("updated_time", params)
    return map_connections updated_time, :to => Facebook::Graph::Generic
  end

  # Number of messages in the thread
  # Permissions: read_mailbox
  # Returns: integer
  def message_count( params={} )
    message_count = get_connections("message_count", params)
    return map_connections message_count, :to => Facebook::Graph::Generic
  end

  # Number of unread messages in the thread
  # Permissions: read_mailbox
  # Returns: integer
  def unread_count( params={} )
    unread_count = get_connections("unread_count", params)
    return map_connections unread_count, :to => Facebook::Graph::Generic
  end

  # Thread tags
  # Permissions: read_mailbox
  # Returns: array of objects containing name
  def tags( params={} )
    tags = get_connections("tags", params)
    return map_connections tags, :to => Facebook::Graph::Generic
  end

  # List of the thread participants
  # Permissions: read_mailbox
  # Returns: array of objects each containing name, email, and Facebook id (if
  # available)
  def participants( params={} )
    participants = get_connections("participants", params)
    return map_connections participants, :to => Facebook::Graph::Generic
  end

  # List of former thread participants who have unsubscribed from the thread
  # Permissions: read_mailbox
  # Returns: array of objects each containing name, email, and Facebook id (if
  # available)
  def former_participants( params={} )
    former_participants = get_connections("former_participants", params)
    return map_connections former_participants, :to => Facebook::Graph::Generic
  end

  # List of participants who have sent a message in the thread
  # Permissions: read_mailbox
  # Returns: array of objects each containing name, email, and Facebook id (if
  # available)
  def senders( params={} )
    senders = get_connections("senders", params)
    return map_connections senders, :to => Facebook::Graph::Generic
  end

  # List of the message objects contained in this thread
  # Permissions: read_mailbox
  # Returns: array of message objects
  def messages( params={} )
    messages = get_connections("messages", params)
    return map_connections messages, :to => Facebook::Graph::Message
  end

  #############################################################
  ### This Object hast the following actions on connections ###
  #############################################################


end

