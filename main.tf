# resource "aws_db_instance" "default" {
#   allocated_storage    = 10
#   db_name              = "dummy-default"
#   engine               = var.engine
#   engine_version       = var.engine_version
#   instance_class       = var.instance_class
#   username             = data.vault_generic_secret.rds.data_json
#   password             = "foobarbaz"
#   parameter_group_name = "default.mysql8.0"
#   skip_final_snapshot  = true
# }

resource "local_file" "test" {
  filename = "/tmp/data.json"
  content = data.vault_generic_secret.rds.data_json
}

