class MessagesController < ApplicationController

  def index
    @message = Message.new
  end

  def create
    @message = Message.new(:name, :email, :content)
    
    if @message.valid?
      UserNotifier.req_email(:name, :email, :content).deliver
      redirect_to contact_path, notice: "Your messages has been sent."
    else
      flash[:alert] = "An error occurred while delivering this message."
      render :index
    end
  end

end
