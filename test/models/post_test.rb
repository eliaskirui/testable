# frozen_string_literal: true

require "test_helper"

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should not save post without title" do
    post = Post.new
    assert_not post.save, "Saved the post without a title"
  end

  test "Should see post with title" do
    post = Post.new(title: "Test")
    assert post.save, "Whatever words go here"
  end
end
