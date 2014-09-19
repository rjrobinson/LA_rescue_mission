class Answer < ActiveRecord::Base

  belongs_to :question

  validates :title, length: { minimum: 50 }

end
