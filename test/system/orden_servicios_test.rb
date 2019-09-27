require "application_system_test_case"

class OrdenServiciosTest < ApplicationSystemTestCase
  setup do
    @orden_servicio = orden_servicios(:one)
  end

  test "visiting the index" do
    visit orden_servicios_url
    assert_selector "h1", text: "Orden Servicios"
  end

  test "creating a Orden servicio" do
    visit orden_servicios_url
    click_on "New Orden Servicio"

    fill_in "Cliente", with: @orden_servicio.cliente_id
    fill_in "Equipo", with: @orden_servicio.equipo_id
    fill_in "Servicio", with: @orden_servicio.servicio_id
    fill_in "User", with: @orden_servicio.user_id
    click_on "Create Orden servicio"

    assert_text "Orden servicio was successfully created"
    click_on "Back"
  end

  test "updating a Orden servicio" do
    visit orden_servicios_url
    click_on "Edit", match: :first

    fill_in "Cliente", with: @orden_servicio.cliente_id
    fill_in "Equipo", with: @orden_servicio.equipo_id
    fill_in "Servicio", with: @orden_servicio.servicio_id
    fill_in "User", with: @orden_servicio.user_id
    click_on "Update Orden servicio"

    assert_text "Orden servicio was successfully updated"
    click_on "Back"
  end

  test "destroying a Orden servicio" do
    visit orden_servicios_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Orden servicio was successfully destroyed"
  end
end
