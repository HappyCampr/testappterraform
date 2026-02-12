# testappterraform
This is just a first repo to test my Spacelift connections

# GCS Bucket Terraform module

Creates a simple Google Cloud Storage bucket.

Usage (Spacelift):

- Add this repository (or the `terraform/gcs_bucket` folder) to a Spacelift stack.
- Configure the stack with a GCP integration or service account so Terraform can authenticate.
- Set variables in the stack: `project`, `bucket_name`, and optionally `region`.

Example CLI:

```bash
terraform init
terraform plan -var="project=PROJECT_ID" -var="bucket_name=unique-bucket-name"
terraform apply -var="project=PROJECT_ID" -var="bucket_name=unique-bucket-name" -auto-approve
```

Notes:

- Don't commit service account JSON to the repository; configure credentials in Spacelift or via environment variables.
- Bucket names must be globally unique.


