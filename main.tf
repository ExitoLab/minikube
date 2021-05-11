# data "aws_vpc" "default" {
#   default = true
# }

# data "aws_subnet_ids" "default" {
#   vpc_id = data.aws_vpc.default.id
# }

module "cluster" {
  source             = "../terraform-aws-minikube"
  env_name           = "test"
  subnet_id          = "subnet-0721011b78453fd57"
  vpc_id             = "vpc-0950ca6ee5c7b5af0"
  instance_type      = "t3a.large"
  instance_disk_size = "30"
}