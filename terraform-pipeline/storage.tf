resource "kubernetes_manifest" "persistentvolumeclaim_musti_apps_meira_local_pvc" {
  field_manager {
    force_conflicts = true
  }

  manifest = {
    "apiVersion" = "v1"
    "kind" = "PersistentVolumeClaim"
    "metadata" = {
      "annotations" = {
        "pv.kubernetes.io/bind-completed" = "yes"
        "pv.kubernetes.io/bound-by-controller" = "yes"
      }
      "finalizers" = [
        "kubernetes.io/pvc-protection",
      ]
      "name" = "meira-local-pvc"
      "namespace" = "musti-apps"
    }
    "spec" = {
      "accessModes" = [
        "ReadWriteOnce",
      ]
      "resources" = {
        "requests" = {
          "storage" = "10Gi"
        }
      }
      "storageClassName" = "musti-local-sc"
      "volumeMode" = "Filesystem"
      "volumeName" = "optiplex-cluster-storage"
    }
  }
}
