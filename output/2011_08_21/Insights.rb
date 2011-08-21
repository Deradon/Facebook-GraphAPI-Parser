# An object containing statistics about applications, pages, and domains.
def Facebook::Graph::Insights
  #################################################
  ### This Object hast the following attributes ###
  #################################################

  # ID of the insight
  # Permissions: generic access_token or read_insights
  # Returns: string
  attr_accessor :id

  # Name of the metric
  # Permissions: generic access_token or read_insights
  # Returns: string
  attr_accessor :name

  # Length of the period during which the insights were collected
  # Permissions: generic access_token or read_insights
  # Returns: string
  attr_accessor :period

  # Individual data points for the insight
  # Permissions: generic access_token or read_insights
  # Returns: array of objects containing value and end_time
  attr_accessor :values

  # The full description of the metric
  # Permissions: generic access_token or read_insights
  # Returns: string
  attr_accessor :description

  ##################################################
  ### This Object hast the following connections ###
  ##################################################

  #############################################################
  ### This Object hast the following actions on connections ###
  #############################################################


end

