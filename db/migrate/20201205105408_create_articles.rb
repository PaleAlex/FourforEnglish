class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :name, :subject, :email
      t.text :message
      t.timestamps

    end
  end
end
