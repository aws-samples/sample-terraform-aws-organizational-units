# terraform-aws-organizational-units

Deploy Organizational Units (OUs) with Terraform.

## Module Inputs

```hcl
module "ou" {
  source               = "github.com/aws-samples/sample-terraform-aws-organizational-units"
  root_ou_id           = data.aws_organizations_organization.org.roots[0].id
  organizational_units = {
   "Workloads" = {
       "Dev" = {}
       "Test" = {
           "QAT" = {}
           "Pre-Prod" = {}
           }
       "Prod" = {}
       }
   "SharedServices" = {}
   "Sandbox"        = {}
   "Quarantine"     = {}
 }
}
```

`root_ou_id` is the root OU id. [Data Source: aws_organizations_organization](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/organizations_organization)can be used to return it.  

`organizational_units` is a map of the OUs. As per [service quotas](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_reference_limits.html), these can be nested five deep. 

## Related Resources

- [Resource: aws_organizations_organizational_unit](https://registry.terraform.io/providers/hashicorp/aws/3.24.0/docs/resources/organizations_organizational_unit)
- [Data Source: aws_organizations_organization](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/organizations_organization)

## Security

See [CONTRIBUTING](CONTRIBUTING.md#security-issue-notifications) for more information.

## License

This library is licensed under the MIT-0 License. See the LICENSE file.
