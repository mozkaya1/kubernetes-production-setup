resource "kubernetes_manifest" "deployment_musti_apps_live_go_portal" {
  field_manager {
    force_conflicts = true
  }

  manifest = {
    "apiVersion" = "apps/v1"
    "kind" = "Deployment"
    "metadata" = {
      "annotations" = {

        "field.cattle.io/description" = "Live Go Portal - Main application"
        "field.cattle.io/publicEndpoints" = "[{\"port\":30004,\"protocol\":\"TCP\",\"serviceName\":\"musti-apps:live-go-portal\",\"allNodes\":true}]"
        "kubectl.kubernetes.io/last-applied-configuration" = <<-EOT
        {"apiVersion":"apps/v1","kind":"Deployment","metadata":{"annotations":{"field.cattle.io/description":"Live Go Portal - Main application"},"name":"live-go-portal","namespace":"musti-apps"},"spec":{"replicas":1,"selector":{"matchLabels":{"workload.user.cattle.io/workloadselector":"apps.deployment-musti-apps-live-go-portal"}},"template":{"metadata":{"labels":{"app":"live-go-portal","workload.user.cattle.io/workloadselector":"apps.deployment-musti-apps-live-go-portal"}},"spec":{"containers":[{"env":[{"name":"refreshTime","value":"5"},{"name":"TZ","value":"Europe/Berlin"},{"name":"API1_URL","value":"http://weather-api:8080/api?coins=BTCUSDT,ETHUSDT,ATOMUSDT,FILUSDT,LINKUSDT,XLMUSDT,BNBUSDT,THETAUSDT,XRPUSDT,IOTAUSDT\u0026assets=USD-TRY,EUR-TRY,EUR-USD\u0026location=Kudelstaart"},{"name":"API2_URL","value":"http://real-currency-api:8080"},{"name":"PORT","value":"8080"}],"image":"ozkaya84/live-go-portal:latest","imagePullPolicy":"Always","name":"live-go-portal","ports":[{"containerPort":8080,"name":"http"}]}]}}}}
        
        EOT
      }
      "name" = "live-go-portal"
      "namespace" = "musti-apps"
    }
    "spec" = {
      "progressDeadlineSeconds" = 600
      "replicas" = 1
      "revisionHistoryLimit" = 10
      "selector" = {
        "matchLabels" = {
          "workload.user.cattle.io/workloadselector" = "apps.deployment-musti-apps-live-go-portal"
        }
      }
      "strategy" = {
        "rollingUpdate" = {
          "maxSurge" = "25%"
          "maxUnavailable" = "25%"
        }
        "type" = "RollingUpdate"
      }
      "template" = {
        "metadata" = {
          "annotations" = {
        "cattle.io/timestamp" = ""
        "kubectl.kubernetes.io/restartedAt" = ""
          }
          "labels" = {
            "app" = "live-go-portal"
            "workload.user.cattle.io/workloadselector" = "apps.deployment-musti-apps-live-go-portal"
          }
          "namespace" = "musti-apps"
        }
        "spec" = {
          "containers" = [
            {
              "env" = [
                {
                  "name" = "refreshTime"
                  "value" = "15"
                },
                {
                  "name" = "TZ"
                  "value" = "Europe/Berlin"
                },
                {
                  "name" = "API1_URL"
                  "value" = "http://weather-api:8080/api?coins=BTCUSDT,ETHUSDT,ATOMUSDT,FILUSDT,LINKUSDT,XLMUSDT,BNBUSDT,THETAUSDT,XRPUSDT,IOTAUSDT&assets=USD-TRY,EUR-TRY,EUR-USD&location=Kudelstaart"
                },
                {
                  "name" = "API2_URL"
                  "value" = "http://real-currency-api:8080"
                },
                {
                  "name" = "PORT"
                  "value" = "8080"
                },
              ]
              "image" = "ozkaya84/live-go-portal:latest"
              "imagePullPolicy" = "Always"
              "name" = "live-go-portal"
              "ports" = [
                {
                  "containerPort" = 8080
                  "name" = "http"
                  "protocol" = "TCP"
                },
              ]
              "resources" = {}
              "terminationMessagePath" = "/dev/termination-log"
              "terminationMessagePolicy" = "File"
            },
          ]
          "dnsPolicy" = "ClusterFirst"
          "restartPolicy" = "Always"
          "schedulerName" = "default-scheduler"
          "securityContext" = {}
          "terminationGracePeriodSeconds" = 30
        }
      }
    }
  }
}

