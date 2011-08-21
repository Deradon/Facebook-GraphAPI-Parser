<?php
# A subscription to an application as represented in the Graph API. This enables real-time updates for the application. The Application object has a subscription connection
class Subscription{
  /*
   * This Object hast the following attributes
   */

  // The object type to subscribe to, one of user, page, or permissions
  // Permissions: app access_token
  // Returns: string
  public $object;

  // The list of fields for the object type
  // Permissions: app access_token
  // Returns: string containing a comma-separated list of field names
  public $fields;

  // An endpoint on your domain which can handle the real-time notifications
  // Permissions: app access_token
  // Returns: string
  public $callbackUrl;

  /*
   * This Object hast the following connections
   */

  /*
   *  This Object hast the following actions on connections
   */


}
?>

