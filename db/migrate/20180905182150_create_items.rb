class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.belongs_to :trial, index: true

      t.timestamps
    end
     add_index :trials, [:trial_id, :created_at]
  end
end
