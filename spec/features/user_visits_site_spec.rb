require 'rails_helper'

RSpec.describe "When a user visits our site", type: :feature do
  it "should allow user to create accounts" do
    visit '/'
    click_on 'Register'

    expect(current_path).to eq(new_user_path)

    fill_in "Name", with: "Earl Stephens"
    fill_in "Email", with: "Earl.Stephens@email.com"
    fill_in "Password", with: "password"

    click_on 'Create User'

    expect(current_path).to eq(root_path)

    last_user = User.last
    expect(last_user.name).to eq("Earl Stephens")
    expect(last_user.email).to eq("Earl.Stephens@email.com")
    expect(last_user.password).to eq("password")
  end

  it "should allow user to login" do
    visit root_path
    click_on 'Login'

  end
end
