class Session < ApplicationRecord
    belongs_to :users, optional: true
end
