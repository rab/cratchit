class CreateContracts < ActiveRecord::Migration
  def self.up
    create_table :contracts do |t|
      t.belongs_to :entity
      t.date       :start_date
      t.decimal    :hourly_rate,        :precision => 6, :scale => 2
      t.decimal    :weekly_hours_limit, :precision => 6, :scale => 2
      t.decimal    :total_hours_limit,  :precision => 6, :scale => 2
      t.integer    :terms

      t.timestamps
    end
    add_index :contracts, :entity_id

  end

  def self.down
    drop_table :contracts
  end
end
