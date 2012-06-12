class CreateEmps < ActiveRecord::Migration
  def change
    create_table :emps do |t|
      t.string :first_name
      t.string :last_name
      t.integer :job_id
      t.integer :dept_id
      t.integer :manager_id
      t.integer :salary

      t.timestamps
    end
  end
end
