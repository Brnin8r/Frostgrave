class School < ActiveRecord::Base

has_many :characters
has_many :spells
has_many :allieds
has_many :neutrals
has_one :opposed

end
