
locals {
  domain = "danscarf.rocks"
}
module "staticsite" {
  source  = "justincampbell/staticsite/aws"
  version = "0.2.1"
  bucket = "www.${local.domain}"
  domain = "${local.domain}"
}

