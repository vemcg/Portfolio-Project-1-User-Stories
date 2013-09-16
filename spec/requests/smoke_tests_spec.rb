require 'spec_helper'
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
describe "SmokeTests" do

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


describe "un successful login" do
    it "should allow a valid user to login" do
      lambda do 
        ##puts 'PUTZSUCCESSFUL LOGIN!!!!!!!!!!!!!!!!!!! PUTZ'
        visit "/signup"
        fill_in('user_email', :with => @user[:email])
        fill_in('user_password', :with => @user[:password])
        #click_button "Log in"
        #debugger
        save_and_open_page
        #save_and_open_page
        page.has_text?('User Stories')
        #save_and_open_page
      end.should_not change(User, :count)
    end
end 

  describe "newtest" do

   it "should_visit the page" do
        lambda do

         visit "/loginSTUPID"
         ###puts "PUTZ NEWTEST PUTZ-------LOGIN DOOD COULD BE TROUBLE WITH LAMBDA!!!"
         visit "/logout"

       end
    end

  end

  
   describe "CRUD" do
  
    it "should_visit the page" do

        lambda do

          visit "/signup"
          ###puts "PUTZ NEWTEST PUTZ-SIGNUP!!!!!!!!!!!!!"
        #save_and_open_page
        #   note:  is is better to use "visit" rather than get
        #get "/signup"
        # save and open page requires the launchy gem
        #save_and_open_page
        #fill_in('user_username', :with => @user[:name])
        #fill_in('user_email', :with => @user[:email])
        #fill_in('user_password', :with => @user[:password])
        #fill_in('user_password_confirmation', :with => @user[:password])
        #click_button "Create User"

        # verifications for the test
        #response.status.should be(200)
        #page.has_text?('First login to view this page')
        visit "/logout"
    end
  end

 end


describe "sign upXXXXX" do

    it "should create a new user" do
      lambda do
     

        visit "/signup"
        ###puts "(xxxxxxxx) PUTZ NOT ABOUT TO ENTER DEBUGGER PUTZ"
        #debugger
        #save_and_open_page
        #   note:  is is better to use "visit" rather than get
        #get "/signup"
         #save_and_open_page #requires the launchy gem
        
        fill_in('user_username', :with => @user[:name])
        fill_in('user_email', :with => @user[:email])
        fill_in('user_password', :with => @user[:password])
        fill_in('user_password_confirmation', :with => @user[:password])
        click_button "Create User"

        # verifications for the test
        #response.status.should be(200)
        page.has_text?('First login to view this page')




        visit "/login"
        #save_and_open_page
        ###puts "(AAAAAAAAA) PUTZ ABOUT TO ENTER LOGIN DEBUGGER PUTZ"
        #debugger
        #save_and_open_page
        #   note:  is is better to use "visit" rather than get
        #get "/signup"
         #save_and_open_page #requires the launchy gem
         #visit "/login"
         fill_in('email', :with => @user[:email])
         fill_in('password', :with => @user[:password])
         #save_and_open_page
         click_button "Log in"
         #save_and_open_page
         click_on "Log out"
         
         #save_and_open_page
        #fill_in('user_username', :with => @user[:name])
        #fill_in('user_email', :with => @user[:email])
        #fill_in('user_password', :with => @user[:password])
        #fill_in('user_password_confirmation', :with => @user[:password])
        #click_button "Create User"

        # verifications for the test
        #response.status.should be(200)
        #page.has_text?('First login to view this page')
        #save_and_open_page
      end    ######.should change(User, :count)
      
    end
  end






describe "sign upAAAAAAAAAAA" do

    it "should create a new user" do
      lambda do
     

        visit "/signup"
        ###puts "(BBBBBBBBBB) PUTZ NOT ABOUT TO ENTER DEBUGGER PUTZ"
        #debugger
        #save_and_open_page
        #   note:  is is better to use "visit" rather than get
        #get "/signup"
         #save_and_open_page #requires the launchy gem
        
        fill_in('user_username', :with => @user[:name])
        fill_in('user_email', :with => @user[:email])
        fill_in('user_password', :with => @user[:password])
        fill_in('user_password_confirmation', :with => @user[:password])
        click_button "Create User"

        # verifications for the test
        #response.status.should be(200)
        page.has_text?('First login to view this page')




        visit "/login"
        #save_and_open_page
        ###puts "(AAAAAAAAA) PUTZ ABOUT TO ENTER LOGIN DEBUGGER PUTZ"
        #debugger
        #save_and_open_page
        #   note:  is is better to use "visit" rather than get
        #get "/signup"
         #save_and_open_page #requires the launchy gem
         #visit "/login"
         fill_in('email', :with => @user[:email])
         fill_in('password', :with => @user[:password])
         #save_and_open_page
         click_button "Log in"
         #save_and_open_page
         click_on "Log out"
         
         #save_and_open_page
        #fill_in('user_username', :with => @user[:name])
        #fill_in('user_email', :with => @user[:email])
        #fill_in('user_password', :with => @user[:password])
        #fill_in('user_password_confirmation', :with => @user[:password])
        #click_button "Create User"

        # verifications for the test
        #response.status.should be(200)
        #page.has_text?('First login to view this page')
        #save_and_open_page
      end.should change(User, :count)
      
    end
  end





  describe "sign upBBBBB" do

    it "should create a new user" do
      lambda do
         
        visit "/signup"
        ###puts "(BBBBBBBBBB22222222222) PUTZ NOT ABOUT TO ENTER DEBUGGER PUTZ"
        #debugger
        #save_and_open_page
        #   note:  is is better to use "visit" rather than get
        #get "/signup"
         #save_and_open_page #requires the launchy gem
        
        fill_in('user_username', :with => @user[:name])
        fill_in('user_email', :with => @user[:email])
        fill_in('user_password', :with => @user[:password])
        fill_in('user_password_confirmation', :with => @user[:password])
        click_button "Create User"

        # verifications for the test
        #response.status.should be(200)
        page.has_text?('First login to view this page')
        #save_and_open_page
      end.should change(User, :count)
      visit '/logout'
    end
  end
