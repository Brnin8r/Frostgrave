class Opposed < ActiveRecord::Base

  belongs_to :school

  scope :find_opposed,      lambda{|id| where("school_id = ?", id).includes("school")}

end
