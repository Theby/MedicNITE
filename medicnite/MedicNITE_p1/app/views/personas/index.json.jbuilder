json.array!(@personas) do |persona|
  json.extract! persona, :nombres, :apellidos, :rut
  json.url persona_url(persona, format: :json)
end
