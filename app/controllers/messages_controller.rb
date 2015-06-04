class MessagesController < ApplicationController

  def index
    @message = Message.new
  end

  def create
    @message = Message.new(params[:message])
    @message.request = request
    if @message.deliver
      flash.now[:notice] = 'Thank you for your message. We will contact you soon!'
      redirect_to request.referrer
      
    else
      flash[:error] = "Cannot send message."
      redirect_to request.referrer
    end
  end


end
