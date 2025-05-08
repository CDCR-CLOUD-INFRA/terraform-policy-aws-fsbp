# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: BUSL-1.1

resource "aws_ecs_task_definition" "service" {
  family       = "service"
  network_mode = "host"
  container_definitions = jsonencode([
    {
      name                   = "first"
      user                   = "5996"
      image                  = "service-first"
      cpu                    = 10
      memory                 = 512
      readOnlyRootFileSystem = true
      essential              = true
      portMappings = [
        {
          containerPort = 80
          hostPort      = 80
        }
      ]
    }
  ])

  volume {
    name      = "service-storage"
    host_path = "/ecs/service-storage"
  }

  placement_constraints {
    type       = "memberOf"
    expression = "attribute:ecs.availability-zone in [us-west-2a, us-west-2b]"
  }
}

resource "aws_ecs_task_definition" "service-2" {
  family       = "service"
  network_mode = "host"
  container_definitions = jsonencode([
    {
      name                   = "first"
      user                   = "5996"
      image                  = "service-first"
      privileged             = false
      cpu                    = 10
      memory                 = 512
      readOnlyRootFileSystem = true
      essential              = false
      portMappings = [
        {
          containerPort = 80
          hostPort      = 80
        }
      ]
    },
    {
      name                   = "second"
      user                   = "5996"
      image                  = "service-second"
      privileged             = false
      cpu                    = 10
      memory                 = 512
      readOnlyRootFileSystem = true
      essential              = false
      portMappings = [
        {
          containerPort = 80
          hostPort      = 80
        }
      ]
    }
  ])

  volume {
    name      = "service-storage"
    host_path = "/ecs/service-storage"
  }

  placement_constraints {
    type       = "memberOf"
    expression = "attribute:ecs.availability-zone in [us-west-2a, us-west-2b]"
  }
}