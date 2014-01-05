json.array!(@paciente_tipos) do |paciente_tipo|
  json.extract! paciente_tipo, :idTipoPaciente, :tipoPaciente
  json.url paciente_tipo_url(paciente_tipo, format: :json)
end
