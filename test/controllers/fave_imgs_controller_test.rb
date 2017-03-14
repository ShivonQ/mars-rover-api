require 'test_helper'

class FaveImgsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fave_img = fave_imgs(:one)
  end

  test "should get index" do
    get fave_imgs_url, as: :json
    assert_response :success
  end

  test "should create fave_img" do
    assert_difference('FaveImg.count') do
      post fave_imgs_url, params: { fave_img: { cam_name: @fave_img.cam_name, image_date: @fave_img.image_date, rover: @fave_img.rover, url: @fave_img.url, user_id: @fave_img.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show fave_img" do
    get fave_img_url(@fave_img), as: :json
    assert_response :success
  end

  test "should update fave_img" do
    patch fave_img_url(@fave_img), params: { fave_img: { cam_name: @fave_img.cam_name, image_date: @fave_img.image_date, rover: @fave_img.rover, url: @fave_img.url, user_id: @fave_img.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy fave_img" do
    assert_difference('FaveImg.count', -1) do
      delete fave_img_url(@fave_img), as: :json
    end

    assert_response 204
  end
end
