class CreateShifts < ActiveRecord::Migration[6.0]
  def change
    create_table :shifts do |t|
      t.text :shift
      t.integer :month_id
      t.integer :year_id
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
