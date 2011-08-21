# An object representing a review for an application.
def Facebook::Graph::Review
  #################################################
  ### This Object hast the following attributes ###
  #################################################

  # The Facebook ID of the review
  # Permissions: No access_token required
  # Returns: string
  attr_accessor :id

  # The user that created the review
  # Permissions: No access_token required
  # Returns: object containing the id and name of the creating user
  attr_accessor :from

  # The application to which this review applies
  # Permissions: No access_token required
  # Returns: object containing the id and name of the application
  attr_accessor :to

  # The review text (optional)
  # Permissions: No access_token required
  # Returns: string
  attr_accessor :message

  # The review rating
  # Permissions: No access_token required
  # Returns: int between 1 and 5
  attr_accessor :rating

  # The timedate the review was created
  # Permissions: No access_token required
  # Returns: string containing ISO-8601 date-time
  attr_accessor :created_time

  ##################################################
  ### This Object hast the following connections ###
  ##################################################

  #############################################################
  ### This Object hast the following actions on connections ###
  #############################################################


end

