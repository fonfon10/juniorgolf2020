json.extract! event, :id, :name, :tour_id, :course_id, :gender_boy, :gender_girl, :category_jun, :category_juv, :category_ban, :category_pee, :category_ato, :level_id, :days, :start_time, :end_time, :reg_deadline, :qual_required, :comments, :user_id, :private, :mother, :father, :other_children, :note, :created_at, :updated_at
json.url event_url(event, format: :json)
