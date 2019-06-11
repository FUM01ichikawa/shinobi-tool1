require "google/cloud/vision"

image_annotator = Google::Cloud::Vision::ImageAnnotator.new

image_path  = "/Users/ichikawafumishou/projects/shinobi-tool1/app/assets/images/test3.jpg"

response = image_annotator.text_detection(
  image: image_path,
  max_results: 1 # optional, defaults to 10
)

  response.responses.each do |res|
    res.text_annotations.each do |text|
      puts text.description
    end
  end
