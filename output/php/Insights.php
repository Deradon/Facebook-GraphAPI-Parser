<?php
# An object containing statistics about applications, pages, and domains.
class Insights{
  /*
   * This Object hast the following attributes
   */

  // ID of the insight
  // Permissions: generic access_token or read_insights
  // Returns: string
  public $id;

  // Name of the metric
  // Permissions: generic access_token or read_insights
  // Returns: string
  public $name;

  // Length of the period during which the insights were collected
  // Permissions: generic access_token or read_insights
  // Returns: string
  public $period;

  // Individual data points for the insight
  // Permissions: generic access_token or read_insights
  // Returns: array of objects containing value and end_time
  public $values;

  // The full description of the metric
  // Permissions: generic access_token or read_insights
  // Returns: string
  public $description;

  /*
   * This Object hast the following connections
   */

  /*
   *  This Object hast the following actions on connections
   */


}
?>

