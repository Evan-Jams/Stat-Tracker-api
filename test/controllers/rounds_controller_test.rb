require 'test_helper'

class RoundsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @round = rounds(:one)
  end

  test "should get index" do
    get rounds_url, as: :json
    assert_response :success
  end

  test "should create round" do
    assert_difference('Round.count') do
      post rounds_url, params: { round: { play_date: @round.play_date, strokes1: @round.strokes1, strokes10: @round.strokes10, strokes11: @round.strokes11, strokes12: @round.strokes12, strokes13: @round.strokes13, strokes14: @round.strokes14, strokes15: @round.strokes15, strokes16: @round.strokes16, strokes17: @round.strokes17, strokes18: @round.strokes18, strokes2: @round.strokes2, strokes3: @round.strokes3, strokes4: @round.strokes4, strokes5: @round.strokes5, strokes6: @round.strokes6, strokes7: @round.strokes7, strokes8: @round.strokes8, strokes9: @round.strokes9 } }, as: :json
    end

    assert_response 201
  end

  test "should show round" do
    get round_url(@round), as: :json
    assert_response :success
  end

  test "should update round" do
    patch round_url(@round), params: { round: { play_date: @round.play_date, strokes1: @round.strokes1, strokes10: @round.strokes10, strokes11: @round.strokes11, strokes12: @round.strokes12, strokes13: @round.strokes13, strokes14: @round.strokes14, strokes15: @round.strokes15, strokes16: @round.strokes16, strokes17: @round.strokes17, strokes18: @round.strokes18, strokes2: @round.strokes2, strokes3: @round.strokes3, strokes4: @round.strokes4, strokes5: @round.strokes5, strokes6: @round.strokes6, strokes7: @round.strokes7, strokes8: @round.strokes8, strokes9: @round.strokes9 } }, as: :json
    assert_response 200
  end

  test "should destroy round" do
    assert_difference('Round.count', -1) do
      delete round_url(@round), as: :json
    end

    assert_response 204
  end
end
