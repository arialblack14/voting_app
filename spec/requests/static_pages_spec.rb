require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do
    it "should have the content 'Voting App'" do
     
      visit '/static_pages/home'
      expect(page).to have_content('Voting App')
    end

    it "should have the title 'Home'" do
     
      visit '/static_pages/home'
      expect(page).to have_title('Home')
    end
  end

  describe "Help page" do
    it "should have the content 'Need some help?'" do
     
      visit '/static_pages/help'
      expect(page).to have_content('Need some help?')
    end

    it "should have the title 'Help'" do
     
      visit '/static_pages/help'
      expect(page).to have_title('Help')
    end
  end

  describe 'About page' do
  	it "should have the content 'About us'" do

  		visit '/static_pages/about'
  		expect(page).to have_content('About us')
  	end

  	it "should have the title 'About'" do
     
      visit '/static_pages/about'
      expect(page).to have_title('About')
    end
	end
end
