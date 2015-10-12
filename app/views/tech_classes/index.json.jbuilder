json.array!(@tech_classes) do |tech_class|
  json.extract! tech_class, :id, :number, :section, :day, :time, :year
  json.url tech_class_url(tech_class, format: :json)
end
