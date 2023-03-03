# == Schema Information
#
# Table name: enrollments
#
#  id         :bigint           not null, primary key
#  course_id  :bigint           not null
#  student_id :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Enrollment < ApplicationRecord
    validates(:course_id, presence: true, uniqueness: true)
    validates(:student_id, presence: true, uniqueness: true)

    belongs_to(
        :course,
        class_name: 'Course',
        primary_key: :id,
        foreign_key: :course_id
    )

    has_many(
        :user,
        primary_key: :id,
        foreign_key: :student_id,
        class_name: 'User'
    )
end
