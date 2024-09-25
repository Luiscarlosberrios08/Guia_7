require 'rails_helper'

RSpec.feature "Users", type: :feature do
  scenario "User clicks back link" do
    visit estudiantes_path
    click_link "Back"
    expect(page).to have_content("Estudiantes") # Cambia "Estudiantes" por el título de tu página principal
  end
end
