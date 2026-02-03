| pathType                 | How it matches                           | Example match `/api`                        |
| ------------------------ | ---------------------------------------- | ------------------------------------------- |
| `Exact`                  | Only `/api`                              | ✅ matches `/api`, ❌ `/api/` or `/api/users` |
| `Prefix`                 | `/api*` (all paths starting with `/api`) | ✅ matches `/api`, `/api/`, `/api/users`     |
| `ImplementationSpecific` | Depends on Ingress controller            | Varies by controller                        |

____________________________________________________________________________________________

# 1️⃣ Dash - = list item

In YAML, - means this is an element of a list (array).

# Example:

containers:
  - name: app
    image: nginx
  - name: sidecar
    image: busybox


# 2️⃣ No dash = a single object (dictionary)

metadata:
  name: app-two
  labels:
    app: app2

# metadata is an object/dictionary
# name is a field inside it
# No dash needed because it’s not a list

____________________________________________________________________________________________

# http: means:

“These routing rules apply to HTTP/HTTPS traffic”

Ingress (in Kubernetes today) is only for Layer 7 traffic:

✅ HTTP

✅ HTTPS

❌ NOT TCP / UDP (those are handled differently)

There is no:

tcp:
udp:


# backend means:

“Where should this request be sent inside the cluster?”
In Kubernetes Ingress the backend is almost always a Service.
