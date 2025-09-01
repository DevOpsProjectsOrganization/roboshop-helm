{{- define "app.labels" }}
metadata:
  name: {{.Values.appName }}
  labels:
    app: {{.Values.appName }}
    project: roboshop
{{- end }}