require 'spec_helper'

describe "Static pages" do

  describe "Home page" do
    it "Dovrebbe avere il contenuto 'Sample App'" do      
      #get static_pages_index_path
      visit '/static_pages/home'
      page.should have_content('Sample App')
      #response.status.should be(200)
    end
  end

  describe "Help page" do
    it "Dovrebbe avere il contenuto 'Help Me!'" do      
      #get static_pages_index_path
      visit '/static_pages/help'
      page.should have_content('Help Me!')
      #response.status.should be(200)
    end
  end

  describe "About Ud page" do
    it "Dovrebbe avere il contenuto 'About Us'" do      
      #get static_pages_index_path
      visit '/static_pages/about'
      page.should have_content('About Us')
      #response.status.should be(200)
    end
  end

end
