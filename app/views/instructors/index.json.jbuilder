json.array!(@instructors) do |instructor|
  json.extract! instructor, :id, :title, :first_name, :last_name, :position
  json.url instructor_url(instructor, format: :json)
end
