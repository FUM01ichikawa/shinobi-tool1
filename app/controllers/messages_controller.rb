class MessagesController < ApplicationController

  def index
  end

  def create
  end

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
      if @message.save
        redirect_to root_path, notice: 'グループを作成しました'
      else
        render :new
      end
  end

  def show
  end

  def serch
  end

  private
  def message_params
    params.require(:message).permit(:original_text)
  end

end
