import {
  to = kubernetes_manifest.deployment_musti_apps_live_go_portal
  id = "apiVersion=apps/v1,kind=Deployment,namespace=musti-apps,name=live-go-portal"
}

import {
  to = kubernetes_manifest.deployment_musti_apps_meiraaccessories
  id = "apiVersion=apps/v1,kind=Deployment,namespace=musti-apps,name=meiraaccessories"
}

import {
  to = kubernetes_manifest.deployment_musti_apps_musti_deployment
  id = "apiVersion=apps/v1,kind=Deployment,namespace=musti-apps,name=musti-deployment"
}

import {
  to = kubernetes_manifest.deployment_musti_apps_real_currency_api
  id = "apiVersion=apps/v1,kind=Deployment,namespace=musti-apps,name=real-currency-api"
}

import {
  to = kubernetes_manifest.deployment_musti_apps_weather_api
  id = "apiVersion=apps/v1,kind=Deployment,namespace=musti-apps,name=weather-api"
}

import {
  to = kubernetes_manifest.service_musti_apps_live_go_portal
  id = "apiVersion=v1,kind=Service,namespace=musti-apps,name=live-go-portal"
}

import {
  to = kubernetes_manifest.service_musti_apps_mariadb
  id = "apiVersion=v1,kind=Service,namespace=musti-apps,name=mariadb"
}

import {
  to = kubernetes_manifest.service_musti_apps_meiraaccessories
  id = "apiVersion=v1,kind=Service,namespace=musti-apps,name=meiraaccessories"
}

import {
  to = kubernetes_manifest.service_musti_apps_meiraaccessories_nodeport
  id = "apiVersion=v1,kind=Service,namespace=musti-apps,name=meiraaccessories-nodeport"
}

import {
  to = kubernetes_manifest.service_musti_apps_musti_deployment
  id = "apiVersion=v1,kind=Service,namespace=musti-apps,name=musti-deployment"
}

import {
  to = kubernetes_manifest.service_musti_apps_musti_deployment_nodeport
  id = "apiVersion=v1,kind=Service,namespace=musti-apps,name=musti-deployment-nodeport"
}

import {
  to = kubernetes_manifest.service_musti_apps_nextcloud_external_service
  id = "apiVersion=v1,kind=Service,namespace=musti-apps,name=nextcloud-external-service"
}

import {
  to = kubernetes_manifest.service_musti_apps_opencloud_collabora_service
  id = "apiVersion=v1,kind=Service,namespace=musti-apps,name=opencloud-collabora-service"
}

import {
  to = kubernetes_manifest.service_musti_apps_opencloud_external_service
  id = "apiVersion=v1,kind=Service,namespace=musti-apps,name=opencloud-external-service"
}

import {
  to = kubernetes_manifest.service_musti_apps_opencloud_wopi_service
  id = "apiVersion=v1,kind=Service,namespace=musti-apps,name=opencloud-wopi-service"
}

import {
  to = kubernetes_manifest.service_musti_apps_real_currency_api
  id = "apiVersion=v1,kind=Service,namespace=musti-apps,name=real-currency-api"
}

import {
  to = kubernetes_manifest.service_musti_apps_real_currency_api_nodeport
  id = "apiVersion=v1,kind=Service,namespace=musti-apps,name=real-currency-api-nodeport"
}

import {
  to = kubernetes_manifest.service_musti_apps_weather_api
  id = "apiVersion=v1,kind=Service,namespace=musti-apps,name=weather-api"
}

import {
  to = kubernetes_manifest.service_musti_apps_weather_api_nodeport
  id = "apiVersion=v1,kind=Service,namespace=musti-apps,name=weather-api-nodeport"
}

import {
  to = kubernetes_manifest.service_musti_apps_wordpress_mariadb
  id = "apiVersion=v1,kind=Service,namespace=musti-apps,name=wordpress-mariadb"
}


import {
  to = kubernetes_manifest.secret_musti_apps_mariadb_wordpress_secret
  id = "apiVersion=v1,kind=Secret,namespace=musti-apps,name=mariadb-wordpress-secret"
}

import {
  to = kubernetes_manifest.persistentvolumeclaim_musti_apps_meira_local_pvc
  id = "apiVersion=v1,kind=PersistentVolumeClaim,namespace=musti-apps,name=meira-local-pvc"
}

