# A subscription to an application as represented in the Graph API. This enables real-time updates for the application. The Application object has a subscription connection
def Facebook::Graph::Subscription
  #################################################
  ### This Object hast the following attributes ###
  #################################################

  # The object type to subscribe to, one of user, page, or permissions
  # Permissions: app access_token
  # Returns: string
  attr_accessor :object

  # The list of fields for the object type
  # Permissions: app access_token
  # Returns: string containing a comma-separated list of field names
  attr_accessor :fields

  # An endpoint on your domain which can handle the real-time notifications
  # Permissions: app access_token
  # Returns: string
  attr_accessor :callback_url

  ##################################################
  ### This Object hast the following connections ###
  ##################################################

  #############################################################
  ### This Object hast the following actions on connections ###
  #############################################################


end

