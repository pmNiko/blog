class CreatePhones < ActiveRecord::Migration
  def change
    create_table :phones do |t|
      t.string :phone_type
      t.string :number
      t.references :profile, index: true

      t.timestamps
    end
  end
end
