class CreateShifts < ActiveRecord::Migration[6.0]
  def change
    create_table :shifts do |t|
      t.text :shift
      t.integer :month_id
      t.timestamps
    end
  end
end
