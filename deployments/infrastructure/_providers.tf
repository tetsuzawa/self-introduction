provider "aws" {
  region = "ap-northeast-1"
  version = "~> 2.49"
}

provider "aws" {
  region = "us-east-1"
  version = "~> 2.49"
  alias = "us-east-1"
}
