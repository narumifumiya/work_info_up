class CreateProjectTags < ActiveRecord::Migration[6.1]
  def change
    create_table :project_tags do |t|
      t.references :project, null: false, foreign_key: true
      t.references :tag, null: false, foreign_key: true
      t.integer :company_id

      t.timestamps
    end
  end
end
