# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: BUSL-1.1

resource "aws_eks_cluster" "this" {
  name     = "test"
  role_arn = "arn:aws:iam::123456789012:role/test-role"

  vpc_config {
    subnet_ids = ["test-subnet-id"]
  }

  encryption_config {
    provider {
      key_arn = "arn:aws:iam::123456789012:kms/test-kms"
    }
    resources = []
  }
}