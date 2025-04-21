mock "tfplan/v2" {
	module {
		source = "./mocks/policy-success-redshift-cluster-referenced-to-security-group-that-has-ipv4/mock-tfplan-v2.sentinel"
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