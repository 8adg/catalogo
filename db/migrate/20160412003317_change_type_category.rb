class ChangeTypeCategory < ActiveRecord::Migration
  def up
    change_table :productos do |t|
      t.change :precio, :string
    end
  end

  def down
    change_table :productos do |t|
      t.change :precio, :integer
    end
  end
end