resource "kubernetes_manifest" "deployment_musti_apps_meiraaccessories" {
  field_manager {
    force_conflicts = true
  }

  manifest = {
    "apiVersion" = "apps/v1"
    "kind" = "Deployment"
    "metadata" = {
      "annotations" = {
        "field.cattle.io/publicEndpoints" = "[{\"addresses\":[\"192.168.50.100\"],\"port\":80,\"protocol\":\"HTTP\",\"serviceName\":\"musti-apps:meiraaccessories\",\"ingressName\":\"musti-apps:meira\",\"hostname\":\"*.meiraaccessories.com\",\"path\":\"/\",\"allNodes\":false},{\"port\":30001,\"protocol\":\"TCP\",\"serviceName\":\"musti-apps:meiraaccessories-nodeport\",\"allNodes\":true}]"
      }
      "labels" = {
        "workload.user.cattle.io/workloadselector" = "apps.deployment-musti-apps-meiraaccessories"
      }
      "name" = "meiraaccessories"
      "namespace" = "musti-apps"
    }
    "spec" = {
      "progressDeadlineSeconds" = 600
      "replicas" = 1
      "revisionHistoryLimit" = 10
      "selector" = {
        "matchLabels" = {
          "workload.user.cattle.io/workloadselector" = "apps.deployment-musti-apps-meiraaccessories"
        }
      }
      "strategy" = {
        "rollingUpdate" = {
          "maxSurge" = "25%"
          "maxUnavailable" = "25%"
        }
        "type" = "RollingUpdate"
      }
      "template" = {
        "metadata" = {
          "annotations" = {
            "cattle.io/timestamp" = "2025-03-25T16:59:10Z"
            "kubectl.kubernetes.io/restartedAt" = "2026-05-12T16:26:12+02:00"
          }
          "labels" = {
            "workload.user.cattle.io/workloadselector" = "apps.deployment-musti-apps-meiraaccessories"
          }
          "namespace" = "musti-apps"
        }
        "spec" = {
          "containers" = [
            {
              "image" = "ozkaya84/meira-wordpress:latest"
              "imagePullPolicy" = "Always"
              "name" = "wordpress"
              "ports" = [
                {
                  "containerPort" = 80
                  "name" = "wordpress"
                  "protocol" = "TCP"
                },
              ]
              "resources" = {
                "limits" = {
                  "cpu" = "500m"
                  "memory" = "954Mi"
                }
                "requests" = {
                  "cpu" = "200m"
                  "memory" = "512Mi"
                }
              }
              "securityContext" = {
                "allowPrivilegeEscalation" = false
                "privileged" = false
                "readOnlyRootFilesystem" = false
                "runAsNonRoot" = false
              }
              "terminationMessagePath" = "/dev/termination-log"
              "terminationMessagePolicy" = "File"
              "volumeMounts" = [
                {
                  "mountPath" = "/var/www/html"
                  "name" = "vol-qrzml"
                  "subPath" = "meiraaccessories/content_dir"
                },
              ]
            },
            {
              "args" = [
                "--default-authentication-plugin=mysql_native_password",
              ]
              "image" = "mariadb:11.7.2"
              "imagePullPolicy" = "Always"
              "name" = "mariadb"
              "ports" = [
                {
                  "containerPort" = 3306
                  "name" = "mariadb"
                  "protocol" = "TCP"
                },
              ]
              "resources" = {
                "limits" = {
                  "cpu" = "500m"
                  "memory" = "1G"
                }
                "requests" = {
                  "cpu" = "200m"
                  "memory" = "256Mi"
                }
              }
              "securityContext" = {
                "allowPrivilegeEscalation" = true
                "capabilities" = {}
                "privileged" = true
                "readOnlyRootFilesystem" = false
                "runAsNonRoot" = false
              }
              "terminationMessagePath" = "/dev/termination-log"
              "terminationMessagePolicy" = "File"
              "volumeMounts" = [
                {
                  "mountPath" = "/var/lib/mysql"
                  "name" = "vol-qrzml"
                  "subPath" = "meiraaccessories/db_dir"
                },
              ]
            },
          ]
          "dnsPolicy" = "ClusterFirst"
          "nodeName" = "optiplex7040"
          "restartPolicy" = "Always"
          "schedulerName" = "default-scheduler"
          "securityContext" = {}
          "terminationGracePeriodSeconds" = 30
          "volumes" = [
            {
              "name" = "vol-qrzml"
              "persistentVolumeClaim" = {
                "claimName" = "meira-local-pvc"
              }
            },
          ]
        }
      }
    }
  }
}

