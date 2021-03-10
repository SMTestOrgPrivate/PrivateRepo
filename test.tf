#setting environement-test as parent folder, set to 233526418605 for org.
root_folder_id = "233526418605"

folder_map = {
  "ide" = ["mgmt-ide", "eplus-ide", "dp-ide", "sec-ide", "ap-ide", "vbp-ide", "VST-TEST"]
  "tst" = ["mgmt-tst", "sec-tst", "tfci-tst"]
  "bld" = ["mgmt-bld", "eplus-bld", "dp-bld", "ap-bld", "vbp-bld", "sec-bld", "to-bld", "VST-TEST"]
  "int" = ["mgmt-int", "eplus-int", "dp-int", "ap-int", "sec-int", "VST-TEST"]
  "pre" = ["mgmt-pre", "eplus-pre", "dp-pre", "ap-pre", "sec-pre", "VST-TEST"]
  "prd" = ["mgmt-prd", "eplus-prd", "dp-prd", "ap-prd", "sec-prd", "VST-TEST"]
  "to"  = ["bld-to", "itst-to"]
}

folder_bool_policy = {
  "tst" = {
    "constraints/compute.disableNestedVirtualization"             = true
    "constraints/compute.disableSerialPortAccess"                 = true
    "constraints/compute.restrictXpnProjectLienRemoval"           = true
    "constraints/compute.skipDefaultNetworkCreation"              = true
    "constraints/iam.automaticIamGrantsForDefaultServiceAccounts" = true
    "constraints/sql.restrictAuthorizedNetworks"                  = true
    "constraints/sql.restrictPublicIp"                            = true
  }
  "bld" = {
    "constraints/compute.restrictXpnProjectLienRemoval"           = true
    "constraints/compute.skipDefaultNetworkCreation"              = true
    "constraints/iam.automaticIamGrantsForDefaultServiceAccounts" = true
    "constraints/sql.restrictPublicIp"                            = true
  }
  "mgmt-bld" = {
    "constraints/sql.restrictAuthorizedNetworks"      = true
    "constraints/compute.disableNestedVirtualization" = true
    "constraints/compute.disableSerialPortAccess"     = true
  }
  "int" = {
    "constraints/compute.disableNestedVirtualization"             = true
    "constraints/compute.disableSerialPortAccess"                 = true
    "constraints/compute.restrictXpnProjectLienRemoval"           = true
    "constraints/compute.skipDefaultNetworkCreation"              = true
    "constraints/iam.automaticIamGrantsForDefaultServiceAccounts" = true
    "constraints/sql.restrictAuthorizedNetworks"                  = true
    "constraints/sql.restrictPublicIp"                            = true
  }
  "pre" = {
    "constraints/compute.disableNestedVirtualization"             = true
    "constraints/compute.disableSerialPortAccess"                 = true
    "constraints/compute.restrictXpnProjectLienRemoval"           = true
    "constraints/compute.skipDefaultNetworkCreation"              = true
    "constraints/iam.automaticIamGrantsForDefaultServiceAccounts" = true
    "constraints/sql.restrictAuthorizedNetworks"                  = true
    "constraints/sql.restrictPublicIp"                            = true
  }
  "prd" = {
    "constraints/compute.disableNestedVirtualization"             = true
    "constraints/compute.disableSerialPortAccess"                 = true
    "constraints/compute.restrictXpnProjectLienRemoval"           = true
    "constraints/compute.skipDefaultNetworkCreation"              = true
    "constraints/iam.automaticIamGrantsForDefaultServiceAccounts" = true
    "constraints/sql.restrictAuthorizedNetworks"                  = true
    "constraints/sql.restrictPublicIp"                            = true
  }
  "to" = {
    "constraints/compute.restrictXpnProjectLienRemoval"           = true
    "constraints/compute.skipDefaultNetworkCreation"              = true
    "constraints/iam.automaticIamGrantsForDefaultServiceAccounts" = true
    "constraints/sql.restrictPublicIp"                            = true
  }
  "bld-to" = {
    "constraints/sql.restrictAuthorizedNetworks"      = true
    "constraints/compute.disableNestedVirtualization" = true
    "constraints/compute.disableSerialPortAccess"     = true
  }
  "itst-to" = {
    "constraints/sql.restrictAuthorizedNetworks"      = true
    "constraints/compute.disableNestedVirtualization" = true
    "constraints/compute.disableSerialPortAccess"     = true
  }

}

