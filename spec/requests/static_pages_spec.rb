require 'spec_helper'

describe "Static Pages" do

  describe "Home Page" do

    it "has the title 'Wendy Ziecheck, M.D. | Internal Medicine'" do
      visit root_path
      expect(page).to have_title('Wendy Ziecheck, M.D. | Internal Medicine')
    end
    it "has the content 'Wendy Ziecheck, M.D.'" do
      visit root_path
      expect(page).to have_css('h1', text: 'Wendy Ziecheck, M.D.')
    end

  end

  describe "About Page" do

    it "has the title 'Wendy Ziecheck, M.D. | About'" do
      visit about_path
      expect(page).to have_title('Wendy Ziecheck, M.D. | About')
    end
    it "has the content 'About'" do
      visit about_path
      expect(page).to have_css('h1', text: 'About')
    end

  end

  describe "Contact Page" do

    it "has the title 'Wendy Ziecheck, M.D. | Contact'" do
      visit contact_path
      expect(page).to have_title('Wendy Ziecheck, M.D. | Contact')
    end
    it "has the content 'Contact'" do
      visit contact_path
      expect(page).to have_css('h1', text: 'Contact')
    end

  end

end
