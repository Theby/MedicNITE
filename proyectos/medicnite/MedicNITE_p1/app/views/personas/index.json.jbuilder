json.array!(@personas) do |persona|
  json.extract! persona, :rutPersona, :nombresPersona, :apellidopaternoPersona, :apellidomaternoPersona
  json.url persona_url(persona, format: :json)
end
