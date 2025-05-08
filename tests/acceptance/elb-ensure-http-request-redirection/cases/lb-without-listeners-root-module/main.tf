# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: BUSL-1.1

provider "aws" {
  region = "us-west-2"
}

resource "aws_lb" "this" {
  load_balancer_type = "application"

  subnets = ["subnet-01"]
}