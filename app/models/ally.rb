class Ally < ActiveRecord::Base

  belongs_to :school

  scope :find_allies,      lambda{|id| where("school_id = ?", id).includes("school")}

end
