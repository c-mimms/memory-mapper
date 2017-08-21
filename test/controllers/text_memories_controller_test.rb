require 'test_helper'

class TextMemoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @text_memory = text_memories(:one)
  end

  test "should get index" do
    get text_memories_url
    assert_response :success
  end

  test "should get new" do
    get new_text_memory_url
    assert_response :success
  end

  test "should create text_memory" do
    assert_difference('TextMemory.count') do
      post text_memories_url, params: { text_memory: { date: @text_memory.date, lat: @text_memory.lat, lon: @text_memory.lon, text: @text_memory.text, title: @text_memory.title } }
    end

    assert_redirected_to text_memory_url(TextMemory.last)
  end

  test "should show text_memory" do
    get text_memory_url(@text_memory)
    assert_response :success
  end

  test "should get edit" do
    get edit_text_memory_url(@text_memory)
    assert_response :success
  end

  test "should update text_memory" do
    patch text_memory_url(@text_memory), params: { text_memory: { date: @text_memory.date, lat: @text_memory.lat, lon: @text_memory.lon, text: @text_memory.text, title: @text_memory.title } }
    assert_redirected_to text_memory_url(@text_memory)
  end

  test "should destroy text_memory" do
    assert_difference('TextMemory.count', -1) do
      delete text_memory_url(@text_memory)
    end

    assert_redirected_to text_memories_url
  end
end
