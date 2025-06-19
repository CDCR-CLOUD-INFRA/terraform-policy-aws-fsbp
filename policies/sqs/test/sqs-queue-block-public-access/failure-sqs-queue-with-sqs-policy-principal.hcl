# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: BUSL-1.1

mock "tfconfig/v2" {
	module {
		source = "./mocks/policy-failure-sqs-queue-with-sqs-policy-principal/mock-tfconfig-v2.sentinel"
	}
}


mock "tfplan/v2" {
	module {
		source = "./mocks/policy-failure-sqs-queue-with-sqs-policy-principal/mock-tfplan-v2.sentinel"
	}
}


mock "tfresources" {
  module {
    source = "../../../../modules/tfresources/tfresources.sentinel"
  }
}

mock "report" {
	module {
		source = "../../../../modules/mocks/report/report.sentinel"
	}
}

test {
	rules = {
		main = false
	}
}