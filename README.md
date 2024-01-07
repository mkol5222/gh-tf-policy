# gh-tf-policy

## Concept

### Flow

* commit `policy/policy.json` on branch *plan* to run Github Action with `terraform plan` and store the plan as artifact
* later merge to branch *apply* to run Github Action to deploy policy using `terraform apply`

### Terraform state

* store Terraform state as (encrypted) artifact similar to [sturlabragason/terraform_state_artifact@v1](https://github.com/sturlabragason/terraform_state_artifact/blob/main/action.yml) to avoid need for TF state store in simple demo

