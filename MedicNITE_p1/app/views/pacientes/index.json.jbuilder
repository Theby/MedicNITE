json.array!(@pacientes) do |paciente|
  json.extract! paciente, :perIdPersona, :idPersona, :idTipoPaciente, :idEstadoPaciente
  json.url paciente_url(paciente, format: :json)
end
