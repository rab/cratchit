class CreateRoles < ActiveRecord::Migration
  def self.up
    create_table :roles do |t|
      t.belongs_to :contract
      t.belongs_to :payee
      t.string     :kind
      t.date       :start_date
      t.date       :end_date
      t.decimal    :hourly_rate,      :precision => 6, :scale => 2
      t.decimal    :total_hours_rate, :precision => 6, :scale => 2

      t.timestamps
    end
    add_index :roles, :contract_id
    add_index :roles, :payee_id

  end

  def self.down
    drop_table :roles
  end
end
