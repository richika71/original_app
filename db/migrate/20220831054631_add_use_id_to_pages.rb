class AddUseIdToPages < ActiveRecord::Migration[5.2]
  def change
    add_column :pages, :user_id, :integer
  end
end
