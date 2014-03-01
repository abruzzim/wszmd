require 'spec_helper'

describe "Static Pages" do

  describe "Home Page" do

    it "has the title 'Wendy S. Ziecheck, M.D. | Internal Medicine'" do
      visit root_path
      expect(page).to have_title('Wendy S. Ziecheck, M.D. | Internal Medicine')
    end
    it "has the content 'Wendy S. Ziecheck, M.D.'" do
      visit root_path
      expect(page).to have_css('h2', text: 'Wendy S. Ziecheck, M.D.')
    end
    it "has the content 'Internal Medicine'" do
      visit root_path
      expect(page).to have_css('h1', text: 'Internal Medicine')
    end
    it "has the content '110 East 55th St, 9th Floor, New York, NY 10022'" do
      visit root_path
      expect(page).to have_css('h3', text: '110 East 55th St, 9th Floor, New York, NY 10022')
    end
    it "has a hyperlink to enter the website" do
      click_link "Enter"
      expect(page).to have_css('h1', text: 'Main')
     end
    it "has the content 'Ability, Affability, Accessibility'" do
      visit root_path
      expect(page).to have_css('h3', text: 'Ability, Affability, Accessibility')
    end

  end

  describe "Main Page" do

    it "has the title 'Wendy S. Ziecheck, M.D. | Main'" do
      visit main_path
      expect(page).to have_title('Wendy S. Ziecheck, M.D. | Main')
    end
    it "has the content 'Main'" do
      visit main_path
      expect(page).to have_css('h1', text: 'Main')
    end

  end

  describe "About Page" do

    it "has the title 'Wendy S. Ziecheck, M.D. | About'" do
      visit about_path
      expect(page).to have_title('Wendy S. Ziecheck, M.D. | About')
    end
    it "has the content 'About'" do
      visit about_path
      expect(page).to have_css('h1', text: 'About')
    end

  end

  describe "Contact Page" do

    it "has the title 'Wendy S. Ziecheck, M.D. | Contact'" do
      visit contact_path
      expect(page).to have_title('Wendy S. Ziecheck, M.D. | Contact')
    end
    it "has the content 'Contact'" do
      visit contact_path
      expect(page).to have_css('h1', text: 'Contact')
    end

  end

end
