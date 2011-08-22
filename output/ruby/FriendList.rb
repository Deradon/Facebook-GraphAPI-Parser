# A Facebook friend list. This object represents the list itself and not the members of the list. The User object has a friendlists connection
def Facebook::Graph::FriendList
  #################################################
  ### This Object hast the following attributes ###
  #################################################

  # The friend list ID
  # Permissions: read_friendlists
  # Returns: string
  attr_accessor :id

  # The name of the friend list
  # Permissions: read_friendlists
  # Returns: string
  attr_accessor :name

  # The type of this object; always returns friendlist
  # Permissions: read_friendlists
  # Returns: string
  attr_accessor :type

  ##################################################
  ### This Object hast the following connections ###
  ##################################################

  #  Friend list name 
  # Permissions:  string 
  # Returns:  yes 
  def   name  ( params={} )
      name   = get_connections("  name  ", params)
    return map_connections   name  , :to => Facebook::Graph::Generic
  end

  #############################################################
  ### This Object hast the following actions on connections ###
  #############################################################


end

