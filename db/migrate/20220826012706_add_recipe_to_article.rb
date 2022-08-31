class AddRecipeToArticle < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :recipe, :string
  end
end
