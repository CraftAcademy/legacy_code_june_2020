module MailboxHelper
  def unread_s_count
    # how to get the number of unread s for the current user
    # using mailboxer
    mailbox.inbox(unread: true).count
  end
end
