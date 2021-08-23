class Coupon < ApplicationRecord
  belongs_to :user, optional: true


def self.usable?
  valid_on_count?
end

def valid_on_count?
  if type.eq?("target")
    return (count > 0)
  end
  true
end

end
