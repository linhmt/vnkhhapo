require 'spec_helper'

describe "Static pages" do
  subject { page }
  
  describe "Home page" do
    before {visit root_path}  
    
    it { should have_selector('h1', text: 'VNKHHAPO Flight Management') }    
    it { should have_selector('title',
    :text => full_title('')) }
  end
  
  describe "Help page" do
    before { visit help_path }
    
    it { should have_selector('h1',    text: 'Help') }
    it { should have_selector('title', text: full_title('Help')) }
  end
  
  describe "About page" do
    
    it "should have the content 'About Us'" do
      visit about_path
      page.should have_content('About Us')
    end
  end
end