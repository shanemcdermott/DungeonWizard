class CreateAdventures < ActiveRecord::Migration
  def change
    create_table :adventures do |t|
      #Adventure Name, may serve as seed as well for generation
      t.string 'name'
      #Number of characters in party
      t.integer 'party_size'
      #Average level of party members
      t.integer 'party_level'
      #Determines generation type- Wilderness, Dungeon, Civilization
      t.string 'dungeon_type'
      #Aids dungeon generation tool
      t.string 'dungeon_subtype'
      #For visual output as well as creature filters
      t.string 'terrain'
      #Additional filter/visual modifier
      t.string 'climate'
      #Affects curve of encounter generation
      t.string 'difficulty'
      #Primary creature type in adventure
      t.string 'creature_type'
    end
  end
end
