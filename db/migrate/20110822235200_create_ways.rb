class CreateWays < ActiveRecord::Migration
  def change
    create_table :ways do |t|
      t.integer :camper_id
      t.integer :service_id
      t.string :val

      t.timestamps
    end
  end
end
