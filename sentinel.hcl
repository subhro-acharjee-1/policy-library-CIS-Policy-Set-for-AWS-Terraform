# Copyright IBM Corp. 2025
# SPDX-License-Identifier: BUSL-1.1

import "module" "report" {
  source = "./modules/report/report.sentinel"
}

import "module" "tfresources" {
  source = "./modules/tfresources/tfresources.sentinel"
}

import "module" "tfplan-functions" {
  source = "./modules/tfplan-functions/tfplan-functions.sentinel"
}

import "module" "tfconfig-functions" {
  source = "./modules/tfconfig-functions/tfconfig-functions.sentinel"
}

policy "rds-encryption-at-rest-enabled" {
  source = "./policies/rds/rds-encryption-at-rest-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "rds-minor-version-upgrade-enabled" {
  source = "./policies/rds/rds-minor-version-upgrade-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "rds-public-access-disabled" {
  source = "./policies/rds/rds-public-access-disabled.sentinel"
  enforcement_level = "advisory"
}

policy "kms-key-rotation-enabled" {
  source = "./policies/kms/kms-key-rotation-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "ec2-ebs-encryption-enabled" {
  source = "./policies/ec2/ec2-ebs-encryption-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "ec2-network-acl" {
  source = "./policies/ec2/ec2-network-acl.sentinel"
  enforcement_level = "advisory"
}

policy "ec2-vpc-flow-logging-enabled" {
  source = "./policies/ec2/ec2-vpc-flow-logging-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "ec2-vpc-default-security-group-no-traffic" {
  source = "./policies/ec2/ec2-vpc-default-security-group-no-traffic.sentinel"
  enforcement_level = "advisory"
}

policy "ec2-metadata-imdsv2-required" {
  source = "./policies/ec2/ec2-metadata-imdsv2-required.sentinel"
  enforcement_level = "advisory"
}

policy "ec2-security-group-ipv4-ingress-traffic-restriction" {
  source = "./policies/ec2/ec2-security-group-ingress-traffic-restriction-protocol.sentinel"
  enforcement_level = "advisory"
  params = {
    prevent_unknown_ipv4_ingress = true
  }
}

policy "ec2-security-group-ipv6-ingress-traffic-restriction" {
  source = "./policies/ec2/ec2-security-group-ingress-traffic-restriction-protocol.sentinel"
  enforcement_level = "advisory"
  params = {
    prevent_unknown_ipv6_ingress = true
    prevent_unknown_ipv4_ingress = false
  }
}

policy "ec2-security-group-ingress-traffic-restriction-port-22" {
  source = "./policies/ec2/ec2-security-group-ingress-traffic-restriction-port.sentinel"
  enforcement_level = "advisory"
  params = {
    port = 22
  }
}

policy "ec2-security-group-ingress-traffic-restriction-port-3389" {
  source = "./policies/ec2/ec2-security-group-ingress-traffic-restriction-port.sentinel"
  enforcement_level = "advisory"
  params = {
    port = 3389
  }
}

