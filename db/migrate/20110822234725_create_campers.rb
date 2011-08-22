class CreateCampers < ActiveRecord::Migration
  def change
    create_table :campers do |t|
      t.string :name
      t.text :bio
      t.integer :year
      t.integer :course_id
      t.integer :twitter_id
      t.string :twitter_token
      t.string :twitter_secret
      t.string :file
      t.integer :invited_by

      t.timestamps
    end
  end
end
