class Patient < ApplicationRecord
    belongs_to :user, optional: true
end
