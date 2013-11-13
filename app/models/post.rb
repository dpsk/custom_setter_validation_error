class Post < ActiveRecord::Base
  attr_accessible :body, :hidden_attribute, :title

  def hidden_attribute=(value)
    self.errors.add(:base, "not accepted")
    self.errors.add(:hidden_attribute, "not_accepted")
    write_attribute :hidden_attribute, value unless errors.any?
  end
end
