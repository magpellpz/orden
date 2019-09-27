require "application_system_test_case"

class ClientesTest < ApplicationSystemTestCase
  setup do
    @cliente = clientes(:one)
  end

  test "visiting the index" do
    visit clientes_url
    assert_selector "h1", text: "Clientes"
  end

  test "creating a Cliente" do
    visit clientes_url
    click_on "New Cliente"

    check "Activo" if @cliente.activo
    fill_in "Apellido m", with: @cliente.apellido_m
    fill_in "Apellido p", with: @cliente.apellido_p
    fill_in "Direccion", with: @cliente.direccion
    fill_in "Nombre", with: @cliente.nombre
    fill_in "Telefono", with: @cliente.telefono
    click_on "Create Cliente"

    assert_text "Cliente was successfully created"
    click_on "Back"
  end

  test "updating a Cliente" do
    visit clientes_url
    click_on "Edit", match: :first

    check "Activo" if @cliente.activo
    fill_in "Apellido m", with: @cliente.apellido_m
    fill_in "Apellido p", with: @cliente.apellido_p
    fill_in "Direccion", with: @cliente.direccion
    fill_in "Nombre", with: @cliente.nombre
    fill_in "Telefono", with: @cliente.telefono
    click_on "Update Cliente"

    assert_text "Cliente was successfully updated"
    click_on "Back"
  end

  test "destroying a Cliente" do
    visit clientes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cliente was successfully destroyed"
  end
end
