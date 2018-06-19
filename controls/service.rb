title 'Docker Service'

SERVICE_NAME = attribute(
  'service_name',
  description: 'name of the swarm service'
)

SERVICE_REPLICAS = attribute(
  'service_replicas',
  description: 'expected number of service replicas',
  default: 1
)

SERVICE_IMAGE = attribute(
  'service_image',
  description: 'expected docker image'
)

describe docker_service(SERVICE_NAME) do
  it { should exist }
  its('image') { should eq SERVICE_IMAGE }
  its('replicas') { should eq "#{SERVICE_REPLICAS}/#{SERVICE_REPLICAS}" }
end