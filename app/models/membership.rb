class Membership < ApplicationRecord
  belongs_to :gym
  belongs_to :member
  validate :already_enrolled
end


def already_enrolled
  memberships = Membership.all
  memberships.each do |membership|
    if membership.gym_id == self.gym_id && membership.member_id == self.member_id
      errors.add(:gym_id, "You're already enrolled!")
    end
  end
end