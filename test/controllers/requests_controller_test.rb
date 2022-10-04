# frozen_string_literal: true

require 'test_helper'

class RequestsControllerTest < ActionDispatch::IntegrationTest
     setup do
          @request = requests(:one)
     end

     test 'should get index' do
          get requests_url
          assert_response :success
     end

     test 'should get new' do
          get new_request_url
          assert_response :success
     end

     test 'should create request' do
          assert_difference('Request.count') do
               post requests_url,
                    params: {
                         request: {
                              budget_id: @request.budget_id,
                              category: @request.category,
                              cost: @request.cost,
                              gift: @request.gift,
                              items_purchased: @request.items_purchased,
                              subcategory: @request.subcategory,
                              tax_category: @request.tax_category,
                              type: @request.type,
                              user_id: @request.user_id,
                              vendor_id: @request.vendor_id
                         }
                    }
          end

          assert_redirected_to request_url(Request.last)
     end

     test 'should show request' do
          get request_url(@request)
          assert_response :success
     end

     test 'should get edit' do
          get edit_request_url(@request)
          assert_response :success
     end

     test 'should update request' do
          patch request_url(@request),
                params: {
                     request: {
                          budget_id: @request.budget_id,
                          category: @request.category,
                          cost: @request.cost,
                          gift: @request.gift,
                          items_purchased: @request.items_purchased,
                          subcategory: @request.subcategory,
                          tax_category: @request.tax_category,
                          type: @request.type,
                          user_id: @request.user_id,
                          vendor_id: @request.vendor_id
                     }
                }
          assert_redirected_to request_url(@request)
     end

     test 'should destroy request' do
          assert_difference('Request.count', -1) do
               delete request_url(@request)
          end

          assert_redirected_to requests_url
     end
end
