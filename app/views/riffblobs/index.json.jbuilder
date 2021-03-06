
json.riffblobs @riffblobs do |blob|
  json.extract! blob, :url
  json.extract! blob, :id
  json.extract! blob, :pointer
  json.id blob.id
  json.pointer blob.pointer
  json.url blob.url
  json.child blob.child do |blobby|
    json.id blobby.id
    json.pointer blobby.pointer
    json.url blobby.url
  end
end