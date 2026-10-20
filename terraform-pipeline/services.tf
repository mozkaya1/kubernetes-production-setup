resource "kubernetes_manifest" "service_musti_apps_live_go_portal" {
  field_manager {
    force_conflicts = true
  }

  manifest = {
    "apiVersion" = "v1"
    "kind" = "Service"
    "metadata" = {
      "annotations" = {
        "field.cattle.io/publicEndpoints" = "[{\"port\":30004,\"protocol\":\"TCP\",\"serviceName\":\"musti-apps:live-go-portal\",\"allNodes\":true}]"
        "field.cattle.io/targetWorkloadIds" = "[\"musti-apps/live-go-portal\"]"
        "kubectl.kubernetes.io/last-applied-configuration" = <<-EOT
        {"apiVersion":"v1","kind":"Service","metadata":{"annotations":{"field.cattle.io/publicEndpoints":"[{\"port\":30004,\"protocol\":\"TCP\",\"serviceName\":\"musti-apps:live-go-portal\",\"allNodes\":true}]","field.cattle.io/targetWorkloadIds":"[\"musti-apps/live-go-portal\"]"},"name":"live-go-portal","namespace":"musti-apps"},"spec":{"ports":[{"name":"live-go-portal","nodePort":30004,"port":8080,"targetPort":8080}],"selector":{"app":"live-go-portal"},"type":"NodePort"}}
        
        EOT
      }
      "name" = "live-go-portal"
      "namespace" = "musti-apps"
    }
    "spec" = {
      "clusterIP" = "10.43.90.93"
      "clusterIPs" = [
        "10.43.90.93",
      ]
      "externalTrafficPolicy" = "Cluster"
      "internalTrafficPolicy" = "Cluster"
      "ipFamilies" = [
        "IPv4",
      ]
      "ipFamilyPolicy" = "SingleStack"
      "ports" = [
        {
          "name" = "live-go-portal"
          "nodePort" = 30004
          "port" = 8080
          "protocol" = "TCP"
          "targetPort" = 8080
        },
      ]
      "selector" = {
        "workload.user.cattle.io/workloadselector" = "apps.deployment-musti-apps-live-go-portal"
      }
      "sessionAffinity" = "None"
      "type" = "NodePort"
    }
  }
}

resource "kubernetes_manifest" "service_musti_apps_mariadb" {
  field_manager {
    force_conflicts = true
  }

  manifest = {
    "apiVersion" = "v1"
    "kind" = "Service"
    "metadata" = {
      "annotations" = {
        "field.cattle.io/targetWorkloadIds" = "[\"musti-apps/mariadb\"]"
        "management.cattle.io/ui-managed" = "true"
      }
      "name" = "mariadb"
      "namespace" = "musti-apps"
    }
    "spec" = {
      "clusterIP" = "10.43.66.149"
      "clusterIPs" = [
        "10.43.66.149",
      ]
      "internalTrafficPolicy" = "Cluster"
      "ipFamilies" = [
        "IPv4",
      ]
      "ipFamilyPolicy" = "SingleStack"
      "ports" = [
        {
          "name" = "mariadb"
          "port" = 3306
          "protocol" = "TCP"
          "targetPort" = 3306
        },
      ]
      "selector" = {
        "workload.user.cattle.io/workloadselector" = "apps.deployment-musti-apps-mariadb"
      }
      "sessionAffinity" = "None"
      "type" = "ClusterIP"
    }
  }
}

resource "kubernetes_manifest" "service_musti_apps_meiraaccessories" {
  field_manager {
    force_conflicts = true
  }

  manifest = {
    "apiVersion" = "v1"
    "kind" = "Service"
    "metadata" = {
      "annotations" = {
        "field.cattle.io/targetWorkloadIds" = "[\"musti-apps/meiraaccessories\"]"
        "management.cattle.io/ui-managed" = "true"
      }
      "name" = "meiraaccessories"
      "namespace" = "musti-apps"
    }
    "spec" = {
      "clusterIP" = "10.43.136.135"
      "clusterIPs" = [
        "10.43.136.135",
      ]
      "internalTrafficPolicy" = "Cluster"
      "ipFamilies" = [
        "IPv4",
      ]
      "ipFamilyPolicy" = "SingleStack"
      "ports" = [
        {
          "name" = "wordpress"
          "port" = 80
          "protocol" = "TCP"
          "targetPort" = 80
        },
        {
          "name" = "mariadb"
          "port" = 3306
          "protocol" = "TCP"
          "targetPort" = 3306
        },
      ]
      "selector" = {
        "workload.user.cattle.io/workloadselector" = "apps.deployment-musti-apps-meiraaccessories"
      }
      "sessionAffinity" = "None"
      "type" = "ClusterIP"
    }
  }
}

