class Song < ApplicationRecord
    belongs_to :billboard, optional: true
end
