# Terraform config to create infrastructure

## Initialization

Please run following command to download all required modules
```
terraform init
```

## Validation
To validate your configuration, run following command
```
terraform validate
terraform fmt
```

## Terraform plan
Before apply your configuration, make sure that changes to your infrastructure represent your expectations
```
terraform plan
```

## Aplly configuration
To apply your configuration use following command
```
terraform apply
```
It is going to run `terraform plan` and ask you confirmation to apply.