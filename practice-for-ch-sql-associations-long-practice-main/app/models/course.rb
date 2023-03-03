# == Schema Information
#
# Table name: courses
#
#  id            :bigint           not null, primary key
#  name          :string           not null
#  prereq_id     :bigint
#  instructor_id :bigint           not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
class Course < ApplicationRecord
    validates(
        :name,
        :prereq_id,
        :instructor_id,
        presence: true,
        uniqueness: true
    )
    belongs_to(
        :enrollment,
        class_name: Enrollment,
        primary_key: :id,
        foreign_key: :prereq_id
    )
end
