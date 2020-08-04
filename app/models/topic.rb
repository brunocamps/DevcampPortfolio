class Topic < ApplicationRecord
    #take a look at the syntax
    validates_presence_of :title

    has_many :blogs
end
