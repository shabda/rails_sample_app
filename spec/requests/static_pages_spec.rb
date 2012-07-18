require 'spec_helper'


describe "Static pages" do
  before {visit root_path}
  describe "Home page" do

    it "should have the content 'Sample App'" do
      
      page.should have_content('Sample App')
    end
    
    it "should have the IE shim" do
      #page.should have_text('http://html5shim.googlecode.com/svn/trunk/html5.js')
    end
    
    it "should have right title" do
        page.should have_selector("title", :text =>"Ruby on Rails Tutorial Sample App")
    end
    
    it "should have right title" do
        page.should_not have_selector("title", :text =>"Home")
    end
    
  end
  
  describe "Help page" do
    before {visit help_path}
     it "should have the content 'Help'" do
       page.should have_content('Help')
     end
     
     it "should have title Help" do
      page.should have_selector("title", :text => "Help")
     end
   end

   describe "Contact page" do
      before {visit contact_path}
      it "should have the content 'Contact Us'" do
        page.should have_content('Contact Us')
      end

      it "should have contact email" do
       page.should have_selector("p", :text => "hello@agiliq.com")
      end
    end


   describe "About page" do
     before {visit about_path}
     it "should have the content 'About Us'" do
       page.should have_content('About Us')
     end
     it "should have title About" do
       page.should have_selector("title", :text => "About")
     end
     
   end
   
   
end