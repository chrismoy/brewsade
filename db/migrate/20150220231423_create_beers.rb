class CreateBeers < ActiveRecord::Migration
  def change
    create_table :beers do |t|
      t.string :name
      t.string :label_url
      t.text :description
      t.string :beer_type
      t.string :brewery

      t.timestamps null: false
    end
  end
end
