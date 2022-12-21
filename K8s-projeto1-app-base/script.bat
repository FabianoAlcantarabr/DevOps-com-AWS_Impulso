echo "fazendo as imagens!!!"

docker build -t fabianoalcantara/projeto-k8sbackend:1.0 backend/.
docker build -t fabianoalcantara/projeto-k8sdatabase:1.0 database/.

echo "subindo as imagens !!!!"

docker push fabianoalcantara/projeto-k8sbackend:1.0
docker push fabianoalcantara/projeto-k8sdatabase:1.0

echo "Criando serviços para o cluster K8s!!!!"

kubectl apply -f ./service.yml

echo "Criando deploy!!!"

kubectl apply -f ./deployment.yml

