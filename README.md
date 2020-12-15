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
* [GCP Account - Free Tier](https://cloud.google.com/free)
<br/>

<!-- Software Version -->
### Software Version
* Terraform 0.13
* Google Provider 3.5

### Steps
1. On the Command line
   ```sh
   git clone https://github.com/g33kzone/tf-gcp-thoughtworks.git
   ```
2. Create GCP service account with relevant roles for the GCP Project [refer documentation](https://cloud.google.com/iam/docs/creating-managing-service-account-keys)
3. Configure this service account key to make request against GCP API via Terraform [refer documentation](https://cloud.google.com/iam/docs/creating-managing-service-account-keys)
4. Initialize the working directory containing Terraform configuration files
   ```sh
   terraform init
   ```
5. Create Terraform execution plan
   ```sh
   terraform plan
   ```
6. Apply the changes required to achieve the desired state of configuration
   ```sh
   terraform apply -auto-approve
   ```
7. Validate the creation of GCP Infra Stack
8. To destroy the infrastructure created & managed by Terraform
   ```sh
   terraform destroy -auto-approve
   ```