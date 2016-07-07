require 'test_helper'

module Teaser
  class PreRegistrantsControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    setup do
      @pre_registrant = teaser_pre_registrants(:one)
    end

    test "should get index" do
      get pre_registrants_url
      assert_response :success
    end

    test "should get new" do
      get new_pre_registrant_url
      assert_response :success
    end

    test "should create pre_registrant" do
      assert_difference('PreRegistrant.count') do
        post pre_registrants_url, params: { pre_registrant: { email: @pre_registrant.email, name: @pre_registrant.name } }
      end

      assert_redirected_to pre_registrant_url(PreRegistrant.last)
    end

    test "should show pre_registrant" do
      get pre_registrant_url(@pre_registrant)
      assert_response :success
    end

    test "should get edit" do
      get edit_pre_registrant_url(@pre_registrant)
      assert_response :success
    end

    test "should update pre_registrant" do
      patch pre_registrant_url(@pre_registrant), params: { pre_registrant: { email: @pre_registrant.email, name: @pre_registrant.name } }
      assert_redirected_to pre_registrant_url(@pre_registrant)
    end

    test "should destroy pre_registrant" do
      assert_difference('PreRegistrant.count', -1) do
        delete pre_registrant_url(@pre_registrant)
      end

      assert_redirected_to pre_registrants_url
    end
  end
end
