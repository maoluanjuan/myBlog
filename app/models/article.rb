class Article < ActiveRecord::Base
  has_many :comments,dependent: :destroy

  validates :title,presence: true,length: { minimum: 5,message: '标题太短,至少需要5个字符' }
  #validates :title_confirmation,presence: true
  #validates :title,confirmation: true
  #validates :title,length: { maximum: 6,too_long: '%{count} is the maximum charctors allowed',
  #                           message: 'error message' }
end
