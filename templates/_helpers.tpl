{{- define "app.metadata" }}
metadata:
  name: {{.Values.appName }}
  labels:
    app: {{.Values.appName }}
    project: roboshop
{{- end }}

{{- define "app.labels" }}
app: {{.Values.appName }}
project: roboshop
{{- end }}