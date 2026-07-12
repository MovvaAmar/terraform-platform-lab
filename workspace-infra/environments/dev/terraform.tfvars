databricks_host = "https://adb-7405612748354019.19.azuredatabricks.net"

groups = {

  platform_engineers = {
    display_name          = "platform-engineers"
    workspace_access      = true
    allow_cluster_create  = true
    databricks_sql_access = true
  }
  data_engineers = {
    display_name = "data-engineers"
  }

  data_analysts = {
    display_name = "data_analysts"
  }

}


cluster_policies = {

  standard = {

    name        = "Standard Compute"
    description = "Default development policy"

    definition = {

      spark_version = {
        type  = "fixed"
        value = "auto:latest-lts"
      }

      node_type_id = {
        type  = "fixed"
        value = "Standard_DS3_v2"
      }

      driver_node_type_id = {
        type  = "fixed"
        value = "Standard_DS3_v2"
      }

      num_workers = {
        type     = "range"
        minValue = 1
        maxValue = 4
      }

      autotermination_minutes = {
        type  = "fixed"
        value = 15
      }

      runtime_engine = {
        type  = "fixed"
        value = "PHOTON"
      }

      data_security_mode = {
        type  = "fixed"
        value = "SINGLE_USER"
      }

      enable_elastic_disk = {
        type  = "fixed"
        value = true
      }

    }

  }

}