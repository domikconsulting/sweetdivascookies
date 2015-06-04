class MessagesController < ApplicationController

  def index
    @message = Message.new
  end

  def create
    @message = Message.new(params[:message])
    @message.request = request
    if @message.deliver
      # render :action => :success  
      # render "partial_wrapper", :locals => {:partial => "create"}, :layout => true
      redirect_to action: 'sent'
    else
      flash[:error] = "Cannot send message."
      # redirect_to action: 'show', id: 'success'
      redirect_to :sent

    end

  end


end
