class CreateTerms < ActiveRecord::Migration
  def change
    create_table :terms do |t|
      t.string :word
      t.string :definition
      t.string :link
      t.string :quote

      t.timestamps
    end
  end
end
