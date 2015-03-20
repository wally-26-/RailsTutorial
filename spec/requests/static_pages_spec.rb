require 'spec_helper' 

describe "Static pages" do
   
    describe "Home page" do
        it "should have the title 'Home'" do 
          visit '/static_pages/home'
          page.should have_title("Home")
        end 
    end
    
    describe "Help page" do
        it "should have the title 'Help '" do 
          visit '/static_pages/help'
          page.should have_title('Help')
        end 
    end   
    
    describe "About page" do
        it "should have the h1 'About Us'" do 
          visit '/static_pages/about'
          page.should have_selector('h1', :text => 'About Us')
        end 
    end   
    
    describe "Contacts Page" do
       it "should have the title 'Contacts'" do
         visit '/static_pages/contacts'
         page.should have_title('Contacts')
       end
    end
end
