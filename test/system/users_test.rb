require "application_system_test_case"

class UsersTest < ApplicationSystemTestCase
  setup do
    @user = users(:one)
  end

  test "visiting the index" do
    visit users_url
    assert_selector "h1", text: "Users"
  end

  test "should create user" do
    visit users_url
    click_on "New user"

    fill_in "Address", with: @user.address
    fill_in "City", with: @user.city
    fill_in "Email2", with: @user.email2
    fill_in "Name", with: @user.name
    fill_in "Nif", with: @user.nif
    fill_in "Pc", with: @user.pc
    fill_in "Phone1", with: @user.phone1
    fill_in "Phone2", with: @user.phone2
    fill_in "Province", with: @user.province
    fill_in "Surname1", with: @user.surname1
    fill_in "Surname2", with: @user.surname2
    check "Suscriptor" if @user.suscriptor
    click_on "Create User"

    assert_text "User was successfully created"
    click_on "Back"
  end

  test "should update User" do
    visit user_url(@user)
    click_on "Edit this user", match: :first

    fill_in "Address", with: @user.address
    fill_in "City", with: @user.city
    fill_in "Email2", with: @user.email2
    fill_in "Name", with: @user.name
    fill_in "Nif", with: @user.nif
    fill_in "Pc", with: @user.pc
    fill_in "Phone1", with: @user.phone1
    fill_in "Phone2", with: @user.phone2
    fill_in "Province", with: @user.province
    fill_in "Surname1", with: @user.surname1
    fill_in "Surname2", with: @user.surname2
    check "Suscriptor" if @user.suscriptor
    click_on "Update User"

    assert_text "User was successfully updated"
    click_on "Back"
  end

  test "should destroy User" do
    visit user_url(@user)
    click_on "Destroy this user", match: :first

    assert_text "User was successfully destroyed"
  end
end
