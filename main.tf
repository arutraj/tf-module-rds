resource "aws_db_instance" "main" {
  identifier           = "${var.env}-rds"
  allocated_storage    = 10
  db_name              = "dummy-default"
  engine               = var.engine
  engine_version       = var.engine_version
  instance_class       = var.instance_class
  username             = jsondecode(data.vault_generic_secret.rds.data_json).username
  password             = jsondecode(data.vault_generic_secret.rds.data_json).password
  parameter_group_name = aws_db_parameter_group.main.name
  db_subnet_group_name = aws_db_subnet_group.main.name
  skip_final_snapshot  = true
}

resource "aws_db_parameter_group" "main" {
  name   = "${var.env}-rds-pg"
  family = var.family
}

resource "aws_db_subnet_group" "main" {
  name       = "${var.env}-rds-subnet"
  subnet_ids = var.subnet_ids
}