policy "efs-encryption-at-rest-enabled" {
  source = "./policies/efs/efs-encryption-at-rest-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "vpc-flow-logging-enabled" {
  source = "./policies/vpc/vpc-flow-logging-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "s3-block-public-access-account-level" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}

policy "s3-block-public-access-bucket-level" {
  source = "./policies/s3/s3-block-public-access-bucket-level.sentinel"
  enforcement_level = "advisory"
}

policy "s3-require-mfa-delete" {
  source = "./policies/s3/s3-require-mfa-delete.sentinel"
  enforcement_level = "advisory"
}

policy "s3-require-ssl" {
  source = "./policies/s3/s3-require-ssl.sentinel"
  enforcement_level = "advisory"
}

policy "s3-enable-object-logging-for-write-events" {
  source = "./policies/s3/s3-enable-object-logging-for-events.sentinel"
  enforcement_level = "advisory"
  params = {
    event_type = "WriteOnly"
  }
}

policy "s3-enable-object-logging-for-read-events" {
  source = "./policies/s3/s3-enable-object-logging-for-events.sentinel"
  enforcement_level = "advisory"
  params = {
    event_type = "ReadOnly"
  }
}


policy "cloudtrail-server-side-encryption-enabled" {
  source = "./policies/cloudtrail/cloudtrail-server-side-encryption-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "cloudtrail-log-file-validation-enabled" {
  source = "./policies/cloudtrail/cloudtrail-log-file-validation-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "cloudtrail-cloudwatch-logs-group-arn-present" {
  source = "./policies/cloudtrail/cloudtrail-cloudwatch-logs-group-arn-present.sentinel"
  enforcement_level = "advisory"
}

policy "cloudtrail-logs-bucket-not-public" {
  source = "./policies/cloudtrail/cloudtrail-logs-bucket-not-public.sentinel"
  enforcement_level = "advisory"
}

policy "cloudtrail-bucket-access-logging-enabled" {
  source = "./policies/cloudtrail/cloudtrail-bucket-access-logging-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "iam-no-admin-privileges-allowed-by-policies" {
  source = "./policies/iam/iam-no-admin-privileges-allowed-by-policies.sentinel"
  enforcement_level = "advisory"
}

policy "iam-no-policies-attached-to-users" {
  source = "./policies/iam/iam-no-policies-attached-to-users.sentinel"
  enforcement_level = "advisory"
}

policy "iam-password-expiry" {
  source = "./policies/iam/iam-password-expiry.sentinel"
  enforcement_level = "advisory"
  params = {
    password_expiry_days = 90
  }
}

policy "iam-password-length" {
  source = "./policies/iam/iam-password-length.sentinel"
  enforcement_level = "advisory"
  params = {
    password_length = 14
  }
}

policy "iam-password-lowercase" {
  source = "./policies/iam/iam-password-lowercase.sentinel"
  enforcement_level = "advisory"
}

policy "iam-password-numbers" {
  source = "./policies/iam/iam-password-numbers.sentinel"
  enforcement_level = "advisory"
}

policy "iam-password-reuse" {
  source = "./policies/iam/iam-password-reuse.sentinel"
  enforcement_level = "advisory"
  params = {
    allowed_password_reuse_limit = 24
  }
}

policy "iam-password-symbols" {
  source = "./policies/iam/iam-password-symbols.sentinel"
  enforcement_level = "advisory"
}

policy "iam-password-uppercase" {
  source = "./policies/iam/iam-password-uppercase.sentinel"
  enforcement_level = "advisory"
}

######
policy "s3-block-public-access-account-level-1" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-5" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-6" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-7" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-8" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-9" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-10" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-11" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-12" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-13" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-14" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-15" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-16" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-17" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-18" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-19" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-20" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-21" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-22" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-23" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-24" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-25" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-26" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-27" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-28" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-29" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-30" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-31" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-32" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-33" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-34" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-35" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-36" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-37" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-38" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-39" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-40" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-41" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-42" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-43" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-44" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-45" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-46" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-47" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-48" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-49" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-50" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-51" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-52" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-53" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-54" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-55" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-56" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-57" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-58" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-59" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-60" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-61" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-62" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-63" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-64" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-65" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-66" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-67" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-68" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-69" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-70" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-71" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-72" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-73" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-74" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-75" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-76" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-77" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-78" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-79" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-80" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-81" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-82" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-83" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-84" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-85" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-86" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-87" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-88" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-89" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-90" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-91" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-92" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-93" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-94" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-95" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-96" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-97" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-98" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-99" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-100" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-101" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-102" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-103" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-104" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-105" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-106" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-107" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-108" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-109" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-110" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-111" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-112" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-113" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-114" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-115" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-116" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-117" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-118" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-119" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-120" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-121" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-122" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-123" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-124" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-125" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-126" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-127" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-128" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-129" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-130" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-131" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-132" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-133" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-134" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-135" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-136" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-137" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-138" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-139" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-140" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-141" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-142" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-143" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-144" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-145" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-146" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-147" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-148" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-149" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-150" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-151" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-152" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-153" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-154" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-155" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-156" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-157" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-158" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-159" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-160" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-161" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-162" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-163" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-164" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-165" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-166" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-167" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-168" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-169" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-170" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-171" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-172" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-173" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-174" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-175" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-176" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-177" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-178" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-179" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-180" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-181" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-182" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-183" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-184" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-185" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-186" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-187" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-188" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-189" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-190" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-191" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-192" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-193" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-194" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-195" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-196" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-197" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-198" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-199" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-200" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-201" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-202" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-203" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-204" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-205" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-206" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-207" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-208" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-209" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-210" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-211" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-212" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-213" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-214" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-215" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-216" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-217" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-218" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-219" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-220" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-221" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-222" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-223" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-224" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-225" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-226" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-227" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-228" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-229" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-230" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-231" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-232" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-233" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-234" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-235" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-236" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-237" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-238" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-239" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-240" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-241" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-242" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-243" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-244" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-245" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-246" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-247" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-248" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-249" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-250" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-251" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-252" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-253" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-254" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-255" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-256" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-257" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-258" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-259" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-260" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-261" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-262" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-263" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-264" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-265" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-266" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-267" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-268" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-269" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-270" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-271" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-272" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-273" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-274" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-275" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-276" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-277" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-278" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-279" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-280" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-281" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-282" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-283" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-284" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-285" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-286" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-287" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-288" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-289" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-290" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-291" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-292" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-293" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-294" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-295" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-296" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-297" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-298" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-299" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-300" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-301" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-302" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-303" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-304" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-305" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-306" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-307" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-308" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-309" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-310" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-311" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-312" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-313" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-314" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-315" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-316" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-317" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-318" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-319" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-320" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-321" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-322" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-323" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-324" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-325" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-326" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-327" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-328" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-329" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-330" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-331" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-332" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-333" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-334" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-335" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-336" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-337" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-338" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-339" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-340" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-341" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-342" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-343" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-344" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-345" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-346" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-347" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-348" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-349" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-350" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-351" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-352" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-353" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-354" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-355" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-356" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-357" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-358" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-359" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-360" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-361" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-362" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-363" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-364" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-365" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-366" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-367" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-368" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-369" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-370" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-371" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-372" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-373" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-374" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-375" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-376" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-377" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-378" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-379" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-380" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-381" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-382" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-383" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-384" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-385" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-386" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-387" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-388" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-389" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-390" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-391" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-392" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-393" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-394" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-395" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-396" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-397" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-398" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-399" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-400" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-401" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-402" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-403" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-404" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-405" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-406" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-407" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-408" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-409" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-410" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-411" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-412" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-413" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-414" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-415" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-416" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-417" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-418" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-419" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-420" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-421" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-422" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-423" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-424" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-425" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-426" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-427" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-428" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-429" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-430" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-431" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-432" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-433" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-434" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-435" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-436" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-437" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-438" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-439" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-440" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-441" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-442" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-443" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-444" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-445" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-446" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-447" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-448" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-449" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-450" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-451" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-452" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-453" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-454" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-455" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-456" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-457" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-458" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-459" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-460" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-461" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-462" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-463" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-464" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-465" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-466" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-467" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-468" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-469" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-470" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-471" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-472" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-473" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-474" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-475" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-476" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-477" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-478" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-479" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-480" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-481" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-482" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-483" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-484" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-485" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-486" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-487" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-488" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-489" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-490" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-491" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-492" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-493" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-494" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-495" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-496" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-497" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-498" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-499" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-500" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-501" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-502" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-503" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-504" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-505" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-506" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-507" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-508" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-509" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-510" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-511" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-512" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-513" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-514" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-515" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-516" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-517" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-518" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-519" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-520" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-521" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-522" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-523" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-524" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-525" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-526" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-527" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-528" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-529" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-530" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-531" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-532" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-533" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-534" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-535" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-536" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-537" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-538" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-539" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-540" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-541" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-542" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-543" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-544" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-545" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-546" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-547" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-548" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-549" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-550" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-551" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-552" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-553" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-554" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-555" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-556" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-557" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-558" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-559" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-560" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-561" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-562" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-563" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-564" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-565" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-566" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-567" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-568" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-569" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-570" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-571" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-572" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-573" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-574" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-575" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-576" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-577" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-578" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-579" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-580" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-581" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-582" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-583" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-584" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-585" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-586" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-587" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-588" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-589" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-590" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-591" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-592" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-593" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-594" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-595" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-596" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-597" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-598" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-599" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-600" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-601" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-602" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-603" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-604" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-605" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-606" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-607" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-608" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-609" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-610" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-611" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-612" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-613" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-614" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-615" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-616" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-617" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-618" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-619" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-620" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-621" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-622" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-623" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-624" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-625" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-626" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-627" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-628" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-629" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-630" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-631" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-632" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-633" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-634" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-635" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-636" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-637" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-638" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-639" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-640" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-641" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-642" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-643" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-644" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-645" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-646" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-647" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-648" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-649" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-650" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-651" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-652" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-653" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-654" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-655" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-656" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-657" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-658" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-659" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-660" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-661" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-662" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-663" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-664" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-665" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-666" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-667" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-668" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-669" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-670" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-671" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-672" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-673" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-674" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-675" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-676" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-677" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-678" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-679" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-680" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-681" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-682" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-683" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-684" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-685" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-686" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-687" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-688" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-689" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-690" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-691" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-692" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-693" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-694" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-695" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-696" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-697" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-698" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-699" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-700" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-701" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-702" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-703" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-704" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-705" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-706" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-707" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-708" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-709" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-710" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-711" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-712" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-713" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-714" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-715" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-716" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-717" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-718" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-719" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-720" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-721" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-722" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-723" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-724" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-725" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-726" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-727" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-728" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-729" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-730" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-731" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-732" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-733" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-734" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-735" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-736" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-737" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-738" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-739" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-740" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-741" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-742" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-743" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-744" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-745" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-746" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-747" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-748" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-749" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-750" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-751" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-752" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-753" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-754" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-755" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-756" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-757" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-758" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-759" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-760" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-761" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-762" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-763" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-764" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-765" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-766" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-767" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-768" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-769" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-770" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-771" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-772" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-773" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-774" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-775" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-776" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-777" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-778" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-779" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-780" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-781" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-782" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-783" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-784" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-785" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-786" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-787" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-788" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-789" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-790" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-791" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-792" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-793" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-794" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-795" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-796" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-797" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-798" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-799" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-800" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-801" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-802" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-803" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-804" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-805" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-806" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-807" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-808" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-809" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-810" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-811" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-812" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-813" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-814" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-815" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-816" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-817" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-818" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-819" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-820" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-821" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-822" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-823" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-824" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-825" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-826" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-827" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-828" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-829" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-830" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-831" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-832" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-833" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-834" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-835" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-836" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-837" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-838" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-839" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-840" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-841" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-842" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-843" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-844" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-845" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-846" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-847" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-848" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-849" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-850" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-851" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-852" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-853" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-854" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-855" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-856" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-857" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-858" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-859" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-860" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-861" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-862" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-863" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-864" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-865" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-866" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-867" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-868" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-869" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-870" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-871" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-872" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-873" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-874" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-875" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-876" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-877" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-878" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-879" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-880" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-881" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-882" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-883" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-884" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-885" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-886" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-887" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-888" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-889" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-890" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-891" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-892" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-893" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-894" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-895" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-896" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-897" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-898" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-899" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-900" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-901" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-902" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-903" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-904" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-905" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-906" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-907" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-908" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-909" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-910" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-911" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-912" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-913" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-914" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-915" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-916" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-917" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-918" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-919" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-920" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-921" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-922" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-923" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-924" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-925" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-926" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-927" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-928" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-929" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-930" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-931" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-932" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-933" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-934" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-935" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-936" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-937" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-938" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-939" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-940" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-941" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-942" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-943" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-944" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-945" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-946" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-947" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-948" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-949" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-950" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-951" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-952" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-953" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-954" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-955" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-956" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-957" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-958" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-959" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-960" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-961" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-962" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-963" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-964" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-965" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-966" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-967" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-968" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-969" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-970" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-971" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-972" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-973" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-974" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-975" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-976" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-977" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-978" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-979" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-980" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-981" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-982" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-983" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-984" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-985" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-986" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-987" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-988" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-989" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-990" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-991" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-992" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-993" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-994" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-995" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-996" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-997" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-998" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-999" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1000" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1001" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1002" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1003" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1004" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1005" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1006" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1007" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1008" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1009" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1010" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1011" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1012" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1013" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1014" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1015" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1016" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1017" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1018" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1019" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1020" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1021" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1022" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1023" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1024" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1025" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1026" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1027" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1028" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1029" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1030" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1031" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1032" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1033" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1034" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1035" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1036" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1037" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1038" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1039" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1040" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1041" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1042" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1043" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1044" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1045" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1046" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1047" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1048" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1049" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1050" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1051" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1052" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1053" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1054" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1055" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1056" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1057" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1058" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1059" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1060" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1061" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1062" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1063" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1064" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1065" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1066" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1067" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1068" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1069" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1070" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1071" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1072" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1073" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1074" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1075" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1076" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1077" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1078" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1079" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1080" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1081" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1082" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1083" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1084" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1085" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1086" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1087" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1088" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1089" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1090" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1091" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1092" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1093" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1094" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1095" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1096" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1097" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1098" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1099" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1100" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1101" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1102" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1103" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1104" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1105" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1106" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1107" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1108" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1109" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1110" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1111" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1112" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1113" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1114" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1115" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1116" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1117" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1118" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1119" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1120" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1121" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1122" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1123" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1124" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1125" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1126" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1127" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1128" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1129" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1130" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1131" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1132" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1133" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1134" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1135" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1136" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1137" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1138" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1139" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1140" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1141" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1142" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1143" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1144" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1145" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1146" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1147" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1148" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1149" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1150" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1151" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1152" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1153" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1154" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1155" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1156" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1157" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1158" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1159" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1160" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1161" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1162" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1163" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1164" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1165" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1166" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1167" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1168" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1169" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1170" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1171" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1172" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1173" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1174" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1175" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1176" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1177" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1178" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1179" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1180" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1181" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1182" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1183" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1184" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1185" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1186" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1187" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1188" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1189" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1190" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1191" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1192" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1193" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1194" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1195" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1196" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1197" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1198" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1199" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1200" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1201" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1202" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1203" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1204" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1205" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1206" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1207" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1208" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1209" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1210" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1211" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1212" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1213" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1214" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1215" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1216" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1217" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1218" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1219" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1220" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1221" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1222" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1223" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1224" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1225" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1226" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1227" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1228" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1229" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1230" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1231" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1232" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1233" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1234" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1235" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1236" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1237" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1238" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1239" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1240" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1241" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1242" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1243" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1244" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1245" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1246" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1247" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1248" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1249" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1250" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1251" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1252" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1253" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1254" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1255" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1256" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1257" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1258" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1259" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1260" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1261" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1262" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1263" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1264" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1265" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1266" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1267" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1268" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1269" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1270" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1271" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1272" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1273" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1274" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1275" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1276" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1277" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1278" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1279" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1280" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1281" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1282" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1283" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1284" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1285" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1286" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1287" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1288" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1289" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1290" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1291" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1292" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1293" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1294" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1295" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1296" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1297" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1298" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1299" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1300" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1301" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1302" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1303" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1304" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1305" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1306" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1307" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1308" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1309" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1310" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1311" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1312" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1313" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1314" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1315" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1316" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1317" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1318" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1319" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1320" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1321" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1322" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1323" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1324" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1325" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1326" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1327" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1328" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1329" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1330" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1331" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1332" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1333" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1334" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1335" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1336" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1337" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1338" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1339" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1340" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1341" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1342" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1343" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1344" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1345" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1346" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1347" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1348" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1349" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1350" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1351" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1352" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1353" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1354" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1355" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1356" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1357" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1358" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1359" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1360" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1361" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1362" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1363" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1364" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1365" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1366" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1367" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1368" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1369" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1370" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1371" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1372" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1373" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1374" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1375" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1376" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1377" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1378" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1379" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1380" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1381" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1382" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1383" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1384" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1385" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1386" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1387" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1388" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1389" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1390" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1391" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1392" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1393" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1394" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1395" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1396" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1397" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1398" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1399" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1400" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1401" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1402" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1403" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1404" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1405" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1406" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1407" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1408" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1409" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1410" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1411" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1412" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1413" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1414" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1415" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1416" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1417" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1418" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1419" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1420" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1421" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1422" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1423" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1424" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1425" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1426" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1427" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1428" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1429" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1430" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1431" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1432" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1433" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1434" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1435" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1436" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1437" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1438" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1439" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1440" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1441" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1442" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1443" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1444" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1445" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1446" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1447" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1448" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1449" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1450" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1451" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1452" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1453" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1454" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1455" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1456" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1457" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1458" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1459" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1460" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1461" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1462" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1463" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1464" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1465" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1466" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1467" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1468" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1469" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1470" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1471" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1472" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1473" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1474" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1475" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1476" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1477" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1478" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1479" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1480" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1481" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1482" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1483" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1484" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1485" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1486" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1487" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1488" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1489" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1490" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1491" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1492" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1493" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1494" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1495" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1496" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1497" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1498" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1499" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1500" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1501" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1502" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1503" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1504" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1505" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1506" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1507" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1508" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1509" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1510" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1511" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1512" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1513" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1514" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1515" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1516" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1517" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1518" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1519" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1520" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1521" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1522" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1523" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1524" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1525" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1526" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1527" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1528" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1529" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1530" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1531" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1532" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1533" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1534" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1535" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1536" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1537" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1538" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1539" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1540" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1541" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1542" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1543" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1544" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1545" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1546" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1547" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1548" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1549" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1550" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1551" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1552" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1553" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1554" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1555" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1556" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1557" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1558" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1559" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1560" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1561" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1562" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1563" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1564" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1565" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1566" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1567" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1568" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1569" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1570" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1571" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1572" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1573" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1574" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1575" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1576" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1577" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1578" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1579" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1580" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1581" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1582" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1583" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1584" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1585" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1586" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1587" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1588" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1589" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1590" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1591" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1592" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1593" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1594" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1595" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1596" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1597" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1598" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1599" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1600" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1601" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1602" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1603" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1604" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1605" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1606" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1607" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1608" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1609" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1610" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1611" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1612" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1613" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1614" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1615" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1616" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1617" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1618" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1619" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1620" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1621" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1622" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1623" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1624" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1625" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1626" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1627" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1628" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1629" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1630" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1631" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1632" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1633" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1634" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1635" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1636" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1637" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1638" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1639" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1640" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1641" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1642" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1643" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1644" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1645" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1646" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1647" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1648" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1649" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1650" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1651" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1652" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1653" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1654" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1655" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1656" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1657" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1658" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1659" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1660" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1661" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1662" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1663" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1664" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1665" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1666" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1667" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1668" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1669" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1670" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1671" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1672" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1673" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1674" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1675" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1676" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1677" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1678" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1679" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1680" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1681" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1682" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1683" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1684" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1685" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1686" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1687" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1688" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1689" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1690" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1691" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1692" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1693" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1694" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1695" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1696" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1697" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1698" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1699" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1700" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1701" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1702" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1703" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1704" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1705" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1706" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1707" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1708" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1709" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1710" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1711" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1712" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1713" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1714" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1715" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1716" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1717" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1718" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1719" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1720" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1721" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1722" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1723" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1724" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1725" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1726" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1727" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1728" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1729" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1730" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1731" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1732" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1733" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1734" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1735" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1736" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1737" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1738" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1739" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1740" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1741" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1742" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1743" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1744" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1745" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1746" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1747" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1748" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1749" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1750" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1751" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1752" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1753" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1754" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1755" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1756" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1757" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1758" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1759" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1760" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1761" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1762" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1763" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1764" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1765" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1766" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1767" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1768" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1769" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1770" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1771" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1772" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1773" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1774" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1775" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1776" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1777" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1778" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1779" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1780" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1781" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1782" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1783" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1784" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1785" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1786" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1787" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1788" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1789" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1790" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1791" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1792" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1793" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1794" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1795" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1796" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1797" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1798" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1799" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1800" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1801" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1802" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1803" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1804" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1805" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1806" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1807" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1808" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1809" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1810" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1811" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1812" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1813" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1814" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1815" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1816" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1817" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1818" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1819" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1820" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1821" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1822" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1823" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1824" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1825" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1826" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1827" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1828" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1829" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1830" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1831" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1832" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1833" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1834" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1835" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1836" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1837" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1838" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1839" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1840" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1841" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1842" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1843" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1844" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1845" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1846" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1847" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1848" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1849" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1850" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1851" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1852" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1853" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1854" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1855" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1856" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1857" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1858" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1859" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1860" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1861" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1862" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1863" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1864" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1865" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1866" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1867" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1868" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1869" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1870" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1871" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1872" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1873" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1874" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1875" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1876" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1877" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1878" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1879" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1880" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1881" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1882" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1883" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1884" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1885" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1886" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1887" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1888" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1889" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1890" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1891" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1892" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1893" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1894" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1895" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1896" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1897" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1898" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1899" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1900" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1901" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1902" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1903" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1904" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1905" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1906" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1907" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1908" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1909" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1910" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1911" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1912" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1913" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1914" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1915" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1916" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1917" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1918" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1919" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1920" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1921" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1922" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1923" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1924" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1925" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1926" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1927" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1928" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1929" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1930" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1931" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1932" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1933" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1934" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1935" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1936" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1937" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1938" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1939" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1940" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1941" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1942" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1943" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1944" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1945" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1946" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1947" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1948" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1949" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1950" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1951" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1952" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1953" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1954" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1955" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1956" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1957" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1958" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1959" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1960" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1961" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1962" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1963" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1964" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1965" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1966" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1967" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1968" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1969" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1970" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1971" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1972" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1973" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1974" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1975" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1976" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1977" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1978" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1979" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1980" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1981" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1982" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1983" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1984" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1985" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1986" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1987" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1988" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1989" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1990" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1991" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1992" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1993" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1994" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1995" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1996" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1997" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1998" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-1999" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2000" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2001" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2002" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2003" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2004" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2005" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2006" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2007" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2008" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2009" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2010" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2011" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2012" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2013" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2014" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2015" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2016" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2017" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2018" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2019" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2020" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2021" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2022" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2023" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2024" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2025" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2026" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2027" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2028" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2029" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2030" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2031" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2032" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2033" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2034" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2035" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2036" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2037" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2038" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2039" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2040" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2041" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2042" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2043" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2044" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2045" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2046" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2047" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2048" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2049" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2050" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2051" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2052" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2053" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2054" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2055" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2056" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2057" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2058" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2059" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2060" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2061" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2062" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2063" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2064" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2065" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2066" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2067" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2068" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2069" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2070" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2071" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2072" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2073" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2074" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2075" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2076" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2077" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2078" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2079" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2080" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2081" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2082" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2083" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2084" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2085" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2086" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2087" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2088" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2089" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2090" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2091" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2092" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2093" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2094" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2095" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2096" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2097" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2098" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2099" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2100" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2101" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2102" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2103" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2104" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2105" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2106" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2107" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2108" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2109" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2110" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2111" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2112" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2113" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2114" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2115" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2116" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2117" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2118" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2119" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2120" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2121" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2122" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2123" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2124" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2125" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2126" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2127" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2128" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2129" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2130" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2131" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2132" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2133" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2134" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2135" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2136" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2137" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2138" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2139" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2140" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2141" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2142" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2143" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2144" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2145" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2146" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2147" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2148" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2149" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2150" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2151" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2152" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2153" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2154" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2155" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2156" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2157" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2158" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2159" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2160" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2161" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2162" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2163" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2164" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2165" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2166" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2167" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2168" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2169" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2170" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2171" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2172" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2173" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2174" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2175" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2176" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2177" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2178" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2179" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2180" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2181" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2182" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2183" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2184" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2185" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2186" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2187" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2188" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2189" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2190" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2191" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2192" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2193" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2194" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2195" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2196" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2197" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2198" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2199" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2200" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2201" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2202" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2203" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2204" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2205" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2206" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2207" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2208" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2209" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2210" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2211" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2212" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2213" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2214" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2215" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2216" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2217" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2218" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2219" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2220" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2221" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2222" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2223" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2224" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2225" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2226" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2227" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2228" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2229" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2230" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2231" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2232" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2233" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2234" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2235" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2236" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2237" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2238" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2239" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2240" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2241" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2242" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2243" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2244" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2245" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2246" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2247" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2248" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2249" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2250" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2251" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2252" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2253" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2254" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2255" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2256" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2257" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2258" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2259" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2260" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2261" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2262" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2263" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2264" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2265" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2266" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2267" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2268" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2269" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2270" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2271" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2272" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2273" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2274" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2275" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2276" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2277" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2278" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2279" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2280" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2281" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2282" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2283" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2284" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2285" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2286" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2287" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2288" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2289" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2290" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2291" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2292" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2293" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2294" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2295" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2296" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2297" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2298" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2299" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2300" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2301" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2302" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2303" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2304" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2305" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2306" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2307" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2308" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2309" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2310" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2311" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2312" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2313" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2314" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2315" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2316" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2317" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2318" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2319" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2320" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2321" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2322" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2323" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2324" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2325" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2326" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2327" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2328" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2329" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2330" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2331" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2332" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2333" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2334" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2335" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2336" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2337" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2338" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2339" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2340" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2341" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2342" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2343" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2344" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2345" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2346" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2347" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2348" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2349" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2350" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2351" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2352" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2353" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2354" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2355" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2356" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2357" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2358" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2359" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2360" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2361" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2362" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2363" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2364" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2365" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2366" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2367" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2368" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2369" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2370" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2371" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2372" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2373" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2374" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2375" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2376" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2377" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2378" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2379" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2380" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2381" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2382" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2383" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2384" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2385" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2386" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2387" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2388" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2389" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2390" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2391" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2392" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2393" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2394" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2395" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2396" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2397" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2398" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2399" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2400" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2401" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2402" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2403" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2404" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2405" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2406" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2407" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2408" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2409" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2410" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2411" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2412" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2413" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2414" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2415" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2416" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2417" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2418" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2419" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2420" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2421" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2422" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2423" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2424" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2425" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2426" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2427" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2428" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2429" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2430" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2431" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2432" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2433" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2434" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2435" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2436" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2437" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2438" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2439" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2440" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2441" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2442" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2443" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2444" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2445" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2446" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2447" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2448" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2449" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2450" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2451" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2452" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2453" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2454" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2455" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2456" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2457" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2458" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2459" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2460" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2461" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2462" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2463" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2464" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2465" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2466" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2467" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2468" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2469" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2470" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2471" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2472" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2473" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2474" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2475" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2476" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2477" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2478" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2479" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2480" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2481" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2482" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2483" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2484" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2485" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2486" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2487" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2488" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2489" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2490" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2491" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2492" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2493" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2494" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2495" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2496" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2497" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2498" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2499" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2500" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2501" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2502" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2503" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2504" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2505" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2506" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2507" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2508" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2509" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2510" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2511" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2512" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2513" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2514" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2515" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2516" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2517" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2518" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2519" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2520" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2521" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2522" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2523" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2524" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2525" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2526" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2527" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2528" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2529" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2530" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2531" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2532" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2533" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2534" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2535" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2536" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2537" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2538" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2539" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2540" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2541" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2542" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2543" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2544" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2545" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2546" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2547" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2548" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2549" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2550" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2551" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2552" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2553" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2554" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2555" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2556" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2557" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2558" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2559" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2560" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2561" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2562" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2563" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2564" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2565" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2566" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2567" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2568" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2569" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2570" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2571" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2572" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2573" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2574" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2575" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2576" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2577" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2578" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2579" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2580" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2581" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2582" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2583" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2584" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2585" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2586" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2587" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2588" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2589" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2590" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2591" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2592" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2593" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2594" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2595" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2596" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2597" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2598" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2599" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2600" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2601" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2602" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2603" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2604" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2605" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2606" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2607" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2608" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2609" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2610" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2611" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2612" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2613" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2614" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2615" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2616" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2617" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2618" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2619" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2620" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2621" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2622" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2623" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2624" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2625" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2626" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2627" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2628" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2629" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2630" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2631" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2632" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2633" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2634" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2635" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2636" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2637" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2638" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2639" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2640" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2641" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2642" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2643" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2644" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2645" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2646" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2647" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2648" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2649" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2650" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2651" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2652" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2653" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2654" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2655" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2656" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2657" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2658" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2659" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2660" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2661" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2662" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2663" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2664" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2665" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2666" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2667" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2668" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2669" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2670" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2671" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2672" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2673" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2674" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2675" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2676" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2677" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2678" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2679" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2680" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2681" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2682" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2683" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2684" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2685" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2686" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2687" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2688" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2689" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2690" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2691" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2692" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2693" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2694" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2695" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2696" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2697" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2698" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2699" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2700" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2701" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2702" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2703" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2704" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2705" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2706" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2707" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2708" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2709" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2710" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2711" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2712" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2713" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2714" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2715" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2716" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2717" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2718" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2719" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2720" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2721" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2722" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2723" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2724" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2725" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2726" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2727" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2728" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2729" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2730" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2731" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2732" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2733" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2734" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2735" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2736" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2737" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2738" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2739" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2740" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2741" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2742" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2743" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2744" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2745" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2746" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2747" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2748" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2749" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2750" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2751" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2752" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2753" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2754" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2755" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2756" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2757" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2758" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2759" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2760" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2761" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2762" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2763" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2764" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2765" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2766" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2767" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2768" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2769" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2770" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2771" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2772" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2773" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2774" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2775" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2776" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2777" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2778" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2779" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2780" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2781" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2782" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2783" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2784" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2785" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2786" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2787" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2788" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2789" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2790" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2791" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2792" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2793" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2794" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2795" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2796" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2797" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2798" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2799" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2800" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2801" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2802" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2803" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2804" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2805" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2806" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2807" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2808" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2809" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2810" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2811" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2812" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2813" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2814" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2815" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2816" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2817" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2818" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2819" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2820" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2821" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2822" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2823" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2824" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2825" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2826" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2827" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2828" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2829" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2830" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2831" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2832" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2833" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2834" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2835" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2836" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2837" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2838" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2839" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2840" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2841" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2842" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2843" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2844" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2845" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2846" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2847" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2848" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2849" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2850" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2851" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2852" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2853" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2854" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2855" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2856" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2857" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2858" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2859" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2860" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2861" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2862" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2863" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2864" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2865" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2866" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2867" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2868" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2869" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2870" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2871" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2872" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2873" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2874" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2875" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2876" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2877" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2878" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2879" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2880" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2881" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2882" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2883" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2884" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2885" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2886" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2887" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2888" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2889" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2890" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2891" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2892" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2893" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2894" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2895" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2896" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2897" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2898" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2899" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2900" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2901" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2902" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2903" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2904" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2905" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2906" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2907" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2908" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2909" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2910" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2911" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2912" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2913" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2914" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2915" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2916" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2917" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2918" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2919" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2920" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2921" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2922" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2923" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2924" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2925" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2926" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2927" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2928" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2929" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2930" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2931" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2932" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2933" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2934" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2935" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2936" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2937" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2938" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2939" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2940" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2941" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2942" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2943" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2944" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2945" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2946" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2947" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2948" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2949" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2950" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2951" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2952" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2953" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2954" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2955" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2956" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2957" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2958" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2959" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2960" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2961" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2962" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2963" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2964" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2965" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2966" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2967" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2968" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2969" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2970" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2971" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2972" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2973" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2974" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2975" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2976" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2977" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2978" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2979" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2980" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2981" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2982" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2983" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2984" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2985" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2986" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2987" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2988" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2989" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2990" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2991" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2992" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2993" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2994" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2995" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2996" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2997" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2998" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-2999" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3000" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3001" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3002" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3003" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3004" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3005" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3006" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3007" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3008" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3009" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3010" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3011" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3012" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3013" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3014" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3015" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3016" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3017" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3018" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3019" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3020" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3021" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3022" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3023" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3024" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3025" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3026" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3027" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3028" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3029" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3030" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3031" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3032" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3033" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3034" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3035" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3036" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3037" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3038" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3039" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3040" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3041" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3042" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3043" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3044" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3045" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3046" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3047" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3048" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3049" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3050" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3051" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3052" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3053" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3054" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3055" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3056" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3057" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3058" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3059" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3060" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3061" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3062" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3063" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3064" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3065" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3066" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3067" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3068" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3069" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3070" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3071" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3072" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3073" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3074" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3075" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3076" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3077" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3078" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3079" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3080" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3081" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3082" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3083" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3084" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3085" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3086" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3087" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3088" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3089" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3090" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3091" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3092" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3093" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3094" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3095" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3096" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3097" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3098" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3099" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3100" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3101" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3102" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3103" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3104" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3105" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3106" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3107" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3108" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3109" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3110" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3111" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3112" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3113" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3114" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3115" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3116" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3117" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3118" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3119" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3120" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3121" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3122" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3123" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3124" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3125" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3126" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3127" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3128" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3129" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3130" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3131" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3132" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3133" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3134" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3135" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3136" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3137" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3138" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3139" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3140" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3141" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3142" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3143" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3144" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3145" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3146" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3147" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3148" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3149" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3150" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3151" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3152" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3153" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3154" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3155" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3156" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3157" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3158" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3159" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3160" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3161" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3162" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3163" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3164" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3165" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3166" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3167" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3168" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3169" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3170" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3171" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3172" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3173" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3174" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3175" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3176" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3177" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3178" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3179" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3180" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3181" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3182" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3183" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3184" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3185" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3186" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3187" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3188" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3189" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3190" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3191" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3192" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3193" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3194" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3195" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3196" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3197" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3198" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3199" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3200" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3201" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3202" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3203" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3204" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3205" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3206" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3207" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3208" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3209" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3210" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3211" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3212" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3213" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3214" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3215" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3216" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3217" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3218" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3219" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3220" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3221" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3222" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3223" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3224" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3225" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3226" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3227" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3228" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3229" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3230" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3231" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3232" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3233" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3234" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3235" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3236" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3237" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3238" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3239" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3240" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3241" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3242" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3243" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3244" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3245" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3246" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3247" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3248" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3249" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3250" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3251" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3252" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3253" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3254" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3255" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3256" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3257" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3258" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3259" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3260" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3261" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3262" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3263" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3264" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3265" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3266" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3267" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3268" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3269" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3270" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3271" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3272" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3273" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3274" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3275" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3276" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3277" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3278" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3279" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3280" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3281" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3282" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3283" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3284" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3285" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3286" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3287" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3288" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3289" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3290" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3291" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3292" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3293" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3294" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3295" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3296" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3297" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3298" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3299" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3300" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3301" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3302" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3303" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3304" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3305" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3306" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3307" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3308" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3309" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3310" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3311" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3312" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3313" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3314" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3315" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3316" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3317" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3318" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3319" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3320" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3321" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3322" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3323" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3324" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3325" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3326" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3327" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3328" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3329" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3330" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3331" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3332" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3333" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3334" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3335" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3336" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3337" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3338" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3339" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3340" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3341" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3342" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3343" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3344" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3345" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3346" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3347" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3348" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3349" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3350" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3351" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3352" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3353" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3354" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3355" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3356" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3357" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3358" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3359" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3360" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3361" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3362" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3363" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3364" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3365" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3366" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3367" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3368" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3369" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3370" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3371" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3372" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3373" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3374" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3375" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3376" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3377" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3378" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3379" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3380" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3381" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3382" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3383" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3384" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3385" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3386" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3387" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3388" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3389" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3390" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3391" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3392" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3393" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3394" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3395" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3396" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3397" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3398" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3399" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3400" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3401" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3402" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3403" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3404" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3405" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3406" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3407" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3408" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3409" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3410" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3411" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3412" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3413" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3414" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3415" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3416" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3417" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3418" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3419" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3420" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3421" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3422" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3423" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3424" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3425" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3426" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3427" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3428" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3429" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3430" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3431" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3432" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3433" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3434" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3435" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3436" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3437" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3438" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3439" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3440" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3441" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3442" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3443" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3444" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3445" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3446" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3447" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3448" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3449" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3450" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3451" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3452" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3453" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3454" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3455" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3456" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3457" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3458" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3459" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3460" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3461" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3462" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3463" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3464" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3465" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3466" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3467" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3468" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3469" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3470" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3471" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3472" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3473" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3474" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3475" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3476" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3477" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3478" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3479" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3480" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3481" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3482" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3483" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3484" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3485" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3486" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3487" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3488" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3489" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3490" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3491" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3492" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3493" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3494" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3495" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3496" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3497" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3498" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3499" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3500" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3501" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3502" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3503" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3504" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3505" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3506" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3507" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3508" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3509" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3510" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3511" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3512" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3513" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3514" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3515" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3516" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3517" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3518" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3519" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3520" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3521" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3522" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3523" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3524" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3525" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3526" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3527" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3528" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3529" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3530" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3531" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3532" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3533" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3534" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3535" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3536" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3537" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3538" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3539" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3540" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3541" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3542" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3543" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3544" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3545" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3546" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3547" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3548" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3549" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3550" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3551" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3552" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3553" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3554" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3555" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3556" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3557" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3558" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3559" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3560" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3561" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3562" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3563" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3564" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3565" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3566" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3567" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3568" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3569" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3570" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3571" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3572" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3573" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3574" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3575" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3576" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3577" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3578" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3579" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3580" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3581" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3582" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3583" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3584" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3585" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3586" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3587" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3588" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3589" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3590" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3591" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3592" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3593" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3594" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3595" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3596" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3597" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3598" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3599" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3600" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3601" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3602" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3603" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3604" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3605" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3606" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3607" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3608" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3609" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3610" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3611" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3612" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3613" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3614" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3615" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3616" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3617" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3618" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3619" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3620" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3621" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3622" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3623" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3624" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3625" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3626" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3627" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3628" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3629" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3630" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3631" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3632" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3633" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3634" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3635" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3636" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3637" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3638" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3639" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3640" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3641" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3642" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3643" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3644" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3645" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3646" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3647" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3648" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3649" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3650" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3651" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3652" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3653" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3654" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3655" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3656" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3657" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3658" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3659" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3660" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3661" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3662" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3663" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3664" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3665" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3666" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3667" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3668" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3669" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3670" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3671" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3672" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3673" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3674" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3675" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3676" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3677" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3678" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3679" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3680" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3681" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3682" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3683" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3684" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3685" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3686" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3687" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3688" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3689" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3690" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3691" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3692" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3693" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3694" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3695" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3696" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3697" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3698" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3699" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3700" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3701" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3702" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3703" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3704" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3705" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3706" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3707" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3708" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3709" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3710" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3711" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3712" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3713" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3714" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3715" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3716" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3717" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3718" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3719" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3720" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3721" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3722" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3723" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3724" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3725" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3726" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3727" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3728" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3729" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3730" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3731" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3732" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3733" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3734" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3735" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3736" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3737" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3738" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3739" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3740" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3741" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3742" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3743" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3744" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3745" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3746" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3747" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3748" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3749" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3750" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3751" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3752" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3753" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3754" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3755" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3756" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3757" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3758" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3759" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3760" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3761" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3762" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3763" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3764" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3765" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3766" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3767" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3768" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3769" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3770" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3771" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3772" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3773" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3774" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3775" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3776" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3777" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3778" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3779" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3780" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3781" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3782" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3783" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3784" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3785" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3786" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3787" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3788" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3789" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3790" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3791" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3792" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3793" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3794" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3795" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3796" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3797" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3798" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3799" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3800" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3801" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3802" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3803" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3804" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3805" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3806" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3807" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3808" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3809" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3810" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3811" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3812" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3813" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3814" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3815" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3816" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3817" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3818" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3819" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3820" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3821" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3822" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3823" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3824" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3825" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3826" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3827" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3828" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3829" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3830" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3831" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3832" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3833" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3834" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3835" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3836" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3837" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3838" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3839" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3840" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3841" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3842" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3843" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3844" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3845" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3846" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3847" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3848" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3849" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3850" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3851" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3852" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3853" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3854" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3855" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3856" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3857" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3858" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3859" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3860" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3861" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3862" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3863" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3864" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3865" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3866" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3867" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3868" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3869" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3870" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3871" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3872" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3873" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3874" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3875" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3876" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3877" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3878" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3879" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3880" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3881" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3882" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3883" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3884" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3885" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3886" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3887" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3888" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3889" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3890" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3891" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3892" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3893" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3894" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3895" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3896" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3897" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3898" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3899" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3900" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3901" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3902" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3903" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3904" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3905" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3906" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3907" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3908" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3909" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3910" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3911" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3912" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3913" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3914" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3915" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3916" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3917" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3918" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3919" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3920" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3921" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3922" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3923" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3924" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3925" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3926" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3927" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3928" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3929" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3930" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3931" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3932" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3933" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3934" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3935" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3936" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3937" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3938" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3939" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3940" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3941" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3942" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3943" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3944" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3945" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3946" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3947" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3948" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3949" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3950" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3951" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3952" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3953" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3954" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3955" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3956" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3957" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3958" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3959" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3960" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3961" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3962" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3963" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3964" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3965" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3966" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3967" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3968" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3969" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3970" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3971" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3972" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3973" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3974" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3975" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3976" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3977" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3978" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3979" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3980" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3981" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3982" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3983" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3984" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3985" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3986" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3987" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3988" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3989" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3990" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3991" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3992" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3993" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3994" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3995" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3996" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3997" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3998" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-3999" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4000" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4001" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4002" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4003" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4004" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4005" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4006" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4007" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4008" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4009" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4010" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4011" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4012" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4013" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4014" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4015" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4016" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4017" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4018" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4019" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4020" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4021" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4022" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4023" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4024" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4025" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4026" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4027" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4028" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4029" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4030" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4031" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4032" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4033" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4034" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4035" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4036" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4037" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4038" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4039" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4040" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4041" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4042" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4043" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4044" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4045" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4046" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4047" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4048" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4049" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4050" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4051" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4052" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4053" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4054" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4055" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4056" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4057" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4058" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4059" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4060" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4061" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4062" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4063" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4064" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4065" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4066" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4067" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4068" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4069" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4070" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4071" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4072" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4073" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4074" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4075" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4076" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4077" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4078" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4079" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4080" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4081" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4082" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4083" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4084" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4085" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4086" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4087" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4088" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4089" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4090" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4091" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4092" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4093" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4094" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4095" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4096" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4097" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4098" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4099" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4100" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4101" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4102" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4103" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4104" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4105" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4106" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4107" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4108" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4109" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4110" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4111" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4112" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4113" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4114" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4115" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4116" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4117" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4118" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4119" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4120" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4121" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4122" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4123" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4124" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4125" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4126" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4127" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4128" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4129" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4130" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4131" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4132" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4133" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4134" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4135" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4136" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4137" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4138" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4139" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4140" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4141" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4142" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4143" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4144" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4145" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4146" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4147" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4148" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4149" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4150" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4151" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4152" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4153" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4154" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4155" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4156" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4157" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4158" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4159" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4160" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4161" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4162" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4163" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4164" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4165" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4166" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4167" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4168" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4169" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4170" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4171" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4172" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4173" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4174" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4175" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4176" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4177" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4178" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4179" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4180" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4181" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4182" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4183" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4184" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4185" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4186" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4187" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4188" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4189" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4190" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4191" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4192" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4193" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4194" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4195" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4196" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4197" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4198" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4199" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4200" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4201" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4202" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4203" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4204" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4205" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4206" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4207" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4208" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4209" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4210" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4211" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4212" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4213" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4214" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4215" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4216" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4217" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4218" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4219" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4220" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4221" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4222" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4223" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4224" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4225" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4226" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4227" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4228" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4229" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4230" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4231" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4232" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4233" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4234" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4235" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4236" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4237" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4238" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4239" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4240" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4241" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4242" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4243" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4244" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4245" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4246" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4247" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4248" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4249" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4250" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4251" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4252" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4253" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4254" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4255" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4256" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4257" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4258" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4259" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4260" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4261" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4262" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4263" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4264" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4265" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4266" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4267" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4268" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4269" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4270" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4271" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4272" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4273" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4274" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4275" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4276" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4277" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4278" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4279" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4280" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4281" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4282" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4283" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4284" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4285" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4286" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4287" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4288" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4289" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4290" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4291" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4292" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4293" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4294" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4295" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4296" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4297" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4298" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4299" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4300" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4301" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4302" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4303" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4304" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4305" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4306" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4307" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4308" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4309" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4310" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4311" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4312" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4313" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4314" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4315" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4316" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4317" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4318" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4319" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4320" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4321" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4322" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4323" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4324" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4325" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4326" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4327" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4328" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4329" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4330" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4331" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4332" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4333" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4334" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4335" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4336" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4337" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4338" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4339" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4340" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4341" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4342" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4343" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4344" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4345" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4346" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4347" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4348" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4349" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4350" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4351" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4352" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4353" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4354" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4355" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4356" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4357" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4358" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4359" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4360" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4361" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4362" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4363" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4364" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4365" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4366" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4367" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4368" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4369" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4370" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4371" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4372" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4373" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4374" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4375" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4376" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4377" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4378" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4379" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4380" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4381" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4382" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4383" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4384" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4385" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4386" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4387" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4388" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4389" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4390" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4391" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4392" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4393" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4394" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4395" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4396" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4397" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4398" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4399" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4400" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4401" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4402" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4403" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4404" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4405" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4406" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4407" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4408" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4409" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4410" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4411" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4412" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4413" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4414" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4415" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4416" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4417" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4418" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4419" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4420" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4421" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4422" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4423" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4424" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4425" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4426" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4427" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4428" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4429" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4430" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4431" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4432" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4433" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4434" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4435" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4436" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4437" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4438" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4439" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4440" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4441" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4442" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4443" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4444" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4445" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4446" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4447" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4448" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4449" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4450" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4451" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4452" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4453" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4454" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4455" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4456" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4457" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4458" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4459" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4460" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4461" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4462" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4463" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4464" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4465" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4466" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4467" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4468" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4469" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4470" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4471" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4472" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4473" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4474" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4475" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4476" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4477" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4478" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4479" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4480" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4481" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4482" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4483" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4484" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4485" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4486" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4487" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4488" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4489" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4490" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4491" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4492" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4493" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4494" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4495" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4496" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4497" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4498" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4499" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4500" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4501" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4502" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4503" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4504" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4505" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4506" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4507" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4508" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4509" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4510" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4511" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4512" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4513" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4514" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4515" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4516" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4517" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4518" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4519" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4520" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4521" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4522" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4523" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4524" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4525" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4526" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4527" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4528" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4529" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4530" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4531" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4532" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4533" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4534" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4535" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4536" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4537" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4538" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4539" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4540" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4541" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4542" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4543" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4544" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4545" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4546" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4547" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4548" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4549" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4550" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4551" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4552" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4553" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4554" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4555" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4556" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4557" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4558" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4559" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4560" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4561" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4562" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4563" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4564" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4565" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4566" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4567" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4568" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4569" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4570" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4571" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4572" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4573" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4574" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4575" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4576" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4577" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4578" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4579" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4580" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4581" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4582" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4583" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4584" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4585" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4586" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4587" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4588" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4589" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4590" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4591" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4592" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4593" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4594" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4595" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4596" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4597" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4598" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4599" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4600" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4601" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4602" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4603" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4604" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4605" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4606" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4607" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4608" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4609" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4610" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4611" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4612" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4613" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4614" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4615" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4616" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4617" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4618" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4619" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4620" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4621" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4622" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4623" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4624" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4625" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4626" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4627" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4628" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4629" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4630" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4631" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4632" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4633" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4634" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4635" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4636" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4637" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4638" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4639" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4640" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4641" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4642" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4643" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4644" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4645" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4646" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4647" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4648" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4649" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4650" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4651" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4652" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4653" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4654" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4655" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4656" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4657" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4658" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4659" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4660" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4661" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4662" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4663" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4664" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4665" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4666" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4667" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4668" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4669" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4670" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4671" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4672" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4673" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4674" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4675" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4676" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4677" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4678" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4679" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4680" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4681" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4682" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4683" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4684" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4685" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4686" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4687" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4688" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4689" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4690" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4691" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4692" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4693" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4694" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4695" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4696" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4697" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4698" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4699" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4700" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4701" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4702" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4703" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4704" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4705" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4706" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4707" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4708" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4709" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4710" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4711" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4712" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4713" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4714" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4715" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4716" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4717" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4718" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4719" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4720" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4721" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4722" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4723" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4724" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4725" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4726" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4727" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4728" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4729" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4730" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4731" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4732" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4733" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4734" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4735" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4736" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4737" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4738" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4739" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4740" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4741" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4742" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4743" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4744" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4745" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4746" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4747" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4748" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4749" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4750" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4751" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4752" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4753" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4754" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4755" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4756" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4757" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4758" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4759" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4760" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4761" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4762" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4763" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4764" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4765" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4766" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4767" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4768" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4769" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4770" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4771" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4772" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4773" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4774" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4775" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4776" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4777" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4778" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4779" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4780" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4781" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4782" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4783" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4784" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4785" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4786" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4787" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4788" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4789" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4790" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4791" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4792" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4793" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4794" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4795" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4796" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4797" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4798" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4799" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4800" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4801" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4802" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4803" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4804" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4805" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4806" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4807" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4808" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4809" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4810" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4811" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4812" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4813" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4814" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4815" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4816" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4817" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4818" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4819" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4820" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4821" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4822" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4823" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4824" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4825" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4826" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4827" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4828" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4829" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4830" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4831" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4832" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4833" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4834" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4835" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4836" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4837" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4838" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4839" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4840" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4841" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4842" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4843" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4844" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4845" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4846" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4847" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4848" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4849" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4850" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4851" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4852" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4853" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4854" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4855" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4856" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4857" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4858" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4859" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4860" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4861" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4862" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4863" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4864" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4865" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4866" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4867" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4868" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4869" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4870" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4871" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4872" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4873" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4874" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4875" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4876" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4877" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4878" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4879" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4880" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4881" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4882" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4883" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4884" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4885" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4886" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4887" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4888" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4889" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4890" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4891" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4892" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4893" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4894" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4895" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4896" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4897" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4898" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4899" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4900" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4901" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4902" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4903" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4904" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4905" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4906" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4907" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4908" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4909" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4910" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4911" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4912" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4913" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4914" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4915" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4916" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4917" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4918" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4919" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4920" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4921" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4922" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4923" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4924" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4925" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4926" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4927" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4928" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4929" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4930" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4931" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4932" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4933" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4934" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4935" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4936" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4937" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4938" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4939" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4940" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4941" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4942" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4943" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4944" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4945" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4946" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4947" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4948" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4949" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4950" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4951" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4952" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4953" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4954" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4955" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4956" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4957" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4958" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4959" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4960" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4961" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4962" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4963" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4964" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4965" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4966" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4967" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4968" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4969" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4970" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4971" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4972" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4973" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4974" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4975" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4976" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4977" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4978" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4979" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4980" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4981" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4982" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4983" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4984" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4985" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4986" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4987" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4988" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4989" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4990" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4991" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4992" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4993" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4994" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4995" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4996" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4997" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4998" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-4999" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
policy "s3-block-public-access-account-level-5000" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}
