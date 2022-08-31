class AddDateToPages < ActiveRecord::Migration[5.2]
  def change
    add_column :pages, :date, :string
  end
end
