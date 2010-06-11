class Payee < ActiveRecord::Base
  has_many :roles

  def self.choices_for_select
    all.map {|p| [p.name, p.id]}
  end

end