resource "kubernetes_manifest" "service_musti_apps_meiraaccessories_nodeport" {
  field_manager {
    force_conflicts = true
  }

  manifest = {
    "apiVersion" = "v1"
    "kind" = "Service"
    "metadata" = {
      "annotations" = {
        "field.cattle.io/publicEndpoints" = "[{\"port\":30001,\"protocol\":\"TCP\",\"serviceName\":\"musti-apps:meiraaccessories-nodeport\",\"allNodes\":true}]"
        "field.cattle.io/targetWorkloadIds" = "[\"musti-apps/meiraaccessories\"]"
        "management.cattle.io/ui-managed" = "true"
      }
      "name" = "meiraaccessories-nodeport"
      "namespace" = "musti-apps"
    }
    "spec" = {
      "clusterIP" = "10.43.126.28"
      "clusterIPs" = [
        "10.43.126.28",
      ]
      "externalTrafficPolicy" = "Cluster"
      "internalTrafficPolicy" = "Cluster"
      "ipFamilies" = [
        "IPv4",
      ]
      "ipFamilyPolicy" = "SingleStack"
      "ports" = [
        {
          "name" = "wordpress"
          "nodePort" = 30001
          "port" = 80
          "protocol" = "TCP"
          "targetPort" = 80
        },
      ]
      "selector" = {
        "workload.user.cattle.io/workloadselector" = "apps.deployment-musti-apps-meiraaccessories"
      }
      "sessionAffinity" = "None"
      "type" = "NodePort"
    }
  }
}

resource "kubernetes_manifest" "service_musti_apps_musti_deployment" {
  field_manager {
    force_conflicts = true
  }

  manifest = {
    "apiVersion" = "v1"
    "kind" = "Service"
    "metadata" = {
      "annotations" = {
        "field.cattle.io/targetWorkloadIds" = "[\"musti-apps/musti-deployment\"]"
        "management.cattle.io/ui-managed" = "true"
      }
      "name" = "musti-deployment"
      "namespace" = "musti-apps"
    }
    "spec" = {
      "clusterIP" = "10.43.164.139"
      "clusterIPs" = [
        "10.43.164.139",
      ]
      "internalTrafficPolicy" = "Cluster"
      "ipFamilies" = [
        "IPv4",
      ]
      "ipFamilyPolicy" = "SingleStack"
      "ports" = [
        {
          "name" = "musti-nodeport"
          "port" = 80
          "protocol" = "TCP"
          "targetPort" = 80
        },
      ]
      "selector" = {
        "workload.user.cattle.io/workloadselector" = "apps.deployment-musti-apps-musti-deployment"
      }
      "sessionAffinity" = "None"
      "type" = "ClusterIP"
    }
  }
}

resource "kubernetes_manifest" "service_musti_apps_nextcloud_external_service" {
  field_manager {
    force_conflicts = true
  }

  manifest = {
    "apiVersion" = "v1"
    "kind" = "Service"
    "metadata" = {
      "annotations" = {
        "kubectl.kubernetes.io/last-applied-configuration" = <<-EOT
        {"apiVersion":"v1","kind":"Service","metadata":{"annotations":{},"name":"nextcloud-external-service","namespace":"musti-apps"},"spec":{"ports":[{"port":11000,"protocol":"TCP","targetPort":11000}]}}
        
        EOT
      }
      "name" = "nextcloud-external-service"
      "namespace" = "musti-apps"
    }
    "spec" = {
      "clusterIP" = "10.43.149.246"
      "clusterIPs" = [
        "10.43.149.246",
      ]
      "internalTrafficPolicy" = "Cluster"
      "ipFamilies" = [
        "IPv4",
      ]
      "ipFamilyPolicy" = "SingleStack"
      "ports" = [
        {
          "port" = 11000
          "protocol" = "TCP"
          "targetPort" = 11000
        },
      ]
      "sessionAffinity" = "None"
      "type" = "ClusterIP"
    }
  }
}

resource "kubernetes_manifest" "service_musti_apps_opencloud_collabora_service" {
  field_manager {
    force_conflicts = true
  }

  manifest = {
    "apiVersion" = "v1"
    "kind" = "Service"
    "metadata" = {
      "annotations" = {
        "kubectl.kubernetes.io/last-applied-configuration" = <<-EOT
        {"apiVersion":"v1","kind":"Service","metadata":{"annotations":{},"name":"opencloud-collabora-service","namespace":"musti-apps"},"spec":{"clusterIP":"None","ports":[{"port":9980,"protocol":"TCP","targetPort":9980}]}}
        
        EOT
      }
      "name" = "opencloud-collabora-service"
      "namespace" = "musti-apps"
    }
    "spec" = {
      "clusterIP" = "None"
      "clusterIPs" = [
        "None",
      ]
      "internalTrafficPolicy" = "Cluster"
      "ipFamilies" = [
        "IPv4",
        "IPv6",
      ]
      "ipFamilyPolicy" = "RequireDualStack"
      "ports" = [
        {
          "port" = 9980
          "protocol" = "TCP"
          "targetPort" = 9980
        },
      ]
      "sessionAffinity" = "None"
      "type" = "ClusterIP"
    }
  }
}

