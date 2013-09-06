class Comment < ActiveRecord::Base

  validates_presence_of :mobile_phone
  validates_presence_of :content
  validate do
    (m = !self.mobile_phone.to_s.strip.match(/^(1(([35][0-9])|(47)|[8][01236789]))\d{8}$/)) &&
      errors.add(:base, "手机格式错误")
  end
end

