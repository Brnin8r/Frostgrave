class School < ActiveRecord::Base

has_many :characters
has_many :spells
has_many :allieds
has_many :neutrals
has_one :opposed
has_many :allied_school, :class_name => "Allied"

def allied_schools
  school = School.find(self.id).allieds
  results = []
  school.each do |s|
    results << School.find(s.allied_school_id)
  end
  results
end

def opposed_schools
  return School.find((School.find(self.id).opposed).opposed_school_id)
end

def neutral_schools
  school = School.find(self.id).neutrals
  results = []
  school.each do |s|
    results << School.find(s.neutral_school_id)
  end
  results
end

end
