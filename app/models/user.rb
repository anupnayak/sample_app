# == Schema Information
# Schema version: <timestamp>
#
# Table name: users
#
# id :integer not null, primary key
# name :string(255)
# email :string(255)
# created_at :datetime
# updated_at :datetime

class User < ApplicationRecord

    def new
        new.require(:name).permit(:email)
        validates :name, :presence => true,
                         :length => { :maximum => 50 }
        validates :email, :presence => true
                          :format => { :with => email_regex }
                          :uniqueness => true
    end
end
