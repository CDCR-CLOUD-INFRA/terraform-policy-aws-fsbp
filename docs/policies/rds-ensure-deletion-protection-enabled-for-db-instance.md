# AWS RDS instance ensure deletion protection enabled

| Provider            | Category |
|---------------------|----------|
| Amazon Web Services | Storage  |

## Description

This control checks whether an RDS DB cluster has deletion protection enabled. 
The control fails if an RDS DB cluster doesn't have deletion protection enabled.

This control checks whether your RDS DB instances that use one of the listed database engines have deletion protection enabled. 
The control fails if an RDS DB instance doesn't have deletion protection enabled.

This rule is covered by the [rds-ensure-deletion-protection-enabled](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/rds/rds-ensure-deletion-protection-enabled.sentinel) policy.
Param which needs to be passed is "resource_type" with value - "aws_db_instance"

```bash
trace:

    Pass - rds-ensure-rds-cluster-deletion-protection-enabled.sentinel

    Description:
      This policy requires resources of type `aws_db_instance` and `aws_rds_cluster` to have `deletion_protection` set to true

    Print messages:

    → → Overall Result: true

    This result means that all resources have passed the policy check for the policy rds-ensure-deletion-protection-enabled.

    ✓ Found 0 resource violations

    rds-ensure-rds-cluster-deletion-protection-enabled.sentinel:45:1 - Rule "main"
      Value:
        true
```

---

## Policy Results (Fail)
```bash
trace:

     Fail - rds-ensure-db-instance-deletion-protection-enabled.sentinel

    Description:
      This policy requires resources of type `aws_db_instance` to have `multi_az`
      set to true

    Print messages:

    → → Overall Result: false

    This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy rds-ensure-multi-az-configuration.

    Found 1 resource violations

    → Module name: root
       ↳ Resource Address: aws_db_instance.default
         | ✗ failed
         | Attribute 'deletion_protection' must be set to true for 'aws_db_instance' resources. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/rds-controls.html#rds-8 for more details.


    rds-ensure-db-instance-deletion-protection-enabled.sentinel:52:1 - Rule "main"
      Value:
        false
        
```

---