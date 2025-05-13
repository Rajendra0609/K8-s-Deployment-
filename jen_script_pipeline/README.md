kubectl describe secret jenkins-sa-token -n jenkins
kubectl describe secret jenkins -n jenkins
kubectl get secret jenkins-sa-token -n jenkins -o jsonpath='{.data.token}' | base64 --decode
kubectl get secret jenkins -n jenkins -o jsonpath='{.data.token}' | base64 --decode
 kubectl get secret jenkins-admin-secret -n jenkins -o jsonpath='{.data.token}' | base64 --decode
-decode
 1906  kubectl get serviceaccount
 1907  kubectl get serviceaccount -n jenkins
 1908  kubectl get secret $(kubectl get serviceaccount jenkins -n jenkins -o jsonpath='{.secrets[0].name}') -n jenkins -o jsonpath='{.data.token}' | base64 --decode
 1909  kubectl get serviceaccount -n jenkins
 1910  kubectl get secret $(kubectl get serviceaccount jenkins-sa -o jsonpath='{.secrets[0].name}') -o jsonpath='{.data.token}' | base64 --decode
 1911  kubectl get secret $(kubectl get serviceaccount jenkins -o jsonpath='{.secrets[0].name}') -o jsonpath='{.data.token}' | base64 --decode
 1912  kubectl get secret $(kubectl get serviceaccount jenkins -n jenkins -o jsonpath='{.secrets[0].name}') -n jenkins -o jsonpath='{.data.token}' | base64 --decode
 1913  kubectl get secret jenkins -n jenkins -o jsonpath='{.data.token}' | base64 --decode
 1914  kubectl get secrets -n jenkins
 1915  kubectl delete secret jenkins-cert-secret -n jenkins && kubectl create secret generic jenkins-cert-secret --from-file=jenkins-ca.crt=jenkins-ca.crt -n jenkins
 1916  kubectl create secret generic jenkins-cert-secret --from-file=jenkins-ca.crt=jenkins-ca.crt -n jenkins

