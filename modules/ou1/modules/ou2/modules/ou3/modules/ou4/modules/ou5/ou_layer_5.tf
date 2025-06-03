// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: MIT-0

resource "aws_organizations_organizational_unit" "this" {
  name      = var.ou
  parent_id = var.parent_ou_id
}

variable "ou" {
  type = string
}

variable "parent_ou_id" {
  type = string
}
