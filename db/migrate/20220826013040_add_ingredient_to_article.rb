class AddIngredientToArticle < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :ingredient, :string
  end
end
