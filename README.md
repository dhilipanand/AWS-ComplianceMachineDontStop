# AWS Compliance Machine Don't Stop!
##### Proof of Value Terraform Scripts to utilize Amazon Web Services Managed Security, Governance & Identity Services to Support your AWS Account Security Posture. 
These Terraform Scripts are made with using the Preview of AWS Security Hub in Mind. Security Hub collects Information from GuardDuty, Macie, Inspector as well as AWS Config. Security Hub (the Preview at least) comes with Center for Internet Security (CIS) Config Rules that follow best security practices for account-wide security posture. The Services that are turned on, as well as the inline CloudFormation Stack are all made to support these CIS Rules from Security Hub, and also go a good way towards general security hardening for your account. Services that are used are listed later in the Readme, this is also a work in progress and other features may be added such as Amazon Macie, AWS WAF, and Custom Lambda Functions / CloudWatch Events to further Support Security Posture on AWS.

## Getting Started

### Baseline Knowledge Required
- Intermediate Level Understanding of Deploying AWS Resources with Terraform
- Basic Level Understanding of how AWS Security, Compliance and Identity Services Work with One Another
- Basic Knowledge of Terraform Concepts & Commands Expertise (and Somewhere to Use it from)
- Your own provider.tf file (https://www.terraform.io/docs/providers/aws/)
- The Region Your Deploy this PoV to **Must Not Have** GuardDuty, Security Hub, or Config turned on

### AWS Services Used
- AWS Config (https://aws.amazon.com/config/)
    - A service that enables you to assess, audit, and evaluate the configurations of your AWS resources
- AWS CloudWatch Logs (https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/WhatIsCloudWatchLogs.html)
    - Used to monitor, store, and access your log files from Amazon Elastic Compute Cloud (Amazon EC2) instances, AWS CloudTrail, Route 53, and other sources
- AWS CloudTrail (https://aws.amazon.com/cloudtrail/)
    - A service that enables governance, compliance, operational auditing, and risk auditing of your AWS account
- AWS IAM (https://aws.amazon.com/iam/)
    - Enables you to manage access to AWS services and resources securely
- AWS Inspector (https://aws.amazon.com/inspector/)
    - Automated security assessment service that helps improve the security and compliance of applications deployed on AWS. Amazon Inspector automatically assesses applications for exposure, vulnerabilities, and deviations from best practices
- AWS SNS (https://aws.amazon.com/sns/)
    - A highly available, durable, secure, fully managed pub/sub messaging service that enables you to decouple microservices, distributed systems, and serverless applications
- AWS S3 (https://aws.amazon.com/s3/)
    - An object storage service that offers industry-leading scalability, data availability, security, and performance. This means customers of all sizes and industries can use it to store and protect any amount of data for a range of use cases, such as websites, mobile applications, backup and restore, archive, enterprise applications, IoT devices, and big data analytics
- AWS KMS (https://aws.amazon.com/kms/)
    - KMS makes it easy for you to create and manage keys and control the use of encryption across a wide range of AWS services and in your applications. AWS KMS is a secure and resilient service that uses FIPS 140-2 validated hardware security modules to protect your keys
- AWS Security Hub (https://aws.amazon.com/security-hub/)
    - Security Hub gives you a comprehensive view of your high-priority security alerts and compliance status across AWS accounts
- AWS CloudFormation (https://aws.amazon.com/cloudformation/)
    - CloudFormation provides a common language for you to describe and provision all the infrastructure resources in your cloud environment. CloudFormation allows you to use a simple text file to model and provision, in an automated and secure manner, all the resources needed for your applications across all regions and accounts
- AWS GuardDuty (https://aws.amazon.com/guardduty/)
    - A threat detection service that continuously monitors for malicious activity and unauthorized behavior to protect your AWS accounts and workloads

### Prerequisites:
**Below Steps are Done on a Fresh Install of Ubuntu 18.04LTS**
1. Install Unzip
`sudo apt-get install unzip`
2. Grab the Latest Version of Terraform (https://www.terraform.io/downloads.html)
`wget https://releases.hashicorp.com/terraform/0.11.13/terraform_0.11.13_linux_amd64.zip`
3. Unzip Terraform Installation
`unzip terraform_0.11.13_linux_amd64.zip`
4. Move to /local/bin - or you can add Terraform to your PATH
`sudo mv terraform /usr/local/bin/`
5. Ensure that Terraform is Installed Correctly
`terraform --version`

### Installing & Configuration
1. Create & Navigate to a New Directory
`mkdir aws-cmds && cd aws-cmds`
2. Clone this Repo
`git clone https://github.com/jonrau1/AWS-ComplianceMachineDontStop.git`
3. Create your Provider (see above for Link)
`nano provider.tf`
4. Fill out the *variables.tf* file
`nano variables.tf`

### Deploying
1. Initialize your AWS Provider
`terraform init`
2. Create a Plan
`terraform plan`
3. Apply the Plan
`terraform apply`
4. Deploy
`yes`

### Out of Scope
- Provider.tf
- Filling Out Variables.tf for you (mostly)
- .tfvars
- Macie -- Terraform currently does not support Activating Macie, only subscribing Buckets to Scan to Macie