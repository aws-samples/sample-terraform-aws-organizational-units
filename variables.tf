// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: MIT-0

variable "root_ou_id" {
  description = ""
  type        = string
}

variable "organizational_units" {
  type = map(any)
}
