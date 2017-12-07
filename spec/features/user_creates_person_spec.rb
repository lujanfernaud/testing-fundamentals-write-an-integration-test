require "rails_helper"

feature "user creates person" do
  scenario "with valid data" do
    visit new_person_path

    fill_in "First name", with: "Dong"

    click_on "Create Person"

    expect(page).to have_content("Person created")
  end

  scenario "with invalid data" do
    visit new_person_path

    fill_in "First name", with: ""

    click_on "Create Person"

    expect(page).to have_content("First name can't be blank")
  end
end
