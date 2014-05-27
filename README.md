## Schema

http://minus.com/i/Eq1w6akKgYbb

## Associations
User
has_many :memberships, foreign_key :member_id
has_many :created_groups
has_many :joined_groups, through: :memberships


Group
has_many :memberships
belongs_to :creator, class_name: "User"
has_many :members, through: :memberships

Membership
belongs_to :group
belongs_to :member, class_name: "User"
