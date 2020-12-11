<p align="center">
  <h3 align="center">GCP DevOps via Terraform</h3>
</p>

<br/>

<!-- ABOUT THE PROJECT -->
## About The Project
This sample source code makes use of Terraform and Google Provider to spin up required DevOps inventory in GCP Cloud

<br/>

### Prerequisites
The following softwares must be installed in your system
* Terraform 0.13 or newer
* Git command line tool (https://help.github.com/articles/set-up-git)
* Your preferred IDE
  * [VS Code](https://code.visualstudio.com)
* [GCP Account - Free Tier](https://aws.amazon.com/free)
<br/>

<!-- Software Version -->
### Software Version
* Terraform 0.13
* Google Provider 3.5

### Steps
1. On the Command line
   ```sh
   git clone https://github.com/g33kzone/terraform.git
   ```
2. Checkout Folder
   ```sh
   cd terraform && cd aws && cd ec2 && cd 01-ec2-basic
   ```
3. Initialize the working directory containing Terraform configuration files
   ```sh
   terraform init
   ```
4. Create Terraform execution plan
   ```sh
   terraform plan
   ```
5. Apply the changes required to achieve the desired state of configuration
   ```sh
   terraform apply -auto-approve
   ```
6. Validate the creation of EC2 instance in AWS Console (i.e. Name - aws-ec2-basic-temp)
7. Destroy the EC2 instance created & managed by Terraform
   ```sh
   terraform destroy -auto-approve