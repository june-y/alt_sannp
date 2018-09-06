class CreateTrials < ActiveRecord::Migration[5.2]
  def change
    create_table :trials do |t|
      t.string :name
      t.boolean :isActive
      t.belongs_to :client, index: true


      t.timestamps
    end
    add_index :clients, [:client_id, :created_at]
  end
end
