class CreateCutsTags < ActiveRecord::Migration
  def self.up
    create_table :cuts_tags, :id => false do |t|
      t.column :cut_id, :integer
      t.column :tag_id, :integer
    end
  end

  def self.down
    drop_table :cuts_tags
  end
end