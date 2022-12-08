variable "FRAPPE_VERSION" {
  default = "version-14"
}

variable "ERPNEXT_VERSION" {
  default = "version-14"
}

variable "REGISTRY_NAME" {
  default = "custom_images"
}

variable "PERSONAL_ACCESS_TOKEN" {
  default = "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"
}

variable "BACKEND_IMAGE_NAME" {
  default = "custom_worker"
}

variable "FRONTEND_IMAGE_NAME" {
  default = "custom_nginx"
}

variable "VERSION" {
  default = "latest"
}

group "default" {
    targets = ["backend", "frontend"]
}

target "backend" {
    dockerfile = "images/backend.Dockerfile"
    tags = ["${REGISTRY_NAME}/${BACKEND_IMAGE_NAME}:${VERSION}"]
    args = {
      "ERPNEXT_VERSION" = ERPNEXT_VERSION
    }
}

target "frontend" {
    dockerfile = "images/frontend.Dockerfile"
    tags = ["${REGISTRY_NAME}/${FRONTEND_IMAGE_NAME}:${VERSION}"]
    args = {
      "FRAPPE_VERSION" = FRAPPE_VERSION
      "ERPNEXT_VERSION" = ERPNEXT_VERSION
    }
}
