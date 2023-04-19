data "terraform_remote_state" "level1" {
  backend = "s3"
  config = {
    bucket = "terraform-state-7k17jz"
    key    = "level1.tfstate"
    region = "us-east-1"
  }
}
