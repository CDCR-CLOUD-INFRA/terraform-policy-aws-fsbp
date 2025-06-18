mock "tfplan/v2" {
	module {
		source = "./mocks/policy-failure-vpc-block-public-access-options-with-internet-gateway-block-mode-set-to-off/mock-tfplan-v2.sentinel"
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