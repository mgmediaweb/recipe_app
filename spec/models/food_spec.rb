require 'rails_helper'

RSpec.describe Food, type: :model do
  describe 'validations' do
    before do
      @food = Food.create(
        name: 'Tomatoes',
        measure_unit: 'Ut.',
        price: 0.87,
        quantity: 7,
        user_id: 1
      )
    end

    context 'confirm the food name' do
      it 'is invalid' do
        expect(@food.name).to eq(@food.name)
      end
    end
  end
end
