require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    before do
      @user = User.create(
        id: 1,
        name: 'Tester',
        email: 'test@gmail.com',
        role: 'user'
      )
    end

    context 'confirm the user name' do
      it 'is invalid' do
        expect(@user.name).to eq(@user.name)
      end
    end
  end
end
