class Course < ApplicationRecord
    has_many :enrollments,
        primary_key: :id,
        class_name: :Enrollment,
        foreign_key: :course_id

    has_many :enrolled_students,
        through: :enrollments,
        source: :user
    
    belongs_to :prerequisite,
        primary_key: :id,
        class_name: :Course,
        foreign_key: :prereq_id,
        optional: true

    has_one :parent_course,
        primary_key: :id,
        class_name: :Course,
        foreign_key: :prereq_id

end
