json.array!(@camas) do |cama|
  json.extract! cama, :id, :idCama, :idArea, :idHabitacion, :idSala, :codVisibleCama, :estadoCama, :tipoCama
  json.url cama_url(cama, format: :json)
end