resource "kubernetes_manifest" "deployment_musti_apps_musti_deployment" {
  field_manager {
    force_conflicts = true
  }

  manifest = {
    "apiVersion" = "apps/v1"
    "kind" = "Deployment"
    "metadata" = {
      "annotations" = {
        "deployment.kubernetes.io/revision" = "9"
        "field.cattle.io/publicEndpoints" = "[{\"port\":30000,\"protocol\":\"TCP\",\"serviceName\":\"musti-apps:musti-deployment-nodeport\",\"allNodes\":true},{\"addresses\":[\"192.168.50.100\"],\"port\":80,\"protocol\":\"HTTP\",\"serviceName\":\"musti-apps:musti-deployment\",\"ingressName\":\"musti-apps:drulkuozkaya\",\"hostname\":\"*.drulkuozkaya.com\",\"path\":\"/\",\"allNodes\":false}]"
        "kubectl.kubernetes.io/last-applied-configuration" = <<-EOT
        {"apiVersion":"apps/v1","kind":"Deployment","metadata":{"annotations":{"deployment.kubernetes.io/revision":"18","field.cattle.io/publicEndpoints":"[{\"port\":30000,\"protocol\":\"TCP\",\"serviceName\":\"musti-apps:musti-deployment-nodeport\",\"allNodes\":true},{\"addresses\":[\"192.168.50.100\"],\"port\":80,\"protocol\":\"HTTP\",\"serviceName\":\"musti-apps:musti-deployment\",\"ingressName\":\"musti-apps:drulkuozkaya\",\"hostname\":\"*.drulkuozkaya.com\",\"path\":\"/\",\"allNodes\":false}]"},"labels":{"workload.user.cattle.io/workloadselector":"apps.deployment-musti-apps-musti-deployment"},"name":"musti-deployment","namespace":"musti-apps"},"spec":{"progressDeadlineSeconds":600,"replicas":1,"revisionHistoryLimit":10,"selector":{"matchLabels":{"workload.user.cattle.io/workloadselector":"apps.deployment-musti-apps-musti-deployment"}},"strategy":{"rollingUpdate":{"maxSurge":"25%","maxUnavailable":"25%"},"type":"RollingUpdate"},"template":{"metadata":{"labels":{"workload.user.cattle.io/workloadselector":"apps.deployment-musti-apps-musti-deployment"},"namespace":"musti-apps"},"spec":{"containers":[{"image":"ozkaya84/drulkuozkaya","imagePullPolicy":"Always","name":"drulkuozkaya","ports":[{"containerPort":80,"name":"musti-nodeport","protocol":"TCP"}],"readinessProbe":{"failureThreshold":3,"httpGet":{"path":"/","port":80,"scheme":"HTTP"},"periodSeconds":10,"successThreshold":1,"timeoutSeconds":1},"resources":{},"securityContext":{"allowPrivilegeEscalation":false,"privileged":false,"readOnlyRootFilesystem":false,"runAsNonRoot":false},"terminationMessagePath":"/dev/termination-log","terminationMessagePolicy":"File"}],"dnsPolicy":"ClusterFirst","restartPolicy":"Always","schedulerName":"default-scheduler","terminationGracePeriodSeconds":30}}}}
        
        EOT
      }
      "labels" = {
        "workload.user.cattle.io/workloadselector" = "apps.deployment-musti-apps-musti-deployment"
      }
      "name" = "musti-deployment"
      "namespace" = "musti-apps"
    }
    "spec" = {
      "progressDeadlineSeconds" = 600
      "replicas" = 1
      "revisionHistoryLimit" = 10
      "selector" = {
        "matchLabels" = {
          "workload.user.cattle.io/workloadselector" = "apps.deployment-musti-apps-musti-deployment"
        }
      }
      "strategy" = {
        "rollingUpdate" = {
          "maxSurge" = "25%"
          "maxUnavailable" = "25%"
        }
        "type" = "RollingUpdate"
      }
      "template" = {
        "metadata" = {
          "annotations" = {
            "cattle.io/timestamp" = "2026-06-23T20:51:11Z"
            "kubectl.kubernetes.io/restartedAt" = "2026-01-03T00:20:20+01:00"
          }
          "labels" = {
            "workload.user.cattle.io/workloadselector" = "apps.deployment-musti-apps-musti-deployment"
          }
          "namespace" = "musti-apps"
        }
        "spec" = {
          "containers" = [
            {
              "image" = "ozkaya84/drulkuozkaya:2"
              "imagePullPolicy" = "Always"
              "name" = "drulkuozkaya"
              "ports" = [
                {
                  "containerPort" = 80
                  "name" = "musti-nodeport"
                  "protocol" = "TCP"
                },
              ]
              "readinessProbe" = {
                "failureThreshold" = 3
                "httpGet" = {
                  "path" = "/"
                  "port" = 80
                  "scheme" = "HTTP"
                }
                "periodSeconds" = 10
                "successThreshold" = 1
                "timeoutSeconds" = 1
              }
              "resources" = {}
              "securityContext" = {
                "allowPrivilegeEscalation" = false
                "privileged" = false
                "readOnlyRootFilesystem" = false
                "runAsNonRoot" = false
              }
              "terminationMessagePath" = "/dev/termination-log"
              "terminationMessagePolicy" = "File"
            },
          ]
          "dnsPolicy" = "ClusterFirst"
          "restartPolicy" = "Always"
          "schedulerName" = "default-scheduler"
          "securityContext" = {}
          "terminationGracePeriodSeconds" = 30
        }
      }
    }
  }
}

