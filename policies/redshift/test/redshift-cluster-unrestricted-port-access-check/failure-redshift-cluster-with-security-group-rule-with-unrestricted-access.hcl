mock "tfplan/v2" {
	module {
		source = "./mocks/policy-failure-redshift-cluster-with-security-group-rule-with-unrestricted-access/mock-tfplan-v2.sentinel"
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