class CreateBoardTagRelations < ActiveRecord::Migration[5.0]
  def change
    create_table :board_tag_relations do |t|
      t.references :board, foreign_key: true, type: :integer
      t.references :tag, foreign_key: true, type: :integer

      t.timestamps
    end
  end
end
