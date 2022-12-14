# tf-module-ssm
<!-- BEGIN_TF_DOCS -->
## Requirements

Install the Session Manager plugin for the AWS CLI (to have access to the instances through the terminal)

macOS
```sh
curl "https://s3.amazonaws.com/session-manager-downloads/plugin/latest/mac/session-manager-plugin.pkg" -o "session-manager-plugin.pkg"

sudo installer -pkg session-manager-plugin.pkg -target /
sudo ln -s /usr/local/sessionmanagerplugin/bin/session-manager-plugin /usr/local/bin/session-manager-plugin
```

Otherwise you can use Session Manager on the AWS Management Console.

**Instances deployed without SSH**

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.36.1 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_demo2_ec2_instance"></a> [demo2\_ec2\_instance](#module\_demo2\_ec2\_instance) | ./ssm-ec2-module | n/a |
| <a name="module_demo_ec2_instance"></a> [demo\_ec2\_instance](#module\_demo\_ec2\_instance) | ./ssm-ec2-module | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_ami.my_ubuntu_image](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ami) | data source |
| [aws_subnet.private](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/subnet) | data source |
| [aws_vpc.talent_academy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/vpc) | data source |

## Inputs

No inputs.

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_demo2_ec2_instance_id"></a> [demo2\_ec2\_instance\_id](#output\_demo2\_ec2\_instance\_id) | n/a |
| <a name="output_demo_ec2_instance_id"></a> [demo\_ec2\_instance\_id](#output\_demo\_ec2\_instance\_id) | n/a |
<!-- END_TF_DOCS -->