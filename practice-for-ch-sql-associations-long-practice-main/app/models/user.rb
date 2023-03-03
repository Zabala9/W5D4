# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class User < ApplicationRecord
    validates(
        :name,
        presence: true,
        uniqueness: true
    )

    belongs_to(
        :enrollment,
        class_name: Enrollment,
        primary_key: :id,
        foreign_key: :name
    )

    has_many(
        :course,
        class_name: Course,
        primary_key: :id,
        foreign_key: :course_id
    )
end
