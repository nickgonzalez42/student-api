class CreateEducations < ActiveRecord::Migration[7.0]
  def change
    create_table :educations do |t|
      t.string :start
      t.string :end
      t.string :degree
      t.string :university
      t.string :details

      t.timestamps
    end
  end
end