resource "kubernetes_manifest" "deployment_musti_apps_real_currency_api" {
  field_manager {
    force_conflicts = true
  }

  manifest = {
    "apiVersion" = "apps/v1"
    "kind" = "Deployment"
    "metadata" = {
      "annotations" = {
        "deployment.kubernetes.io/revision" = "4"
        "field.cattle.io/description" = "Go Microservice  - get currency from canlidoviz.com "
        "field.cattle.io/publicEndpoints" = "[{\"port\":30003,\"protocol\":\"TCP\",\"serviceName\":\"musti-apps:real-currency-api-nodeport\",\"allNodes\":true}]"
      }
      "labels" = {
        "workload.user.cattle.io/workloadselector" = "apps.deployment-musti-apps-real-currency-api"
      }
      "name" = "real-currency-api"
      "namespace" = "musti-apps"
    }
    "spec" = {
      "progressDeadlineSeconds" = 600
      "replicas" = 1
      "revisionHistoryLimit" = 10
      "selector" = {
        "matchLabels" = {
          "workload.user.cattle.io/workloadselector" = "apps.deployment-musti-apps-real-currency-api"
        }
      }
      "strategy" = {
        "rollingUpdate" = {
          "maxSurge" = "25%"
          "maxUnavailable" = "25%"
        }
        "type" = "RollingUpdate"
      }
      "template" = {
        "metadata" = {
          "annotations" = {
            "cattle.io/timestamp" = "2026-07-14T11:25:27Z"
            "kubectl.kubernetes.io/restartedAt" = "2026-10-04T00:57:35+02:00"
          }
          "labels" = {
            "workload.user.cattle.io/workloadselector" = "apps.deployment-musti-apps-real-currency-api"
          }
          "name" = "real-currency-api"
          "namespace" = "musti-apps"
        }
        "spec" = {
          "affinity" = {}
          "containers" = [
            {
              "image" = "ozkaya84/real-currency"
              "imagePullPolicy" = "Always"
              "name" = "real-currency-api"
              "ports" = [
                {
                  "containerPort" = 8080
                  "name" = "musti-api"
                  "protocol" = "TCP"
                },
              ]
              "resources" = {}
              "securityContext" = {
                "allowPrivilegeEscalation" = false
                "privileged" = false
                "readOnlyRootFilesystem" = false
                "runAsNonRoot" = false
              }
              "terminationMessagePath" = "/dev/termination-log"
              "terminationMessagePolicy" = "File"
            },
          ]
          "dnsPolicy" = "ClusterFirst"
          "restartPolicy" = "Always"
          "schedulerName" = "default-scheduler"
          "securityContext" = {}
          "terminationGracePeriodSeconds" = 30
        }
      }
    }
  }
}

