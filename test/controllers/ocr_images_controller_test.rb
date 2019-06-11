require 'test_helper'

class OcrImagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ocr_images_index_url
    assert_response :success
  end

  test "should get new" do
    get ocr_images_new_url
    assert_response :success
  end

  test "should get create" do
    get ocr_images_create_url
    assert_response :success
  end

  test "should get show" do
    get ocr_images_show_url
    assert_response :success
  end

end
