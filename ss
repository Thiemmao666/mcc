 affinity:
    nodeAffinity:
      requiredDuringSchedulingIgnoredDuringExecution:
        nodeSelectorTerms:
          - matchExpressions:
              - key: kubernetes.io/hostname
                operator: In
                values:
                  - mcc-master02
  ## @param operator.nodeSelector Prometheus Operator Node labels for pod assignment
  nodeSelector:
    kubernetes.io/hostname: mcc-master02
  ## @param operator.tolerations Prometheus Operator Tolerations for pod assignment
  tolerations:
    - key: "node-role.kubernetes.io/control-plane"
      operator: "Exists"
      effect: "NoSchedule"
  ## @param operator.podAnnotations Annotations for Prometheus Operator pods



  

Node-Selectors:  node-role.kubernetes.io/hostname=mcc-master02
Tolerations:     node-role.kubernetes.io/control-plane:NoSchedule op=Exists
                 node.kubernetes.io/not-ready:NoExecute op=Exists for 300s
                 node.kubernetes.io/unreachable:NoExecute op=Exists for 300s
Events:
  Type     Reason            Age                   From               Message
  ----     ------            ----                  ----               -------
  Warning  FailedScheduling  4m9s (x2 over 9m38s)  default-scheduler  0/7 nodes are available: 7 node(s) didn't match Pod's node affinity/selector. preemption: 0/7 nodes are available: 7 Preemption is not helpful for scheduling.
  
