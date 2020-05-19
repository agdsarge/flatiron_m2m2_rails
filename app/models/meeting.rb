class Meeting < ApplicationRecord
    belongs_to :applicant
    belongs_to :interviewer
end
