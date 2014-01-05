json.array!(@paciente_estados) do |paciente_estado|
  json.extract! paciente_estado, :idEstadoPaciente, :estadoPaciente
  json.url paciente_estado_url(paciente_estado, format: :json)
end
