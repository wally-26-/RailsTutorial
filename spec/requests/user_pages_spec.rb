require 'rails_helper'

describe "Users pages" do
  
    subject { page } 
    
    describe "Sign Up page" do
       before { visit signup_path }
       it { should have_selector('h1', text: 'Sign Up') } 
       it { should have_title(full_title('Sign Up')) } 
    end
end
  