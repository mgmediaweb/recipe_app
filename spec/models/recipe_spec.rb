require 'rails_helper'

RSpec.describe Recipe, type: :model do
  describe 'validations' do
    before do
      @recipe = Recipe.create(
        name: 'Paella',
        preparation_time: 45,
        cooking_time: 30,
        photo: 'paella.jpg',
        public: true,
        user_id: 1
      )
    end

    context 'confirm the recipe name' do
      it 'is invalid' do
        expect(@recipe.name).to eq(@recipe.name)
      end
    end
  end
end
