json.array!(@asignacion_tipos) do |asignacion_tipo|
  json.extract! asignacion_tipo, :id, :idTipoAsignacion, :tipoAsignacion
  json.url asignacion_tipo_url(asignacion_tipo, format: :json)
end
