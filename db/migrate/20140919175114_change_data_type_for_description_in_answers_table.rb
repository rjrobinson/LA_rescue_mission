class ChangeDataTypeForDescriptionInAnswersTable < ActiveRecord::Migration
  def up
    change_table :answers do |t|
      t.change :description, :text
    end
  end
  def down
    change_table :answers do |t|
      t.change :description, :string
    end
  end
end
