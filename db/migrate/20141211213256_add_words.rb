class AddWords < ActiveRecord::Migration
  def change
    create_table :nouns do |t|
      t.string :word
    end

    create_table :superlatives do |t|
      t.string :word
    end

    create_table :people do |t|
      t.string :word
    end

    create_table :prepositions do |t|
      t.string :word
    end

    create_table :participles do |t|
      t.string :word
    end
    
  end
end
