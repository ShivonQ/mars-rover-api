require 'test_helper'

class RoverManifestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rover_manifest = rover_manifests(:one)
  end

  test "should get index" do
    get rover_manifests_url, as: :json
    assert_response :success
  end

  test "should create rover_manifest" do
    assert_difference('RoverManifest.count') do
      post rover_manifests_url, params: { rover_manifest: { landing_date: @rover_manifest.landing_date, launch_date: @rover_manifest.launch_date, max_date: @rover_manifest.max_date, max_sol: @rover_manifest.max_sol, name: @rover_manifest.name, portrait: @rover_manifest.portrait, status: @rover_manifest.status, total_photos: @rover_manifest.total_photos } }, as: :json
    end

    assert_response 201
  end

  test "should show rover_manifest" do
    get rover_manifest_url(@rover_manifest), as: :json
    assert_response :success
  end

  test "should update rover_manifest" do
    patch rover_manifest_url(@rover_manifest), params: { rover_manifest: { landing_date: @rover_manifest.landing_date, launch_date: @rover_manifest.launch_date, max_date: @rover_manifest.max_date, max_sol: @rover_manifest.max_sol, name: @rover_manifest.name, portrait: @rover_manifest.portrait, status: @rover_manifest.status, total_photos: @rover_manifest.total_photos } }, as: :json
    assert_response 200
  end

  test "should destroy rover_manifest" do
    assert_difference('RoverManifest.count', -1) do
      delete rover_manifest_url(@rover_manifest), as: :json
    end

    assert_response 204
  end
end
