class Neutral < ActiveRecord::Base

  belongs_to :school

  scope :find_neutrals,      lambda{|id| where("school_id = ?", id).includes("school")}

end
