# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: BUSL-1.1

mock "tfplan/v2" {
	module {
		source = "./mocks/policy-success-sagemaker-notebook-instance-platform-identifier-not-found/mock-tfplan-v2.sentinel"
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
		main = true
	}
}