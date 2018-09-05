class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :primary_pm
      t.string :address
      t.has_many :trials

      t.timestamps
    end
  end
end
