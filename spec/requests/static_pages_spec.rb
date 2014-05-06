require 'spec_helper'

describe "Static Pages" do

  describe "Home (Root) Page" do

    before(:each) { visit root_path }

    it "has the title 'Wendy S. Ziecheck, M.D. | Internal Medicine'" do
      expect(page).to have_title('Wendy S. Ziecheck, M.D. | Internal Medicine')
    end
    it "has the content 'Wendy S. Ziecheck, M.D.'" do
      expect(page).to have_css('h2', text: 'Wendy S. Ziecheck, M.D.')
    end
    it "has the content 'Internal Medicine'" do
      expect(page).to have_css('h1', text: 'Internal Medicine')
    end
    it "has the content '110 East 55th St, 9th Floor, New York, NY 10022'" do
      expect(page).to have_css('h3', text: '110 East 55th St, 9th Floor, New York, NY 10022')
    end
    it "has the content 'Ability, Affability, Accessibility'" do
      expect(page).to have_css('h3', text: 'Ability, Affability, Accessibility')
    end

    describe "Hyperlink" do
      
      it "has the link to enter the website" do
        find_link('Enter').visible?
      end
      it "links to the Main page" do
        click_link "Enter"
        expect(page).to have_css('h1', text: 'Philosophy')
      end

    end

  end

  describe "Main Page" do

    before(:each) { visit main_path }

    it "has the title 'Wendy S. Ziecheck, M.D. | Main'" do
      expect(page).to have_title('Wendy S. Ziecheck, M.D. | Main')
    end
    it "has the content 'Philosophy'" do
      expect(page).to have_css('h1', text: 'Philosophy')
    end
    it "has the link to the About page" do
      find_link('About').visible?
    end
    it "has the link to the Contact page" do
      click_link "Contact"
      expect(page).to have_css('h1', text: 'Contact')
    end

  end

  describe "About Page" do

    before(:each) { visit about_path }

    it "has the title 'Wendy S. Ziecheck, M.D. | About'" do
      expect(page).to have_title('Wendy S. Ziecheck, M.D. | About')
    end
    it "has the content 'About'" do
      expect(page).to have_css('h1', text: 'About')
    end

  end

  describe "Contact Page" do

    before(:each) { visit contact_path }

    it "has the title 'Wendy S. Ziecheck, M.D. | Contact'" do
      expect(page).to have_title('Wendy S. Ziecheck, M.D. | Contact')
    end
    it "has the content 'Contact'" do
      expect(page).to have_css('h1', text: 'Contact')
    end

  end

end
