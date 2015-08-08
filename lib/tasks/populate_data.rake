namespace :populate_data do
  desc "TODO"
  task populate: :environment do

    # Set All Available Character Types
    charactertypes = ["Wizard","Apprentice","Soldier"]

    charactertypes.each do |type|
      CharacterType.create({name: type})
    end

    # Set All Available Schools
    school = ["Chronomancer","Elementalist","Enchanter","Illusionist","Necromancer","Sigilist","Soothsayer","Summoner","Thaumaturge","Witch"]

    school.each do |name|
      School.create({name: name})
    end
    
    # Chronomancer
    # Set allied and opposed schools
    allied = ["Elementalist","Necromancer","Soothsayer"]
    opposed = "Enchanter"

    # Get the IDs for the Current School and Opposed School
    curSchoolId = School.where(name: "Chronomancer").first.id
    add_to_database(allied,opposed,curSchoolId,school)

    # Elementalist
    # Set allied and opposed schools
    allied = ["Chronomancer","Enchanter","Summoner"]
    opposed = "Illusionist"

    # Get the IDs for the Current School and Opposed School
    curSchoolId = School.where(name: "Elementalist").first.id
    add_to_database(allied,opposed,curSchoolId,school)

    # Enchanter
    # Set allied and opposed schools
    allied = ["Elementalist","Sigilist","Witch"]
    opposed = "Chronomancer"

    # Get the IDs for the Current School and Opposed School
    curSchoolId = School.where(name: "Enchanter").first.id
    add_to_database(allied,opposed,curSchoolId,school)

    # Illusionist
    # Set allied and opposed schools
    allied = ["Sigilist","Soothsayer","Thaumaturge"]
    opposed = "Elementalist"

    # Get the IDs for the Current School and Opposed School
    curSchoolId = School.where(name: "Illusionist").first.id
    add_to_database(allied,opposed,curSchoolId,school)

    # Necromancer
    # Set allied and opposed schools
    allied = ["Chronomancer","Summoner","Witch"]
    opposed = "Thaumaturge"

    # Get the IDs for the Current School and Opposed School
    curSchoolId = School.where(name: "Necromancer").first.id
    add_to_database(allied,opposed,curSchoolId,school)

    # Sigilist
    # Set allied and opposed schools
    allied = ["Enchanter","Illusionist","Thaumaturge"]
    opposed = "Summoner"

    # Get the IDs for the Current School and Opposed School
    curSchoolId = School.where(name: "Sigilist").first.id
    add_to_database(allied,opposed,curSchoolId,school)

    # Soothsayer
    # Set allied and opposed schools
    allied = ["Chronomancer","Illusionist","Thaumaturge"]
    opposed = "Witch"

    # Get the IDs for the Current School and Opposed School
    curSchoolId = School.where(name: "Soothsayer").first.id
    add_to_database(allied,opposed,curSchoolId,school)

    # Summoner
    # Set allied and opposed schools
    allied = ["Elementalist","Necromancer","Witch"]
    opposed = "Sigilist"

    # Get the IDs for the Current School and Opposed School
    curSchoolId = School.where(name: "Summoner").first.id
    add_to_database(allied,opposed,curSchoolId,school)

    # Thaumaturge
    # Set allied and opposed schools
    allied = ["Illusionist","Sigilist","Soothsayer"]
    opposed = "Necromancer"

    # Get the IDs for the Current School and Opposed School
    curSchoolId = School.where(name: "Thaumaturge").first.id
    add_to_database(allied,opposed,curSchoolId,school)

    # Witch
    # Set allied and opposed schools
    allied = ["Enchanter","Necromancer","Summoner"]
    opposed = "Soothsayer"

    # Get the IDs for the Current School and Opposed School
    curSchoolId = School.where(name: "Witch").first.id
    add_to_database(allied,opposed,curSchoolId,school)

  end

  def add_to_database(allied,opposed,curSchoolId, school)
    opposedId = School.where(name: opposed).first.id

    # Add the allied schools listed above to the Ally table
    allied.each do |name|
      alliedId = School.where(name: name).first.id
      Ally.create({school_id: curSchoolId, ally_id: alliedId})
    end

    # Add the Opposed class listed above to the Opposed Table
    Opposed.create({school_id: curSchoolId, opposed_id: opposedId})

    # Go through all the schools and add the remaining to Neutral
    school.each do |name|
      neutralSchoolId = School.where(name: name).first.id # The Id of the school we are checking
      if neutralSchoolId != curSchoolId
        # Check if we already set this school in allied
        alliedId = Ally.where(school_id: curSchoolId, ally_id: neutralSchoolId).first
        # Check if we already set this school in opposed
        opposedId = Opposed.where(school_id: curSchoolId, opposed_id: neutralSchoolId).first
        # If the school is not in allied or opposed, add to neutral
        if alliedId.nil? && opposedId.nil?
          Neutral.create({school_id: curSchoolId, neutral_id: neutralSchoolId})
        end
      end
    end
  end

end
