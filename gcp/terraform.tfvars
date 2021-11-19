project_id = "de-capstone-ir"
region     = "us-central1"
location     = "us-central1-a"

#GKE
gke_num_nodes = 2
machine_type  = "n1-standard-1"

#CloudSQL
instance_name     = "ir-wizeline"
database_version  = "POSTGRES_12"
instance_tier     = "db-f1-micro"
disk_space        = 10
database_name     = "purchases"
db_username       = "admin-1"
db_password       = "c4p5t0n3"

#GCS
raw_name = "ir-raw-data"
stage_name = "ir-stage-data"
