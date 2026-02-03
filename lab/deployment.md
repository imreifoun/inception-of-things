# So the Deployment:

    declares the desired state
    watches pods indirectly via labels

# What the selector means

“These are the pods that belong to this Deployment.”

# Kubernetes uses this selector to:

    count how many pods are running

    know which pods to scale

    know which pods to delete / recreate

    know pod status (Ready, Running, Failed, etc.)

# ⚠️ Very important

A Deployment never tracks pods by name
It tracks them by labels only

# !!!! Deployment selects pods using selector

# Pods are created from template

# matchLables (Simple) 2️⃣ matchExpressions (advanced)

template:
  metadata:
    labels:
      app: app1

“Every pod created by this Deployment will have these labels.”

This metadata belongs to each Pod created.


# Deployment
 ├─ selector (HOW I find my pods)
 │    └─ matchLabels / matchExpressions
 │
 └─ template
      └─ metadata (WHAT my pods will look like)
           ├─ labels (used for selection)
           └─ annotations (used for info/tools)



