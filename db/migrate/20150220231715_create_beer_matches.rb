class CreateBeerMatches < ActiveRecord::Migration
  def change
    create_table :beer_matches do |t|
      t.references :beer, index: true
      t.references :location, index: true

      t.timestamps null: false
    end
    add_foreign_key :beer_matches, :beers
    add_foreign_key :beer_matches, :locations
  end
end
