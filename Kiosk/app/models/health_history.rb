class HealthHistory < ApplicationRecord
  belongs_to :patients, optional: true
end
