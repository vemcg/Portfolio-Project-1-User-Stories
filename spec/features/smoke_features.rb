require 'spec_helper'
pp "RIGHT AFTER spec_helper"
require 'pp'
require 'ruby-debug'




Capybara.configure do |config| 
  config.match = :one
  config.exact_options = true
  config.ignore_hidden_elements = true
  config.visible_text_only = true
end
#pry
#  the puts strings appears at the top of the test results
puts "smoke_tests_spec-DEBUG:Capybara.default_selector=#{Capybara.default_selector}"
# this is NOT the way to change the default selector
#   but it might be a way to have Capybara search via id
#Capybara.default_selector = id
#puts Capybara.default_selector

#Launchy.open("www.google.com")
feature "SmokeTests" do
  
  before(:each) do
    @user = {
      :name =>   "Some Won",
      :email =>  "somewon@example.com",
      :password => "foolishbar"
    }
    @new_story = {
      :tags => "test",
      :as_a => "user",
      :i_want_to => "test this application",
      :so_that => "I am sure it works",
      :notes => "a = 440"
    }
    @new_storyB = {
      :tags => "testB",
      :as_a => "userB",
      :i_want_to => "22222test this application",
      :so_that => "22222I am sure it works",
      :notes => "a = TEST NOTES 440"
    }
   

  end


    scenario "should allow a valid user to login" do
      
        ##puts 'PUTZSUCCESSFUL LOGIN!!!!!!!!!!!!!!!!!!! PUTZ'
        debugger
        visit "/signup"
        fill_in('user_email', :with => @user[:email])
        fill_in('user_password', :with => @user[:password])
        #click_button "Log in"
        #debugger
        #save_and_open_page
        #save_and_open_page
        #pry
        #pp "HHHH#{page.has_text?('User Stories')}" # this is simply a test showing that page has text, if false this
                                       # no affect on the test
        expect(page).to have_text('User Stories')
        #puts "respond=#{respond}"
        #ave_and_open_page
        #get, respond
        #visit, page
    
    end
end
  