class NotificationsController < ApplicationController
  def create
    # @client = Twilio::REST::Client.new Rails.application.secrets.twilio_account_sid, Rails.application.secrets.twilio_auth_token
    @notification = Notification.new
    @notification.message = params[:notification][:message]
    @notification.recipient = params[:notification][:recipient]

    # @client.account.messages.create({
    #   :from => '+17089720240',
    #   :to   => @notification.recipient,
    #   :body => @notification.message,
    # })

    redirect_to :back
  end

  def destroy
  end
end
