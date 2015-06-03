class HomeController < ApplicationController

	def gallery
		@corporate = Dir.entries("#{Rails.root}/app/assets/images/Gallery/Corporate/").reject{|entry| entry == "." || entry == ".."}
		@holidays = Dir.entries("#{Rails.root}/app/assets/images/Gallery/Holidays_and_Seasons/").reject{|entry| entry == "." || entry == ".."}
		@sports = Dir.entries("#{Rails.root}/app/assets/images/Gallery/Sports/").reject{|entry| entry == "." || entry == ".."}
		@themes = Dir.entries("#{Rails.root}/app/assets/images/Gallery/Events_and_Themes/").reject{|entry| entry == "." || entry == ".."}
		@dogtreats = Dir.entries("#{Rails.root}/app/assets/images/Gallery/Dog_Treats/").reject{|entry| entry == "." || entry == ".."}
	end	


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
      render :new
    end
  end



end
