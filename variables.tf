# resource "aws_db_instance" "default" {
#   allocated_storage    = 10
#   db_name              = "dummy-default"
#   engine               = var.engine
#   engine_version       = var.engine_version
#   instance_class       = var.instance_class
#   username             = "foo"
#   password             = "foobarbaz"
#   parameter_group_name = "default.mysql8.0"
#   skip_final_snapshot  = true
# }
#
#
