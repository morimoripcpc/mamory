class Memo < ApplicationRecord
  validates :title, :content, presence: true
end