folder_list_policy = {
  "tst" = {
    "constraints/compute.vmExternalIpAccess" = {
      "deny" = {
        "all" = true
      }
    }
    "constraints/gcp.resourceLocations" = {
      "allow" = {
        "values" = ["in:europe-locations", "eur5", "global"]
      }
    }
    "constraints/compute.restrictLoadBalancerCreationForTypes" = {
      "deny" = {
        "values" = ["in:EXTERNAL"]
      }
    }
  }
  "bld" = {
    "constraints/compute.vmExternalIpAccess" = {
      "deny" = {
        "all" = true
      }
    }
    "constraints/gcp.resourceLocations" = {
      "allow" = {
        "values" = ["in:europe-locations", "eur5", "global"]
      }
    }
    "constraints/compute.restrictLoadBalancerCreationForTypes" = {
      "deny" = {
        "values" = ["in:EXTERNAL"]
      }
    }
  }
  "int" = {
    "constraints/compute.vmExternalIpAccess" = {
      "deny" = {
        "all" = true
      }
    }
    "constraints/gcp.resourceLocations" = {
      "allow" = {
        "values" = ["in:europe-locations", "eur5", "global"]
      }
    }
    "constraints/compute.restrictLoadBalancerCreationForTypes" = {
      "deny" = {
        "values" = ["in:EXTERNAL"]
      }
    }
  }
  "pre" = {
    "constraints/compute.vmExternalIpAccess" = {
      "deny" = {
        "all" = true
      }
    }
    "constraints/gcp.resourceLocations" = {
      "allow" = {
        "values" = ["in:europe-locations", "eur5", "global"]
      }
    }
    "constraints/compute.restrictLoadBalancerCreationForTypes" = {
      "deny" = {
        "values" = ["in:EXTERNAL"]
      }
    }
  }
  "prd" = {
    "constraints/compute.vmExternalIpAccess" = {
      "deny" = {
        "all" = true
      }
    }
    "constraints/gcp.resourceLocations" = {
      "allow" = {
        "values" = ["in:europe-locations", "eur5", "global"]
      }
    }
    "constraints/compute.restrictLoadBalancerCreationForTypes" = {
      "deny" = {
        "values" = ["in:EXTERNAL"]
      }
    }
  }
  "to" = {
    "constraints/compute.vmExternalIpAccess" = {
      "deny" = {
        "all" = true
      }
    }
    "constraints/gcp.resourceLocations" = {
      "allow" = {
        "values" = ["in:europe-locations", "eur5", "global"]
      }
    }
    "constraints/compute.restrictLoadBalancerCreationForTypes" = {
      "deny" = {
        "values" = ["in:EXTERNAL"]
      }
    }
  }
}

