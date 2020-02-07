require 'test_helper'

class ComicBooksControllerTest < ActionDispatch::IntegrationTest
  test "should get title" do
    get comic_books_title_url
    assert_response :success
  end

  test "should get genre" do
    get comic_books_genre_url
    assert_response :success
  end

  test "should get rating:integer" do
    get comic_books_rating:integer_url
    assert_response :success
  end

  test "should get page_count:integer" do
    get comic_books_page_count:integer_url
    assert_response :success
  end

end
