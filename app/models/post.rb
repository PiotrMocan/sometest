class Post < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true

  validate :some
  #TODO: add comment!
  #sdsds
  def some

    if self.title.length < 3
      errors.add :title, message: 'must be more than 2 letters'
    end
  end
end
