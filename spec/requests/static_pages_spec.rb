require 'spec_helper'

describe "StaticPages" do
	subject { page }

	describe "Home page" do
		
		before { visit root_path }

		it { should have_content('Tinder Stories') }
		it { should have_title("Tinder Stories") }
		it { should_not have_title('| Home') }
	end

	describe "Contact page" do
		before { visit contact_path }

		it { should have_content('Contact') }
		it { should have_title("Tinder Stories | Contact") }
	end

	describe "About page" do
		before { visit about_path }

		it { should have_content('About Tinder Stories') }
		it { should have_title("Tinder Stories | About Us") }
	end
end
