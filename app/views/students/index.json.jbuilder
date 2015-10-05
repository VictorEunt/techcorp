json.array!(@students) do |student|
  json.extract! student, :id, :level, :major, :gender, :age, :language, :ethnicity
  json.url student_url(student, format: :json)
end