resource "kubernetes_manifest" "deployment_musti_apps_weather_api" {
  field_manager {
    force_conflicts = true
  }

  manifest = {
    "apiVersion" = "apps/v1"
    "kind" = "Deployment"
    "metadata" = {
      "annotations" = {
        "deployment.kubernetes.io/revision" = "6"
        "field.cattle.io/description" = "Fetching weather , crypto and currencies "
        "field.cattle.io/publicEndpoints" = "[{\"port\":30002,\"protocol\":\"TCP\",\"serviceName\":\"musti-apps:weather-api-nodeport\",\"allNodes\":true}]"
      }
      "labels" = {
        "workload.user.cattle.io/workloadselector" = "apps.deployment-musti-apps-weather-api"
      }
      "name" = "weather-api"
      "namespace" = "musti-apps"
    }
    "spec" = {
      "progressDeadlineSeconds" = 600
      "replicas" = 1
      "revisionHistoryLimit" = 10
      "selector" = {
        "matchLabels" = {
          "workload.user.cattle.io/workloadselector" = "apps.deployment-musti-apps-weather-api"
        }
      }
      "strategy" = {
        "rollingUpdate" = {
          "maxSurge" = "25%"
          "maxUnavailable" = "25%"
        }
        "type" = "RollingUpdate"
      }
      "template" = {
        "metadata" = {
          "labels" = {
            "workload.user.cattle.io/workloadselector" = "apps.deployment-musti-apps-weather-api"
          }
          "namespace" = "musti-apps"
        }
        "spec" = {
          "containers" = [
            {
              "image" = "ozkaya84/go-weather-api"
              "imagePullPolicy" = "Always"
              "name" = "weather-api"
              "ports" = [
                {
                  "containerPort" = 8080
                  "name" = "musti-api"
                  "protocol" = "TCP"
                },
              ]
              "resources" = {}
              "securityContext" = {
                "allowPrivilegeEscalation" = false
                "privileged" = false
                "readOnlyRootFilesystem" = false
                "runAsNonRoot" = false
              }
              "terminationMessagePath" = "/dev/termination-log"
              "terminationMessagePolicy" = "File"
            },
          ]
          "dnsPolicy" = "ClusterFirst"
          "restartPolicy" = "Always"
          "schedulerName" = "default-scheduler"
          "securityContext" = {}
          "terminationGracePeriodSeconds" = 30
        }
      }
    }
  }
}

resource "kubernetes_manifest" "service_musti_apps_musti_deployment_nodeport" {
  field_manager {
    force_conflicts = true
  }

  manifest = {
    "apiVersion" = "v1"
    "kind" = "Service"
    "metadata" = {
      "annotations" = {
        "field.cattle.io/publicEndpoints" = "[{\"port\":30000,\"protocol\":\"TCP\",\"serviceName\":\"musti-apps:musti-deployment-nodeport\",\"allNodes\":true}]"
        "field.cattle.io/targetWorkloadIds" = "[\"musti-apps/musti-deployment\"]"
        "management.cattle.io/ui-managed" = "true"
      }
      "name" = "musti-deployment-nodeport"
      "namespace" = "musti-apps"
    }
    "spec" = {
      "clusterIP" = "10.43.198.61"
      "clusterIPs" = [
        "10.43.198.61",
      ]
      "externalTrafficPolicy" = "Cluster"
      "internalTrafficPolicy" = "Cluster"
      "ipFamilies" = [
        "IPv4",
      ]
      "ipFamilyPolicy" = "SingleStack"
      "ports" = [
        {
          "name" = "musti-nodeport"
          "nodePort" = 30000
          "port" = 80
          "protocol" = "TCP"
          "targetPort" = 80
        },
      ]
      "selector" = {
        "workload.user.cattle.io/workloadselector" = "apps.deployment-musti-apps-musti-deployment"
      }
      "sessionAffinity" = "None"
      "type" = "NodePort"
    }
  }
}
