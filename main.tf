// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: MIT-0

module "ou_1" {
  for_each   = var.organizational_units
  source     = "./modules/ou1"
  ou         = each.key
  child_ous  = each.value
  root_ou_id = var.root_ou
}
