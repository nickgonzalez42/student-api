class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :first
      t.string :last
      t.string :email
      t.string :phone
      t.string :bio
      t.string :linkedin
      t.string :twitter
      t.string :website
      t.string :github
      t.string :photo
      t.string :password_digest

      t.timestamps
    end
  end
end
