class Blog < ApplicationRecord
    enum status: {draft: 0, published: 1} #only spot 1 and 0
    #0 is going to be mapped to draft.
    #Whenever we create a new blog post, by default, it's going to be on draft mode until
    #we change it to published and change the state
    extend FriendlyId 
    friendly_id :title, use: :slugged
    #changed it to title (title of the blog)
end
