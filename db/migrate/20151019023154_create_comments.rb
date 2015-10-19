class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :body
      t.string :author
      t.references :workout, index: true

      t.timestamps null: false
    end
    add_foreign_key :comments, :workouts
  end
end
