class RenameColumnInAnswersTable < ActiveRecord::Migration
  def up
    rename_column :answers, :questions_id, :question_id
  end

  def down
    rename_column :answers, :question_id, :questions_id
  end

end




