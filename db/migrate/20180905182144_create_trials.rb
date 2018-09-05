class CreateTrials < ActiveRecord::Migration[5.2]
  def change
    create_table :trials do |t|
      t.string :name
      t.isActive :boolean
      t.belongs_to :clients, foreign_key: true, index: true
      t.has_many :items

      t.timestamps
    end
  end
end
