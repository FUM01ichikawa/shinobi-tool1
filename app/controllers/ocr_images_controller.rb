class OcrImagesController < ApplicationController
  
  def index
  end

  def new
    @ocr_image = OcrImage.new
  end

  def create
    @ocr_image = OcrImage.new(ocr_image_params)
      if @ocr_image.save
        redirect_to root_path, notice: 'グループを作成しました'
      else
        render :new
      end
  end

  def show
  end
end

private
  def ocr_image_params
    params.require(:ocr_image).permit(:name)
  end