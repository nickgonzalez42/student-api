class CreateExperiences < ActiveRecord::Migration[7.0]
  def change
    create_table :experiences do |t|
      t.string :start
      t.string :end
      t.string :title
      t.string :company
      t.string :details

      t.timestamps
    end
  end
end
