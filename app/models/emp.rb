class Emp < ActiveRecord::Base
  attr_accessible :dept_id, :first_name, :job_id, :last_name, :manager_id, :salary
end
