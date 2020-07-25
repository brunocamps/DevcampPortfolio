class Blog < ApplicationRecord
    extend FriendlyId 
    friendly_id :title, use: :slugged
    #changed it to title (title of the blog)
end
