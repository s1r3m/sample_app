require 'spec_helper'

describe "Static pages" do

    # Home page
    describe "Home page" do
        # <h1>
        it "should have the content 'Sample app'" do
            visit '/static_pages/home'
            page.should have_selector('h1', :text => "Sample App")
        end
        # right title
        it "should have the right title" do
            visit '/static_pages/home'
            page.should have_selector('title', :text => " | Home")
        end
    end

    # Help page
    describe "Help page" do
        it "should have the content 'Help'" do
            visit '/static_pages/help'
            page.should have_selector('h1', :text => "Help")
        end
         # right title
        it "should have the right title" do
            visit '/static_pages/help'
            page.should have_selector('title', :text => " | Help")
        end
    end
    
    # About page
    describe "About page" do
        it "should have content 'About Us'" do
            visit '/static_pages/about'
            page.should have_selector('h1', :text => "About Us")
        end
         # right title
        it "should have the right title" do
            visit '/static_pages/about'
            page.should have_selector('title', :text => " | About")
        end
    end
    
    # Contacts page
    describe "Contact page" do
        it "should have content 'Contacts'" do
            visit '/static_pages/contacts'
            page.should have_selector('h1', :text => "Contacts")
        end
        
        #right title
        it "should have the right title" do
            visit '/static_pages/contacts'
            page.should have_selector('title', :text => " | Contacts")
        end
    end
end
