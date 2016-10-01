class Post < ApplicationRecord
  enum status: { draft: 0, published: 10 }
end
