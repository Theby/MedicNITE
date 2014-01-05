json.array!(@habitacions) do |habitacion|
  json.extract! habitacion, :id, :idHabitacion, :idSala, :codVisibleHabitacion, :tipoHabitacion, :capacidadHabitacion, :estadoHabitacion
  json.url habitacion_url(habitacion, format: :json)
end
