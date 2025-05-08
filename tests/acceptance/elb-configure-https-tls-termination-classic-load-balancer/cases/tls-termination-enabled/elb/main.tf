# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: BUSL-1.1

resource "aws_elb" "this" {
  listener {
    instance_port      = 5050
    instance_protocol  = "http"
    lb_port            = 9090
    lb_protocol        = "https"
    ssl_certificate_id = "arn:aws:acm:us-west-2:123456789012:certificate/abcdefg-1234-5678-abcd-1234abcdefg"
  }

  listener {
    instance_port      = 4000
    instance_protocol  = "http"
    lb_port            = 9088
    lb_protocol        = "ssl"
    ssl_certificate_id = "arn:aws:iam:us-west-2:123456789012:server-certificate/abcdefg-1234-5678-abcd-1234abcdefg"
  }
}