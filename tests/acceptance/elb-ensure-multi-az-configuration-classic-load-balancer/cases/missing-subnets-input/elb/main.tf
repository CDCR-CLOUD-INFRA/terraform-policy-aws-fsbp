# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: BUSL-1.1

resource "aws_elb" "this" {
  listener {
    instance_port     = 8080
    instance_protocol = "tcp"
    lb_port           = 9090
    lb_protocol       = "tcp"
  }
}