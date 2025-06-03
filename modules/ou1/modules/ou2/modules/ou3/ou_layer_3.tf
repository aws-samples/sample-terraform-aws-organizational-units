// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: MIT-0

resource "aws_organizations_organizational_unit" "this" {
  name      = var.ou
  parent_id = var.parent_ou_id
}

module "ou_4" {
  for_each     = var.child_ous
  source       = "./modules/ou4"
  ou           = each.key
  child_ous    = each.value
  parent_ou_id = aws_organizations_organizational_unit.this.id
}

variable "ou" {
  type = string
}

variable "child_ous" {
}

variable "parent_ou_id" {
  type = string
}
