docker build -t wendyharris/multi-client:latest -t wendyharris/multiclient:$SHA -f ./client/Dockerfile ./client
docker build -t wendyharris/multi-server:latest -t wendyharris/multiserver:$SHA  -f ./server/Dockerfile ./server
docker build -t wendyharris/multi-worker:latest -t wendyharris/multiworker:$SHA  -f ./worker/Dockerfile ./worker
docker push wendyharris/multi-client:latest
docker push wendyharris/multi-server:latest
docker push wendyharris/multi-worker:latest
docker push wendyharris/multi-client:$SHA
docker push wendyharris/multi-server:$SHA
docker push wendyharris/multi-worker:$SHA
kubectl apply -f k8s
kubectl set image deployments/server-deployment server=wendyharris/multi-server:$SHA
kubectl set image deployments/client-deployment client=wendyharris/multi-client:$SHA
kubectl set image deployments/worker-deployment worker=wendyharris/multi-worker:$SHA


