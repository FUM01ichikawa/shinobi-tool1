module GoogleCloudVision
  extend ActiveSupport::Concern

  def ocr_result(ocr_image_id,ocr_image_name)
    
    require "google/cloud/vision"
    project_id = "my-project-shinobi-tool1"
    image_annotator = Google::Cloud::Vision::ImageAnnotator.new
    image_path  = "/Users/ichikawafumishou/projects/shinobi-tool1/public/uploads/ocr_image/name/#{ocr_image_id}/#{ocr_image_name}"
    response = image_annotator.text_detection(
      image: image_path,
      max_results: 1 # optional, defaults to 10
    )

    response.responses.each do |res|
    res.text_annotations.each do |text|
        return text.description
      end
    end
  end
  module_function :ocr_result
end
