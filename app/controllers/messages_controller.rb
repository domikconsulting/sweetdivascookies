class MessagesController < ApplicationController

  def index
    @message = Message.new
  end

  def create
    @message = Message.new(params[:message])
    @message.request = request
    if @message.deliver
      flash.now[:notice] = 'Thank you for your message. We will contact you soon!'
      
    else
      flash[:error] = "Cannot send message."
      render :index
    end
  end


end
