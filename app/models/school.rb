class School < ActiveRecord::Base

has_many :characters
has_many :spells
has_many :allieds
has_many :neutrals
has_many :opposeds
has_many :allied_school, :class_name => "Allied"

def allied
  # Look up all the allied schools in the allieds table
  school = School.find(self.id).allieds
  # Create an array called results
  results = []
  # For each record, look the allied school id up in the schools table
  school.each do |s|
    # Add the returned School result to the results array
    results << School.find(s.allied_school_id)
  end
  # Return the results
  results
end

def opposed
  results = School.find((School.find(self.id).opposeds).first.opposed_school_id)
  results
end

def neutral
  school = School.find(self.id).neutrals
  results = []
  school.each do |s|
    results << School.find(s.neutral_school_id)
  end
  results
end

end
