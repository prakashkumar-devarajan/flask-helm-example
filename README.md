# Steps to Build & Push Flask Application
- $ docker build . -t flask-helm-example:latest --network host
- $ docker tag flask-helm-example:latest prakashse/my-flask-app:1.0
- $ docker push prakashse/my-flask-app:1.0


# Helm Install Flash Application
- $ helm install flask-helm-example ./helm/flask-helm-example

# Terraform Deploy Flash Application
- $ terraform init
- $ terraform plan
- $ terraform apply
