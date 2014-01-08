json.array!(@desocupamiento_recintos) do |desocupamiento_recinto|
  json.extract! desocupamiento_recinto, :id, :idDesocupamientoRecinto, :idAsignacion, :fechaDesocupamiento, :horaDesocupamiento
  json.url desocupamiento_recinto_url(desocupamiento_recinto, format: :json)
end
