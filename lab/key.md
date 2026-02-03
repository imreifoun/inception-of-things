
# in service 

spec:
  selector:
    app: app2
  ports:
  - port: 80
    targetPort: 80

# scalling up / down

env:
- name: POD_NAME
    valueFrom:
    fieldRef:
        fieldPath: metadata.name
command:
- /bin/sh
- -c
- |
    echo "[app1] : $POD_NAME" > /usr/share/nginx/html/index.html
    nginx -g "daemon off;"

