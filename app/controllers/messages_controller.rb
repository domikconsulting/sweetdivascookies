class MessagesController < ApplicationController

  def index
    @message = Message.new
  end

  def create
    @message = Message.new(params[:message])
    @message.request = request
    @failed = 0

    if @message.deliver
      # render :action => :success  
      # render "partial_wrapper", :locals => {:partial => "create"}, :layout => true
      redirect_to :sent
    else
      
      # redirect_to action: 'show', id: 'success'
      
      redirect_to :back
      @failed = 1
      @anchor = "contacts"

    end

  end


end
