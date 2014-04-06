#encoding: utf-8

require 'spec_helper'

describe "Landings" do
  describe "GET /landing_pages" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get landing_pages_home_path
      response.status.should be(200)
    end
  end

  describe "home page" do
    it "should have the right title" do
      visit '/landing_pages/home'
      expect(page).to have_title("Martínez coder | Home")
    end
    it "should have the content martinezcoder" do
      visit "/landing_pages/home/"
      expect(page).to have_content('martinezcoder')
    end
  end

end
