class LikesController < ApplicationController

  before_action :set_message

  def create
    @message.update!(liked: true)
    redirect_to @message
  end

  def destroy
    @message.update!(liked: false)
    redirect_to @message
  end

  private

    def set_message
      @message = Message.find(params[:message_id])
    end
end
