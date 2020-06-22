require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  def setup
    # @response = get static_pages_help_url
    @base_title = "Ruby on Rails Tutorial Sample App"
  end

  def test_should_get_root
    get root_url
    assert_response( :success)
  end

  test "should get home" do
    # puts static_pages_home_url
    get static_pages_home_url
    # puts @response.body
    # puts @response.header
    # puts @response
    assert_response :success
    assert_select "title", "Home | #{@base_title}"
  end

  test "should get help" do
    get static_pages_help_url
    puts @response.body
    assert_response :success
    assert_select "title", "Help | #{@base_title}"
    hash1 = { :symbol => "value"}
    puts hash1[:symbol]
  end

  def test_should_get_about
    # puts "this is the URL we send request to \n"
    # puts static_pages_about_url
    get static_pages_about_url
    # puts "this is the Responde body we recive"
    # puts @response.body
    assert_response :success
    assert_select "title", "About | #{@base_title}"
  end

  # def test_should_get_contact
  #   # provide(:title,"Test")
  #   # yield(:title)
  #   get static_pages_contact_url
  #   assert_response :success
  #   # puts "this What assert_select returns"
  #   assert_select "title","Contact | #{@base_title}"
  # end

  def test_should_get_contact
    get static_pages_contact_url
    puts static_pages_contact_url
    assert_response :success
    assert_select "title", "Contact | #{@base_title}"
  end

end
