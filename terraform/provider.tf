terraform {
  backend "s3" {
    bucket        = "praneet-medusa-ecs-state"
    key           = "env:/terraform.tfstate"
    region        = "us-east-1"
    use_lockfile  = true
  }
}
