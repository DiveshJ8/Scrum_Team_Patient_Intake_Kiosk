class Patient < ApplicationRecord
    belongs_to :users, optional: true
end
