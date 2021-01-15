class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author_name
      t.integer :num_of_pages
      t.references :user, foreign_key: { on_delete: :cascade }
      t.timestamps
    end
  end
end
