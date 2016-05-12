class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string  :name
      t.string  :image
      t.text    :benefit
      t.string  :location
      t.string  :website
      t.text    :about_us
      t.text    :open_position

      t.timestamps null: false
    end
  end
end
