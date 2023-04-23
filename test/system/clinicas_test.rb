require "application_system_test_case"

class ClinicasTest < ApplicationSystemTestCase
  setup do
    @clinica = clinicas(:one)
  end

  test "visiting the index" do
    visit clinicas_url
    assert_selector "h1", text: "Clinicas"
  end

  test "creating a Clinica" do
    visit clinicas_url
    click_on "New Clinica"

    fill_in "Endereco", with: @clinica.endereco
    fill_in "Estado", with: @clinica.estado
    fill_in "Logo", with: @clinica.logo
    fill_in "Nome", with: @clinica.nome
    fill_in "Numero", with: @clinica.numero
    click_on "Create Clinica"

    assert_text "Clinica was successfully created"
    click_on "Back"
  end

  test "updating a Clinica" do
    visit clinicas_url
    click_on "Edit", match: :first

    fill_in "Endereco", with: @clinica.endereco
    fill_in "Estado", with: @clinica.estado
    fill_in "Logo", with: @clinica.logo
    fill_in "Nome", with: @clinica.nome
    fill_in "Numero", with: @clinica.numero
    click_on "Update Clinica"

    assert_text "Clinica was successfully updated"
    click_on "Back"
  end

  test "destroying a Clinica" do
    visit clinicas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Clinica was successfully destroyed"
  end
end
