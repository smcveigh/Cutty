class AddLanguageId < ActiveRecord::Migration
  def self.up
    add_column(:cuts, :language_id, :integer)
  end

  def self.down
    remove_column(:cuts, :language_id, :integer)
  end
end