class User < ApplicationRecord
    belongs_to :clients, optional: true
end
