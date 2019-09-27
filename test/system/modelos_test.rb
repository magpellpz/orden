require "application_system_test_case"

class ModelosTest < ApplicationSystemTestCase
  setup do
    @modelo = modelos(:one)
  end

  test "visiting the index" do
    visit modelos_url
    assert_selector "h1", text: "Modelos"
  end

  test "creating a Modelo" do
    visit modelos_url
    click_on "New Modelo"

    check "Activo" if @modelo.activo
    fill_in "Modelo", with: @modelo.modelo
    click_on "Create Modelo"

    assert_text "Modelo was successfully created"
    click_on "Back"
  end

  test "updating a Modelo" do
    visit modelos_url
    click_on "Edit", match: :first

    check "Activo" if @modelo.activo
    fill_in "Modelo", with: @modelo.modelo
    click_on "Update Modelo"

    assert_text "Modelo was successfully updated"
    click_on "Back"
  end

  test "destroying a Modelo" do
    visit modelos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Modelo was successfully destroyed"
  end
end