resource "kubernetes_manifest" "service_musti_apps_opencloud_external_service" {
  field_manager {
    force_conflicts = true
  }

  manifest = {
    "apiVersion" = "v1"
    "kind" = "Service"
    "metadata" = {
      "annotations" = {
        "kubectl.kubernetes.io/last-applied-configuration" = <<-EOT
        {"apiVersion":"v1","kind":"Service","metadata":{"annotations":{},"name":"opencloud-external-service","namespace":"musti-apps"},"spec":{"clusterIP":"None","ports":[{"port":9200,"protocol":"TCP","targetPort":9200}]}}
        
        EOT
      }
      "name" = "opencloud-external-service"
      "namespace" = "musti-apps"
    }
    "spec" = {
      "clusterIP" = "None"
      "clusterIPs" = [
        "None",
      ]
      "internalTrafficPolicy" = "Cluster"
      "ipFamilies" = [
        "IPv4",
        "IPv6",
      ]
      "ipFamilyPolicy" = "RequireDualStack"
      "ports" = [
        {
          "port" = 9200
          "protocol" = "TCP"
          "targetPort" = 9200
        },
      ]
      "sessionAffinity" = "None"
      "type" = "ClusterIP"
    }
  }
}

resource "kubernetes_manifest" "service_musti_apps_opencloud_wopi_service" {
  field_manager {
    force_conflicts = true
  }

  manifest = {
    "apiVersion" = "v1"
    "kind" = "Service"
    "metadata" = {
      "annotations" = {
        "kubectl.kubernetes.io/last-applied-configuration" = <<-EOT
        {"apiVersion":"v1","kind":"Service","metadata":{"annotations":{},"name":"opencloud-wopi-service","namespace":"musti-apps"},"spec":{"clusterIP":"None","ports":[{"port":9300,"protocol":"TCP","targetPort":9300}]}}
        
        EOT
      }
      "name" = "opencloud-wopi-service"
      "namespace" = "musti-apps"
    }
    "spec" = {
      "clusterIP" = "None"
      "clusterIPs" = [
        "None",
      ]
      "internalTrafficPolicy" = "Cluster"
      "ipFamilies" = [
        "IPv4",
        "IPv6",
      ]
      "ipFamilyPolicy" = "RequireDualStack"
      "ports" = [
        {
          "port" = 9300
          "protocol" = "TCP"
          "targetPort" = 9300
        },
      ]
      "sessionAffinity" = "None"
      "type" = "ClusterIP"
    }
  }
}

resource "kubernetes_manifest" "service_musti_apps_real_currency_api" {
  field_manager {
    force_conflicts = true
  }

  manifest = {
    "apiVersion" = "v1"
    "kind" = "Service"
    "metadata" = {
      "annotations" = {
        "field.cattle.io/targetWorkloadIds" = "[\"musti-apps/real-currency-api\"]"
        "management.cattle.io/ui-managed" = "true"
      }
      "name" = "real-currency-api"
      "namespace" = "musti-apps"
    }
    "spec" = {
      "clusterIP" = "10.43.130.84"
      "clusterIPs" = [
        "10.43.130.84",
      ]
      "internalTrafficPolicy" = "Cluster"
      "ipFamilies" = [
        "IPv4",
      ]
      "ipFamilyPolicy" = "SingleStack"
      "ports" = [
        {
          "name" = "musti-api"
          "port" = 8080
          "protocol" = "TCP"
          "targetPort" = 8080
        },
      ]
      "selector" = {
        "workload.user.cattle.io/workloadselector" = "apps.deployment-musti-apps-real-currency-api"
      }
      "sessionAffinity" = "None"
      "type" = "ClusterIP"
    }
  }
}

resource "kubernetes_manifest" "service_musti_apps_real_currency_api_nodeport" {
  field_manager {
    force_conflicts = true
  }

  manifest = {
    "apiVersion" = "v1"
    "kind" = "Service"
    "metadata" = {
      "annotations" = {
        "field.cattle.io/publicEndpoints" = "[{\"port\":30003,\"protocol\":\"TCP\",\"serviceName\":\"musti-apps:real-currency-api-nodeport\",\"allNodes\":true}]"
        "field.cattle.io/targetWorkloadIds" = "[\"musti-apps/real-currency-api\"]"
        "management.cattle.io/ui-managed" = "true"
      }
      "name" = "real-currency-api-nodeport"
      "namespace" = "musti-apps"
    }
    "spec" = {
      "clusterIP" = "10.43.214.133"
      "clusterIPs" = [
        "10.43.214.133",
      ]
      "externalTrafficPolicy" = "Cluster"
      "internalTrafficPolicy" = "Cluster"
      "ipFamilies" = [
        "IPv4",
      ]
      "ipFamilyPolicy" = "SingleStack"
      "ports" = [
        {
          "name" = "musti-api"
          "nodePort" = 30003
          "port" = 8080
          "protocol" = "TCP"
          "targetPort" = 8080
        },
      ]
      "selector" = {
        "workload.user.cattle.io/workloadselector" = "apps.deployment-musti-apps-real-currency-api"
      }
      "sessionAffinity" = "None"
      "type" = "NodePort"
    }
  }
}

