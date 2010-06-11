class CreatePayees < ActiveRecord::Migration
  def self.up
    create_table :payees do |t|
      t.string :name
      t.string :tax_id_number
      t.string :address
      t.string :city
      t.string :state
      t.string :zip

      t.timestamps
    end
  end

  def self.down
    drop_table :payees
  end
end
