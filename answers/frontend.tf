resource "kubernetes_deployment" "ft-deploy" {
  metadata {
    name = "ft-deploy"
    labels = {
      name = "ft-deploy"
    }
  }

  spec {
    replicas = 5

    selector {
      match_labels = {
        name = "web1"
      }
    }

    template {
      metadata {
        labels = {
          name = "webapp"
        }
      }


      spec {
        container {
          image = "nginx"
          name  = "webapp-1"

          port {
            container_port = 8080
          }
        }
      }
    }
  }
}