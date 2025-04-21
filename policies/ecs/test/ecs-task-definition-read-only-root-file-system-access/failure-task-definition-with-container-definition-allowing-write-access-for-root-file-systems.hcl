mock "tfplan/v2" {
  module {
    source = "./mocks/policy-failure-task-definition-with-container-definition-allowing-write-access-for-root-file-systems/mock-tfplan-v2.sentinel"
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