class CreateTours < ActiveRecord::Migration[6.0]
  def change
    create_table :tours do |t|
      t.string :name
      t.integer :country_id
      t.string :url
      t.string :acronym

      t.timestamps
    end
  end
end
