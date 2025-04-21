mock "tfplan/v2" {
	module {
		source = "./mocks/policy-failure-step-functions-state-machine-with-logging-configuration-block-not-present/mock-tfplan-v2.sentinel"
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