json.array!(@personas) do |persona|
  json.extract! persona, :nombresPersona, :apellidosPersona, :fechaNacimientoPersona, :rutPersona, :domicilioPersona
  json.url persona_url(persona, format: :json)
end
