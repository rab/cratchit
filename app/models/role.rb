class Role < ActiveRecord::Base
  belongs_to :contract
  belongs_to :payee
  has_many :pending_hours

  scope :doers, where(:kind => 'Doer')

  def self.choices_for_select
    all.map {|r| [r.name, r.id]}
  end

  def self.choices_for_select_doer
    doers.map {|r| [r.name, r.id]}
  end

  def self.kind_choices
    %w[ Doer Owner Finder ]
  end

  def to_s
    "#{self.payee_name} #{self.kind} on #{self.contract_name}"
  end
  alias_method :name, :to_s

  def payee_name
    self.payee ? self.payee.name : self.payee_id.inspect
  end

  def contract_name
    self.contract ? self.contract.name : self.contract_id.inspect
  end

end
