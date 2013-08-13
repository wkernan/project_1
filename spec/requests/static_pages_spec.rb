require 'spec_helper'

describe "StaticPages" do

	describe "Home page" do

		it "should have the content 'Tinder Stories'" do
			visit '/static_pages/home'
			expect(page).to have_content('Tinder Stories')
		end

		it "should have the base title" do
			visit '/static_pages/home'
			expect(page).to have_title("Tinder Stories")
		end

		it "should not have a custom page title" do
			visit '/static_pages/home'
			expect(page).not_to have_title('| Home')
		end
	end

	describe "Contact page" do

		it "should have the content 'Contact'" do
			visit '/static_pages/contact'
			expect(page).to have_content('Contact')
		end

		it "should have title 'Contact'" do
			visit '/static_pages/contact'
			expect(page).to have_title("Tinder Stories | Contact")
		end
	end

	describe "About page" do

		it "should have the content 'About Tinder Stories'" do
			visit '/static_pages/about'
			expect(page).to have_content('About Tinder Stories')
		end

		it "should have title 'About'" do
			visit '/static_pages/about'
			expect(page).to have_title("Tinder Stories | About Us")
		end
	end
end
