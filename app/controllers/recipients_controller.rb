class RecipientsController < ApplicationController
  def index
    @recipient = Recipient.all
  end
end