project_list_policy = {
  "mgmt-bak-tst-0d5f" = {
    "constraints/compute.restrictLoadBalancerCreationForTypes" = {
      "allow" = {
        "all" = true
      }
    }
  }
  "mgmt-icp-tst-fb29" = {
    "constraints/compute.restrictLoadBalancerCreationForTypes" = {
      "allow" = {
        "all" = true
      }
    }
  }
  "mgmt-ple-tst-254e" = {
    "constraints/compute.restrictLoadBalancerCreationForTypes" = {
      "allow" = {
        "all" = true
      }
    }
  }
  "mgmt-vpn-tst-7312" = {
    "constraints/compute.restrictLoadBalancerCreationForTypes" = {
      "allow" = {
        "all" = true
      }
    }
  }
  "tfci-icp-tst-6255" = {
    "constraints/compute.restrictLoadBalancerCreationForTypes" = {
      "allow" = {
        "all" = true
      }
    }
  }
  "tfci-cia-tst-ee9f" = {
    "constraints/compute.restrictLoadBalancerCreationForTypes" = {
      "allow" = {
        "all" = true
      }
    }
  }
  "tfci-cib-tst-5611" = {
    "constraints/compute.restrictLoadBalancerCreationForTypes" = {
      "allow" = {
        "all" = true
      }
    }
  }
  "dp-api-bld-01-5a3a" = {
    "constraints/compute.restrictLoadBalancerCreationForTypes" = {
      "allow" = {
        "all" = true
      }
    }
  }
  "dp-fdn-bld-01-52cb" = {
    "constraints/compute.restrictLoadBalancerCreationForTypes" = {
      "allow" = {
        "all" = true
      }
    }
  }
  "eplus-ath-bld-02-fa98" = {
    "constraints/compute.restrictLoadBalancerCreationForTypes" = {
      "allow" = {
        "all" = true
      }
    }
  }
  "eplus-icp-bld-02-112d" = {
    "constraints/compute.restrictLoadBalancerCreationForTypes" = {
      "allow" = {
        "all" = true
      }
    }
  }
  "mgmt-ple-bld-81ed" = {
    "constraints/compute.restrictLoadBalancerCreationForTypes" = {
      "allow" = {
        "all" = true
      }
    }
  }
  "mgmt-vpn-bld-1733" = {
    "constraints/compute.restrictLoadBalancerCreationForTypes" = {
      "allow" = {
        "all" = true
      }
    }
  }
  "dp-api-int-01-9bb5" = {
    "constraints/compute.restrictLoadBalancerCreationForTypes" = {
      "allow" = {
        "all" = true
      }
    }
  }
  "eplus-ath-int-01-2fef" = {
    "constraints/compute.restrictLoadBalancerCreationForTypes" = {
      "allow" = {
        "all" = true
      }
    }
  }
  "eplus-ath-int-02-8cee" = {
    "constraints/compute.restrictLoadBalancerCreationForTypes" = {
      "allow" = {
        "all" = true
      }
    }
  }
  "eplus-icp-int-01-01eb" = {
    "constraints/compute.restrictLoadBalancerCreationForTypes" = {
      "allow" = {
        "all" = true
      }
    }
  }
  "eplus-icp-int-02-1d97" = {
    "constraints/compute.restrictLoadBalancerCreationForTypes" = {
      "allow" = {
        "all" = true
      }
    }
  }
  "dp-api-pre-01-cea3" = {
    "constraints/compute.restrictLoadBalancerCreationForTypes" = {
      "allow" = {
        "all" = true
      }
    }
  }
  "eplus-ath-pre-01-9d13" = {
    "constraints/compute.restrictLoadBalancerCreationForTypes" = {
      "allow" = {
        "all" = true
      }
    }
  }
  "eplus-icp-pre-01-4b33" = {
    "constraints/compute.restrictLoadBalancerCreationForTypes" = {
      "allow" = {
        "all" = true
      }
    }
  }
  "dp-api-prd-01-9209" = {
    "constraints/compute.restrictLoadBalancerCreationForTypes" = {
      "allow" = {
        "all" = true
      }
    }
  }
  "eplus-ath-prd-01-8377" = {
    "constraints/compute.restrictLoadBalancerCreationForTypes" = {
      "allow" = {
        "all" = true
      }
    }
  }
  "eplus-ath-prd-02-300f" = {
    "constraints/compute.restrictLoadBalancerCreationForTypes" = {
      "allow" = {
        "all" = true
      }
    }
  }
  "eplus-icp-prd-01-cf71" = {
    "constraints/compute.restrictLoadBalancerCreationForTypes" = {
      "allow" = {
        "all" = true
      }
    }
  }
  "eplus-icp-prd-02-aeb2" = {
    "constraints/compute.restrictLoadBalancerCreationForTypes" = {
      "allow" = {
        "all" = true
      }
    }
  }
  "mgmt-vpn-prd-2e21" = {
    "constraints/compute.restrictLoadBalancerCreationForTypes" = {
      "allow" = {
        "all" = true
      }
    }
  }
}
