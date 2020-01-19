class Memo < ApplicationRecord
  validates :title, :content, presence: true

  def show_title
    
end
