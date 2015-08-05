class CharacterType < ActiveRecord::Base
has_many :characters
scope :wizard, lambda{where("name = ?", "wizard")}
end
