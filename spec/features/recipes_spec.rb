require 'rails_helper'

RSpec.describe 'Testing Recipes:', type: :feature do
  before do
    @user = User.create(
      name: 'Tester',
      email: 'test@gmail.com',
      password: '123456',
      confirmation_token: 'rxzG-sGyFUFKM5tMqKLf'
    )

    visit new_user_session_path
    fill_in 'user_email', with: @user.email
    fill_in 'user_password', with: @user.password
    click_button('Log in')

    @recipe = Recipe.create(
      name: 'Paella',
      preparation_time: 45,
      cooking_time: 30,
      photo: 'paella.jpg',
      public: true,
      user_id: @user.id
    )

    visit root_path
  end

  it 'Show a created recipe' do
    expect(page).to have_content(@recipe.name)
  end
end
