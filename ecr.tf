resource "aws_ecr_repository" "ecr_repo" {
  name                 = "dotnet-repo-test123"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}
