class CreatePropertyshowings < ActiveRecord::Migration[6.0]
  def change
    create_table :propertyshowings do |t|
      t.string :address
      t.string :date
      t.string :time
      t.string :description
      t.string :size
      t.string :price
      t.string :agent_id
      t.string :seller_id
    end
  end
end
