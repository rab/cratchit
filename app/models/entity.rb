class Entity < ActiveRecord::Base
  has_many :contracts

  def self.choices_for_select
    self.find(:all).map {|e| [e.name, e.id]}
  end

end
