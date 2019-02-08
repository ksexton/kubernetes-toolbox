# kubernetes-toolbox

Simple image that has commonly used troubleshooting tools built-in.

## Usage examples:

### Deploy a toolbox pod to kubernetes cluster
`kubectl apply -f toolbox-pod.yaml`

### Launch a bash shell into toolbox pod
`kubectl exec -it kubernetes-toolbox -- /bin/bash`

### Monitor how disk performance is across kubernetes nodes
`kubectl apply -f toolbox-dd.yaml`

Then locally run something like [stern](https://github.com/wercker/stern) to see output from the command:
`stern toolbox-dd`


     
     


