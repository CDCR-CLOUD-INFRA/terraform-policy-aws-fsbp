# GuardDuty Runtime Monitoring should be enabled

| Provider            | Category           |
|---------------------|--------------------|
| Amazon Web Services | Detection services |

## Description

This control checks whether Runtime Monitoring is enabled in Amazon GuardDuty. For a standalone account, the control fails if GuardDuty Runtime Monitoring is disabled for the account. In a multi-account environment, the control fails if GuardDuty Runtime Monitoring is disabled for the delegated GuardDuty administrator account and all member accounts.

In a multi-account environment, only the delegated GuardDuty administrator can enable or disable GuardDuty Runtime Monitoring for accounts in their organization. In addition, only the GuardDuty administrator can configure and manage the security agents that GuardDuty uses for runtime monitoring of AWS workloads and resources for accounts in the organization. GuardDuty member accounts can't enable, configure, or disable Runtime Monitoring for their own accounts.

GuardDuty Runtime Monitoring observes and analyzes operating system-level, networking, and file events to help you detect potential threats in specific AWS workloads in your environment. It uses GuardDuty security agents that add visibility into runtime behavior, such as file access, process execution, command line arguments, and network connections. You can enable and manage the security agent for each type of resource that you want to monitor for potential threats, such as Amazon EKS clusters and Amazon EC2 instances.

This rule is covered by the [guardduty-runtime-monitoring-enabled](../../policies/guardduty/guardduty-runtime-monitoring-enabled.sentinel) policy.

## Policy Results (Pass)
```bash
trace:
    Pass - guardduty-runtime-monitoring-enabled.sentinel

    Description:
    This policy requires GuardDuty Runtime Monitoring to be enabled

    Print messages:

    → → Overall Result: true

    This result means that all resources have passed the policy check for the policy guardduty-runtime-monitoring-enabled.

    ✓ Found 0 resource violations

    guardduty-runtime-monitoring-enabled.sentinel:55:1 - Rule "main"
    Value:
        true
```

---

## Policy Results (Fail)
```bash
trace:
    Fail - guardduty-runtime-monitoring-enabled.sentinel

    Description:
    This policy requires GuardDuty Runtime Monitoring to be enabled

    Print messages:

    → → Overall Result: false

    This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy guardduty-runtime-monitoring-enabled.

    Found 1 resource violations

    → Module name: root
    ↳ Resource Address: aws_guardduty_detector.main
        | ✗ failed
        | GuardDuty Runtime Monitoring should be enabled. Ensure that GuardDuty detector is enabled and Runtime Monitoring feature is enabled. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/guardduty-controls.html#guardduty-11 for more details.


    guardduty-runtime-monitoring-enabled.sentinel:55:1 - Rule "main"
    Value:
        false
```

---