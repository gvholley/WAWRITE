class CreateProductReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :product_reviews do |t|
      t.string :content
      t.integer :rating
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
