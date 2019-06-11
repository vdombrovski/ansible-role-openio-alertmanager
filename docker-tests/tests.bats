#! /usr/bin/env bats

# Variable SUT_IP should be set outside this script and should contain the IP
# address of the System Under Test.

# Tests

@test 'Alertmanager listens 9093' {
  run bash -c "curl http://${SUT_IP}:9093"
  echo "output: "$output
  echo "status: "$status
  [[ "${status}" -eq "0" ]]
}

@test 'Alertmanager defaults file exists and is correct' {
  run bash -c "docker exec -ti ${SUT_ID} cat /etc/default/alertmanager"
  echo "output: "$output
  echo "status: "$status
  [[ "${status}" -eq "0" ]]
  [[ "${output}" =~ 'storage.path=/var/lib/alertmanager' ]]
}

@test 'Alertmanager config file exists' {
  run bash -c "docker exec -ti ${SUT_ID} cat /etc/prometheus/alertmanager.yml"
  echo "output: "$output
  [[ "${status}" -eq "0" ]]
}
