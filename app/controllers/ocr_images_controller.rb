
class OcrImagesController < ApplicationController
  require "google/cloud/vision"
  def index
  end

  def new
    @ocr_image = OcrImage.new
  end

  def create
    @ocr_image = OcrImage.new(ocr_image_params)
    
    if @ocr_image.save
      ocr_image_id = @ocr_image[:id]
      ocr_image_name = @ocr_image[:name]
      response_text = GoogleCloudVision.ocr_result(ocr_image_id,ocr_image_name)
      @ocr_image.update(ocr_result:response_text)
    else
        render :new
      end
  end

  def show
  end


private
  def ocr_image_params
    params.require(:ocr_image).permit(:name,:ocr_result)
  end

end