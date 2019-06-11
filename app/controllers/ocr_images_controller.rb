class OcrImagesController < ApplicationController
  def index
  end

  def new
  end


  def new
    @ocr_image = Ocr_image.new
    @ocr_image.images.build
  end

  def create
  end

  def show
  end
end
