# Flask Helm Example

```sh
docker build . -t flask-helm-example:latest --network host
docker tag flask-helm-example:latest prakashse/my-flask-app
docker push prakashse/my-flask-app
helm install flask-helm-example -f devvalues.yaml ./chart
