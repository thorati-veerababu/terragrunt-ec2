# EC2 Deployment with Terragrunt and Spacelift

## Structure
```
├── terragrunt.hcl          # Root configuration
├── modules/ec2/            # Reusable EC2 module
├── environments/
│   ├── dev/               # Development environment
│   ├── stg/               # Staging environment
│   └── prod/              # Production environment
└── .spacelift/config.yml  # Spacelift stack definitions
```

## Setup
1. Update S3 bucket name in `terragrunt.hcl`
2. Configure AWS credentials
3. Push to repository and connect to Spacelift

## Deploy
```bash
# Individual environment
cd environments/dev && terragrunt apply

# All environments
terragrunt run-all apply
```