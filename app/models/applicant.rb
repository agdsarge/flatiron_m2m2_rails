class Applicant < ApplicationRecord
    has_many :meetings, dependent: :destroy
    has_many :interviewers, through: :meetings
    
end
