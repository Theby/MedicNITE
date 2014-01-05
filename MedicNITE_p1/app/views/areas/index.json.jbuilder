json.array!(@areas) do |area|
  json.extract! area, :id, :idArea, :especialidadArea
  json.url area_url(area, format: :json)
end
