class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :title
      t.integer :company_id
      t.string :job_type
      t.string :pay
      t.string :experience
      t.string :languages
      t.string :apply

      t.timestamps null: false
    end
  end
end
