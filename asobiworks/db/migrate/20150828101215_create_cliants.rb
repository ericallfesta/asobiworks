class CreateCliants < ActiveRecord::Migration
  def change
    create_table :cliants do |t|
      t.string :title
      t.string :area
      t.string :name
      t.string :email
      t.integer :tel
      t.integer :smallnumber
      t.string :concept


      t.timestamps null: false
    end
  end
end
