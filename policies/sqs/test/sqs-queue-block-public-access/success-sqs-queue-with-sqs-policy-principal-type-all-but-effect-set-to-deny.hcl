mock "tfplan/v2" {
	module {
		source = "./mocks/policy-success-sqs-queue-with-sqs-policy-principal-type-all-but-effect-set-to-deny/mock-tfplan-v2.sentinel"
	}
}


mock "tfconfig/v2" {
	module {
		source = "./mocks/policy-success-sqs-queue-with-sqs-policy-principal-type-all-but-effect-set-to-deny/mock-tfconfig-v2.sentinel"
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