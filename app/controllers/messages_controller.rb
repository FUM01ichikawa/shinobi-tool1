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
    original_text = @message[:original_text]
    require "Zipang"
    require "romaji/core_ext/string"
    zipang_text =  (Zipang.to_slug original_text.tr('０-９ａ-ｚＡ-Ｚ　', '0-9a-zA-Z ').romaji).gsub(/\-/, '')
    @message[:zipang_text] = zipang_text
    zipang_to_num_hash = {'a'=>'1','b'=>'2','c'=>'3','d'=>'4','e'=>'5','f'=>'6','g'=>'7','h'=>'8','i'=>'9','j'=>'10','k'=>'11','l'=>'12','m'=>'13','n'=>'14','o'=>'15','p'=>'16','q'=>'17','r'=>'18','s'=>'19','t'=>'20','u'=>'21','v'=>'22','w'=>'23','x'=>'24','y'=>'25','z'=>'26'}
    @message[:zipang_to_num] = zipang_text.gsub(/[a-z]/, zipang_to_num_hash)
    
      if @message.save
      else
        render :new
      end
  end

  def show
    @message = Message.search(params[:search])
  end

  def search
  end

  private
  def message_params
    params.require(:message).permit(:original_text)
  end

end
