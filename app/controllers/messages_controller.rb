class MessagesController < ApplicationController

  def index
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    
    if @message.valid?
      UserNotifier.req_email(:name, :email, :content).deliver
      redirect_to contact_path, notice: "Your messages has been sent."
    else
      flash[:alert] = "An error occurred while delivering this message."
      render :index
    end
  end

private

  def message_params
    params.require(:message).permit(:name, :email, :content)
  end

end
