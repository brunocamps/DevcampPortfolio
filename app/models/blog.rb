class Blog < ApplicationRecord
    enum status: {draft: 0, published: 1}
    extend FriendlyId 
    friendly_id :title, use: :slugged
    #changed it to title (title of the blog)
end
