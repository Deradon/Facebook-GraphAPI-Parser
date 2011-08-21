<?php
# An object representing a review for an application.
class Review{
  /*
   * This Object hast the following attributes
   */

  // The Facebook ID of the review
  // Permissions: No access_token required
  // Returns: string
  public $id;

  // The user that created the review
  // Permissions: No access_token required
  // Returns: object containing the id and name of the creating user
  public $from;

  // The application to which this review applies
  // Permissions: No access_token required
  // Returns: object containing the id and name of the application
  public $to;

  // The review text (optional)
  // Permissions: No access_token required
  // Returns: string
  public $message;

  // The review rating
  // Permissions: No access_token required
  // Returns: int between 1 and 5
  public $rating;

  // The timedate the review was created
  // Permissions: No access_token required
  // Returns: string containing ISO-8601 date-time
  public $createdTime;

  /*
   * This Object hast the following connections
   */

  /*
   *  This Object hast the following actions on connections
   */


}
?>

