resource "aws_db_subnet_group" "tfer--db-002D-subnet-002D-group-002D-internal" {
  description = "DB subnet group for internal network"
  name        = "db-subnet-group-internal"
  subnet_ids  = ["subnet-07c65d25ce8dbaacf", "subnet-0b03e0e88fb61e406"]
}

resource "aws_db_subnet_group" "tfer--default-002D-vpc-002D-0d95857c2d53f0e9f" {
  description = "Created from the RDS Management Console"
  name        = "default-vpc-0d95857c2d53f0e9f"
  subnet_ids  = ["subnet-028a09da078d4425b", "subnet-006a5ecaa0eaa23ed"]
}
