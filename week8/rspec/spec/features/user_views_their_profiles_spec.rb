require 'rails_helper'

Rspec.feature "UserViewsTheirProfiles", type: :feature do
	pending "add some scenarios (or delete) ${_FILE_}"
end

RSpec.feature "A user views their profile", type: :feature do
	let!(:user) do
		User.create(
			name: "Rube Goldberg",
			email: "machine@example.com",
			code_school: Codeschool.create(name: 'Wyncode')
		)
	end


	it "displays their name" do
		visit user_path(user)
		expect(page).to have_content user.name
		end
	end
end
