require "application_system_test_case"

class EquiposTest < ApplicationSystemTestCase
  setup do
    @equipo = equipos(:one)
  end

  test "visiting the index" do
    visit equipos_url
    assert_selector "h1", text: "Equipos"
  end

  test "creating a Equipo" do
    visit equipos_url
    click_on "New Equipo"

    fill_in "Marca", with: @equipo.marca_id
    fill_in "Modelo", with: @equipo.modelo_id
    fill_in "N serie", with: @equipo.n_serie
    fill_in "Tipo equipo", with: @equipo.tipo_equipo_id
    click_on "Create Equipo"

    assert_text "Equipo was successfully created"
    click_on "Back"
  end

  test "updating a Equipo" do
    visit equipos_url
    click_on "Edit", match: :first

    fill_in "Marca", with: @equipo.marca_id
    fill_in "Modelo", with: @equipo.modelo_id
    fill_in "N serie", with: @equipo.n_serie
    fill_in "Tipo equipo", with: @equipo.tipo_equipo_id
    click_on "Update Equipo"

    assert_text "Equipo was successfully updated"
    click_on "Back"
  end

  test "destroying a Equipo" do
    visit equipos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Equipo was successfully destroyed"
  end
end
