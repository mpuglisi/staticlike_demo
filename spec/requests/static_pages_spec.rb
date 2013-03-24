require 'spec_helper'

describe "Static pages" do

let(:titolo_base) {"Ruby on Rails Static Appl"}

  describe "Home page" do
    it "Dovrebbe avere il contenuto 'Sample App'" do      
      #get static_pages_index_path
      visit '/static_pages/home'
      #page.should have_content('Sample App')
      page.should have_selector('h1',:text=>'Sample App')
      #response.status.should be(200)
    end

    it "Dovrebbe avere il titolo corretto" do
      visit '/static_pages/home'
      page.should have_selector('title',:text=> "#{titolo_base} | Home")
    end
  end

  describe "Help page" do
    it "Dovrebbe avere il contenuto 'Help Me!'" do      
      #get static_pages_index_path
      visit '/static_pages/help'
      page.should have_selector('h1',:text=>'Help Me!')
      #response.status.should be(200)
    end

    it "Dovrebbe avere il titolo corretto" do
      visit '/static_pages/help'
      page.should have_selector('title',:text=> "#{titolo_base} | Help")
    end
  end

  describe "About Us page" do
    it "Dovrebbe avere il contenuto 'About Us'" do      
      #get static_pages_index_path
      visit '/static_pages/about'
      page.should have_selector('h1',:text=>'About Us')
      #response.status.should be(200)
    end

    it "Dovrebbe avere il titolo corretto" do
      visit '/static_pages/about'
      page.should have_selector('title',:text=> "#{titolo_base} | About")
    end
  end

describe "Contact Us page" do
    it "Dovrebbe avere il contenuto 'Contact Us'" do      
      #get static_pages_index_path
      visit '/static_pages/contact'
      page.should have_selector('h1',:text=>'Contact Us')
      #response.status.should be(200)
    end

    it "Dovrebbe avere il titolo corretto" do
      visit '/static_pages/contact'
      page.should have_selector('title',:text=> "#{titolo_base} | Contact Us")
    end
  end

end
