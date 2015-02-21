class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.references :beer, index: true
      t.references :user, index: true

      t.timestamps null: false
    end
    # add_foreign_key :favorites, :beers
    # add_foreign_key :favorites, :users
  end
end
