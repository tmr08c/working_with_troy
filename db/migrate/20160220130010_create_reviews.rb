class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :body
      t.string :name
      t.string :relationship

      t.timestamps null: false
    end
  end
end
