class Character < ActiveRecord::Base
belongs_to :character_type
has_many :moves
scope :wizards, lambda{|type| where("character_type_id = ?", type)}
scope :test, lambda{where("character_type_id = ?", CharacterType.wizard)}
end
