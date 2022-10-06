require 'rails_helper'

RSpec.describe 'Testing Foods:', type: :feature do
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

    @food = Food.create(
      name: 'Tomatoes',
      measure_unit: 'ut.',
      price: 0.85,
      quantity: 8,
      user_id: @user.id
    )

    visit foods_path
  end

  it 'Show a created food' do
    expect(page).to have_content(@food.name)
  end
end
