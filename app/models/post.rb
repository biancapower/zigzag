class Post < ApplicationRecord
  belongs_to :user
  belongs_to :list
  acts_as_list
end
