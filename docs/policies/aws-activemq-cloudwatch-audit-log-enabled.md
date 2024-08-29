# ActiveMQ brokers should stream audit logs to CloudWatch

| Provider            | Category |
| ------------------- | -------- |
| Amazon Web Services | Storage  |

## Description

This control checks whether an Amazon MQ ActiveMQ broker streams audit logs to Amazon CloudWatch Logs. The control fails if the broker doesn't stream audit logs to CloudWatch Logs.

By publishing ActiveMQ broker logs to CloudWatch Logs, you can create CloudWatch alarms and metrics that increase the visibility of security-related information

## Policy Results (Pass)
```bash
trace:
      Pass - aws-activemq-cloudwatch-audit-log-enabled.sentinel

      Description:
        This policy checks if resources of type 'aws_mq_broker' have the attribute
        'logs' with parameter
        'audit' set to true

      Print messages:

      → → Overall Result: true

      This result means that all resources have passed the policy check for the policy mq-cloudwatch-audit-log-enabled.

      ✓ Found 0 resource violations

      aws-activemq-cloudwatch-audit-log-enabled.sentinel:52:1 - Rule "main"
        Value:
          true
```

---

## Policy Results (Fail)
```bash
trace:
      Fail - aws-activemq-cloudwatch-audit-log-enabled.sentinel

      Description:
        This policy checks if resources of type 'aws_mq_broker' have the attribute
        'logs' with parameter
        'audit' set to true

      Print messages:

      → → Overall Result: false

      This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy mq-cloudwatch-audit-log-enabled.

      Found 1 resource violations

      → Module name: root
        ↳ Resource Address: aws_mq_broker.example
          | ✗ failed
          | Attribute 'logs' with parameter 'audit' should be true for AWS ActiveMQ Broker. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/mq-controls.html#mq-2 for more details.


      aws-activemq-cloudwatch-audit-log-enabled.sentinel:52:1 - Rule "main"
        Value:
          false
```

---