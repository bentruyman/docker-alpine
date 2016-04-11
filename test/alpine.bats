#!/usr/bin/env bats

@test "Executes commands as a non-root user" {
  docker run -u core -t "${DOCKER_IMAGE_NAME}" whoami | grep "core"
}
