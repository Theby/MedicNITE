json.array!(@salas) do |sala|
  json.extract! sala, :id, :idSala, :idArea, :codVisibleSala, :tipoSala, :estadoSalas
  json.url sala_url(sala, format: :json)
end
