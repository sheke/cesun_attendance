class CheckIn < ActiveRecord::Base
 belongs_to  :teachers
 #has_many_and_belongs_to :assignment
 validates   :indate,  :presence => true
 validates   :enddate,  :presence => true 
 validates   :teachers_id,  :presence => true
 validates   :status,  :presence => true
 validates_inclusion_of :status, :in => %w/Attendance Absence Reposition/
 
end