resource "kubernetes_manifest" "service_musti_apps_weather_api" {
  field_manager {
    force_conflicts = true
  }

  manifest = {
    "apiVersion" = "v1"
    "kind" = "Service"
    "metadata" = {
      "annotations" = {
        "field.cattle.io/targetWorkloadIds" = "[\"musti-apps/weather-api\"]"
        "management.cattle.io/ui-managed" = "true"
      }
      "name" = "weather-api"
      "namespace" = "musti-apps"
    }
    "spec" = {
      "clusterIP" = "10.43.129.68"
      "clusterIPs" = [
        "10.43.129.68",
      ]
      "internalTrafficPolicy" = "Cluster"
      "ipFamilies" = [
        "IPv4",
      ]
      "ipFamilyPolicy" = "SingleStack"
      "ports" = [
        {
          "name" = "musti-api"
          "port" = 8080
          "protocol" = "TCP"
          "targetPort" = 8080
        },
      ]
      "selector" = {
        "workload.user.cattle.io/workloadselector" = "apps.deployment-musti-apps-weather-api"
      }
      "sessionAffinity" = "None"
      "type" = "ClusterIP"
    }
  }
}

resource "kubernetes_manifest" "service_musti_apps_weather_api_nodeport" {
  field_manager {
    force_conflicts = true
  }

  manifest = {
    "apiVersion" = "v1"
    "kind" = "Service"
    "metadata" = {
      "annotations" = {
        "field.cattle.io/publicEndpoints" = "[{\"port\":30002,\"protocol\":\"TCP\",\"serviceName\":\"musti-apps:weather-api-nodeport\",\"allNodes\":true}]"
        "field.cattle.io/targetWorkloadIds" = "[\"musti-apps/weather-api\"]"
        "management.cattle.io/ui-managed" = "true"
      }
      "name" = "weather-api-nodeport"
      "namespace" = "musti-apps"
    }
    "spec" = {
      "clusterIP" = "10.43.103.214"
      "clusterIPs" = [
        "10.43.103.214",
      ]
      "externalTrafficPolicy" = "Cluster"
      "internalTrafficPolicy" = "Cluster"
      "ipFamilies" = [
        "IPv4",
      ]
      "ipFamilyPolicy" = "SingleStack"
      "ports" = [
        {
          "name" = "musti-api"
          "nodePort" = 30002
          "port" = 8080
          "protocol" = "TCP"
          "targetPort" = 8080
        },
      ]
      "selector" = {
        "workload.user.cattle.io/workloadselector" = "apps.deployment-musti-apps-weather-api"
      }
      "sessionAffinity" = "None"
      "type" = "NodePort"
    }
  }
}

resource "kubernetes_manifest" "service_musti_apps_wordpress_mariadb" {
  field_manager {
    force_conflicts = true
  }

  manifest = {
    "apiVersion" = "v1"
    "kind" = "Service"
    "metadata" = {
      "annotations" = {
        "kubectl.kubernetes.io/last-applied-configuration" = <<-EOT
        {"apiVersion":"v1","kind":"Service","metadata":{"annotations":{},"labels":{"app":"wordpress"},"name":"wordpress-mariadb","namespace":"musti-apps"},"spec":{"clusterIP":"None","ports":[{"port":3306}],"selector":{"app":"wordpress","tier":"mariadb"}}}
        
        EOT
      }
      "labels" = {
        "app" = "wordpress"
      }
      "name" = "wordpress-mariadb"
      "namespace" = "musti-apps"
    }
    "spec" = {
      "clusterIP" = "None"
      "clusterIPs" = [
        "None",
      ]
      "internalTrafficPolicy" = "Cluster"
      "ipFamilies" = [
        "IPv4",
      ]
      "ipFamilyPolicy" = "SingleStack"
      "ports" = [
        {
          "port" = 3306
          "protocol" = "TCP"
          "targetPort" = 3306
        },
      ]
      "selector" = {
        "app" = "wordpress"
        "tier" = "mariadb"
      }
      "sessionAffinity" = "None"
      "type" = "ClusterIP"
    }
  }
}
