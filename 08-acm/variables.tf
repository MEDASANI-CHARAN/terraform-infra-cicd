variable project_name {
  default = "expense"
}

variable environment {
  default = "dev"
}

variable common_tags {
    type = map
    default = {
      Project = "expense"
      Environment = "dev"
      Terraform = "true"
      Component = "acm"
    }
}

variable zone_name {
  default = "daws78s.xyz"
}

variable zone_id {
  default = "Z02187721AH5R2Y00ZRKU"
}