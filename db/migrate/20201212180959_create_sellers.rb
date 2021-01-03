class CreateSellers < ActiveRecord::Migration[6.0]
  def change
    create_table :sellers do |t|
      t.string :name
      t.string :telephone
      t.string :email_address
      t.string :occupation
    end
  end
end
