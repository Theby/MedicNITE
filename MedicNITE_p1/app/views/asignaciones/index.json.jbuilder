json.array!(@asignaciones) do |asignacione|
  json.extract! asignacione, :id, :idAsignacion, :perIdPersona, :pacIdPersona, :idPersona, :id, :idSala, :idTipoAsignacion, :idCama, :idArea, :iniFechaAsignacion, :iniHoraAsignacion, :finFechaAsignacion, :finHoraAsignacion
  json.url asignacione_url(asignacione, format: :json)
end
