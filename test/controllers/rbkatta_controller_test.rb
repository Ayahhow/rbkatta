require 'test_helper'

class RbkattaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rbkattum = rbkatta(:one)
  end

  test "should get index" do
    get rbkatta_url
    assert_response :success
  end

  test "should get new" do
    get new_rbkattum_url
    assert_response :success
  end

  test "should create rbkattum" do
    assert_difference('Rbkattum.count') do
      post rbkatta_url, params: { rbkattum: { already: @rbkattum.already, comment: @rbkattum.comment, rbkatta: @rbkattum.rbkatta, time: @rbkattum.time, user: @rbkattum.user } }
    end

    assert_redirected_to rbkattum_url(Rbkattum.last)
  end

  test "should show rbkattum" do
    get rbkattum_url(@rbkattum)
    assert_response :success
  end

  test "should get edit" do
    get edit_rbkattum_url(@rbkattum)
    assert_response :success
  end

  test "should update rbkattum" do
    patch rbkattum_url(@rbkattum), params: { rbkattum: { already: @rbkattum.already, comment: @rbkattum.comment, rbkatta: @rbkattum.rbkatta, time: @rbkattum.time, user: @rbkattum.user } }
    assert_redirected_to rbkattum_url(@rbkattum)
  end

  test "should destroy rbkattum" do
    assert_difference('Rbkattum.count', -1) do
      delete rbkattum_url(@rbkattum)
    end

    assert_redirected_to rbkatta_url
  end
end
