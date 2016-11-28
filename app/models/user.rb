class User < ActiveRecord::Base 
    
    has_many :posts
    has_many :comments
    has_many :likes
    
    validates_presence_of :email, 
                          :avatar_url, 
                          :username, 
                          :password
                          
    validates_uniqueness_of :email, 
                            :username
    
    def like_for_post_id(post_id)
        likes.find_by post_id: post_id
    end

end

 #create_table "users", force: :cascade do |t|
    #t.string   "username"
    #t.string   "avatar_url"
    #t.string   "email"
    #t.string   "password"
    #t.datetime "created_at"
    #t.datetime "updated_at"