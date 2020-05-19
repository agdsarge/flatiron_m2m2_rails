class Interviewer < ApplicationRecord
    has_many :meetings, dependent: :destroy
    has_many :applicants, through: :meetings

end
