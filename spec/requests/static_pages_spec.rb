require 'spec_helper' 

describe "Static pages" do
   
    describe "Home page" do
        it "should have the title 'Home'" do 
          visit root_path
          page.should have_title("Home")
        end 
    end
    
    describe "Help page" do
        it "should have the title 'Help '" do 
          visit help_path
          page.should have_title('Help')
        end 
    end   
    
    describe "About page" do
        it "should have the h1 'About Us'" do 
          visit about_path
          page.should have_selector('h1', :text => 'About Us')
        end 
    end   
    
    describe "Contacts Page" do
       it "should have the title 'Contact'" do
         visit contact_path
         page.should have_title('Contact')
       end
    end
end
