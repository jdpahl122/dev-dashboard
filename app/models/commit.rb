class Commit < ApplicationRecord
  belongs_to :member
  belongs_to :repository
end
