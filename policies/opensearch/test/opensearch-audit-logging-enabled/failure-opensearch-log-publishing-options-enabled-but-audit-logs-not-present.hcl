mock "tfplan/v2" {
	module {
		source = "./mocks/policy-failure-opensearch-log-publishing-options-enabled-but-audit-logs-not-present/mock-tfplan-v2.sentinel"
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