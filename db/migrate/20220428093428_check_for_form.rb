class CheckForForm < ActiveRecord::Migration[6.0]
  def change
    add_column :articles, :check, :string
  end
end