##debugger






  describe "negative sign up cases" do
    it "should not create a new user if passwords don't match" do
      lambda do
         #save_and_open_pages
        visit "/signup"
        
        
        fill_in('user_username', :with => @user[:name])
        fill_in('user_email', :with => @user[:email])
        fill_in('user_password', :with => @user[:password])
        fill_in('user_password_confirmation', :with => "blahblah")
        click_button "Create User"

        # verifications for the test
        page.has_text?('Form is invalid')
        #expect {User.count}.to change { count }.by(1)
      end.should_not change(User, :count)
    end
  end

     

  describe "navigate around" do





    before(:each) do
#########STILL NEED TO SIGN UP AGAIN TO ADD DATA #################################
        visit "/signup"
        ###puts "(BBBBBBBBBB) PUTZ NOT ABOUT TO ENTER DEBUGGER PUTZ"
        #debugger
        #save_and_open_page
        #   note:  is is better to use "visit" rather than get
        #get "/signup"
         #save_and_open_page #requires the launchy gem
        
        fill_in('user_username', :with => @user[:name])
        fill_in('user_email', :with => @user[:email])
        fill_in('user_password', :with => @user[:password])
        fill_in('user_password_confirmation', :with => @user[:password])
        click_button "Create User"

        # verifications for the test
        #response.status.should be(200)
        page.has_text?('First login to view this page')
############NOW LOG IN TO THE PAGE ###############################
      visit "/login"
      fill_in('email', :with => @user[:email])
      fill_in('password', :with => @user[:password])
      click_button "Log in"
    end



   

# test plan

    describe "create new story" do
      it "should create a new story with only valid text fields" do
        lambda do
          #GNH#puts Priority.where(:name => 'Medium').first.id
          pp "Priority.all=#{Priority.all}"
          ###puts "PUTZ  XXXDEBUGXXXX STATEMENT IN CREATE STORY!!!"
          #find('.stories.container.button').find('New Story').click
          #page.all('a', :text => 'New Story').find.click 
          #page.all('a', :text => 'New Story').click_on 
          #find(:xpath, "/container/button/a['New Story']").click

          # this one MIGHT work, but the fillins afterwards don't
          #   find the items on the new story page
          #find(:xpath, "/html/body/a").click

          #find(:xpath, '/html/body/div/div/a').click
          #find(:xpath, "//a[contains(@href, 'New Story')]").first.click
          #find(:xpath, '//a[contains(text(), "New Story")]').click
          #all('a', :text => 'New Story')[0].click
          #all(:xpath, '//button[@id="btn"]')[0].click
          #find(:xpath, "//a[contains(text(), 'New Story')]")[0].click
          #find (:xpath, "id('container')/x:div[1]/x:a" )
          #find(:css, "#container .button a").click
          #find(:xpath, "//a[text()='New Story']").click
          #find(:xpath, "//*[@href='New Story']").click
          #find(:xpath, "//div[1]/div[2]/a").click
          #find(page.all('a', :text => 'New Story').first).click 
          #puts page.all('a', :text => 'New Story').inspect
          #debugger
          #save_and_open_page
          #GNH# find(:xpath, '//a[contains(text(), "New Story")]').click ### TWO MATCHES
         #GNH#click_link("New Story", exact: false) # matched two elements
         #GNH#click_link("New Story", :first)  ### AMBIGUOUS MATCH TWO ELEMENTS
         first(:link, "New Story").click  # This causes a new error!!

          ###############################

          ##############################
          ###puts "Story.all #{Story.all}"
          fill_in('story_tag_list', :with => @new_story[:tags])
          fill_in('story_as_a', :with => @new_story[:as_a])
          fill_in('story_i_want_to', :with => @new_story[:i_want_to])
          fill_in('story_so_that', :with => @new_story[:so_that])
          fill_in('story_notes', :with => @new_story[:notes])
          click_button "Create Story"
          first(:link, "Back to All Stories").click
          #save_and_open_page
          #####  UNIQUE DUPLICATE STORY #######
          ###puts "Story.count#{Story.count}"
          first(:link, "New Story").click  # This causes a new error!!
          fill_in('story_tag_list', :with => @new_storyB[:tags])
          fill_in('story_as_a', :with => @new_storyB[:as_a])
          fill_in('story_i_want_to', :with => @new_storyB[:i_want_to])
          fill_in('story_so_that', :with => @new_storyB[:so_that])
          fill_in('story_notes', :with => @new_storyB[:notes])
          click_button "Create Story"
          first(:link, "Back to All Stories").click

          ###puts "After ====Story.count#{Story.count}"
          ###puts "After ====Story.all #{Story.all}"
          ###puts page.body
          #debugger
          #save_and_open_page
          visit("/stories")
           ####TOITALGARBAGE
          save_and_open_page
          ###puts("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX")
          ###puts page.body
          ###puts("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX")
          ######################################
        end.should change(Story, :count).by(2)
        #change{Counter.count}.by(2)

      end
    end

    describe "edit one field immediately after creating a story   " do
    end

    describe "edit a single story, having accessed the story from the All Stories list   " do
    end

    describe "edit multiple, get to page  " do
    end

    describe "edit multiple, change one field  " do
    end

    describe "click on a tag, view    " do
    end

    describe "tagged subset, edit multiple, view   " do
    end

    describe "tagged subset, edit multiple, edit   " do
    end

    describe "destroy story" do
    end

  end

end
