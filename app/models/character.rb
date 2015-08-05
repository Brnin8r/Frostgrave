class Character < ActiveRecord::Base
belongs_to :character_type
belongs_to :school
has_many :moves
has_many :items
has_one :apprentice


scope :wizards, lambda{|type| where("character_type_id = ?", type)}
scope :test, lambda{where("character_type_id = ?", CharacterType.wizard)}
end
