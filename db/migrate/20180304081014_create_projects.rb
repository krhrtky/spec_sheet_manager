class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.integer :user_id
      t.text :about
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
