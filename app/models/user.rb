class User < ActiveRecord::Base
  validates :email, presence: true, uniqueness: true
  validates :password_digest, presence: true
  has_many :shouts

  has_many :followed_user_relationships,
           foreign_key: :follower_id,
           class_name: :FollowingRelationship
  has_many :followed_users, through: :followed_user_relationships

  has_many :follower_relationships,
           foreign_key: :followed_user_id,
           class_name: :FollowingRelationship
  has_many :followers, through: :follower_relationships

  def following?(user)
    followed_user_ids.include? user.id
  end

  def can_follow?(user)
    self != user
  end

  def follow(user)
    followed_users << user
  end

  def unfollow(user)
    followed_users.delete(user)
  end
end
