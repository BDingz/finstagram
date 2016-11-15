class User < ActiveRecord::Base 
    
    has_many :posts
    has_many :comments
    has_many :likes
    
end

 #create_table "users", force: :cascade do |t|
    #t.string   "username"
    #t.string   "avatar_url"
    #t.string   "email"
    #t.string   "password"
    #t.datetime "created_at"
    #t.datetime "updated_at"