class HomeController < ApplicationController
  def index
  end

  def message
    @m = Message.new(message_params)
    if @m.save
      respond_to do |f|
        f.json {render json: {status: 200}}
      end
    end
  end

  private
  def message_params
    params.require(:message).permit(:owner, :email, :content)
  end
end
