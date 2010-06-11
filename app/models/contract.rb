class Contract < ActiveRecord::Base
  belongs_to :entity
  has_many :roles
  has_many :payees, :through => :roles
  has_many :pending_hours, :through => :roles

  def self.choices_for_select
    all.map {|c| [c.name, c.id]}
  end

  def name
    "#{self.entity_name} - #{self.start_date}"
  end

  def entity_name
    self.entity ? self.entity.name : self.entity_id.inspect
  end
end
