class AddCategoryToArticle < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :category, :string
  end
end
