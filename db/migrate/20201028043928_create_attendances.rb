class CreateAttendances < ActiveRecord::Migration[6.0]
  def change
    create_table :attendances do |t|
      t.datetime :date_attend
      t.integer :status, null: false, default: 0
      t.references :user
      t.timestamps
    end
  end
end
