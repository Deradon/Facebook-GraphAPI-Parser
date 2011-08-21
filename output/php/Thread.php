<?php
# A message thread in the new Facebook messaging system as represented in the Graph API. The User object has a threads connections.
class Thread{
  /*
   * This Object hast the following attributes
   */

  /*
   * This Object hast the following connections
   */

  // The unique ID for this message thread
  // Permissions: read_mailbox
  // Returns: string
  public function id(){
  }

  // Fragment of the thread for use in thread lists
  // Permissions: read_mailbox
  // Returns: string
  public function snippet(){
  }

  // Timestamp of when the thread was last updated
  // Permissions: read_mailbox
  // Returns: string containing ISO-8601 date-time
  public function updatedTime(){
  }

  // Number of messages in the thread
  // Permissions: read_mailbox
  // Returns: integer
  public function messageCount(){
  }

  // Number of unread messages in the thread
  // Permissions: read_mailbox
  // Returns: integer
  public function unreadCount(){
  }

  // Thread tags
  // Permissions: read_mailbox
  // Returns: array of objects containing name
  public function tags(){
  }

  // List of the thread participants
  // Permissions: read_mailbox
  // Returns: array of objects each containing name, email, and Facebook id (if available)
  public function participants(){
  }

  // List of former thread participants who have unsubscribed from the thread
  // Permissions: read_mailbox
  // Returns: array of objects each containing name, email, and Facebook id (if available)
  public function formerParticipants(){
  }

  // List of participants who have sent a message in the thread
  // Permissions: read_mailbox
  // Returns: array of objects each containing name, email, and Facebook id (if available)
  public function senders(){
  }

  // List of the message objects contained in this thread
  // Permissions: read_mailbox
  // Returns: array of message objects
  public function messages(){
  }

  /*
   *  This Object hast the following actions on connections
   */


}
?>

