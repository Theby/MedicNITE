json.array!(@personas) do |persona|
  json.extract! persona, :idPersona, :domicilioPersona, :nombresPersona, :apellidosPersona, :fechaNacimientoPersona, :rutPersona
  json.url persona_url(persona, format: :json)
end
