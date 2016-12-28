class Text < ApplicationRecord
  has_many :annotations, dependent: :destroy
  validates :title, presence: true,
                    length: { minimum: 4 }
end
