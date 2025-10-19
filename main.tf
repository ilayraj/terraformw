terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.1"
    }
  }
}

resource "local_file" "test_file" {
  filename = "example.txt"
  content  = "Hello from Terraform in GitHub Actions!"
}

output "file_path" {
  value = local_file.test_file.filename
}
  
