class School < ActiveRecord::Base

has_many :characters
has_many :spells
has_many :allies, through: :ally_id, source: :school
has_many :neutrals
has_many :opposeds

def self.find_allies(id)
  allies = Ally.find_allies(id)
end

def self.find_opposed(id)
  opposed = Opposed.find_opposed(id)
end

def self.find_neutral
  neutrals = Neutral.find_neutrals(id)
end

end
