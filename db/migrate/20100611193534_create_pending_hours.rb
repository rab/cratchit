class CreatePendingHours < ActiveRecord::Migration
  def self.up
    create_table :pending_hours do |t|
      t.belongs_to :role
      t.date       :start_date
      t.date       :end_date
      t.decimal    :hours, :precision => 6, :scale => 2

      t.timestamps
    end
    add_index :pending_hours, :role_id
  end

  def self.down
    drop_table :pending_hours
  end
end
