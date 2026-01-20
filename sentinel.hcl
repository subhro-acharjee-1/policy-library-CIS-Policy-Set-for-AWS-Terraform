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
