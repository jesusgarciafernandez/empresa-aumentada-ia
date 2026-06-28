# Carpeta `releases/`

Esta carpeta guarda **archivos binarios pesados** (`.docx`, `.pdf`, `.pptx`…) que **no se
versionan** en el repositorio, para no engordar el historial de git con archivos que no se
pueden *diffear*.

Su contenido está excluido por `.gitignore` (salvo este propio README).

## Para qué sirve

Aquí dejas los documentos que quieres ofrecer como **descarga** sin meterlos en el control
de versiones. Cuando publiques una versión en GitHub, **adjunta estos archivos al Release**
correspondiente (sección *Releases* → *Draft a new release* → *Attach binaries*).

## Contenido actual (local, no versionado)

- `guia_para_adaptar-a-tu-negocio.docx` y `.pdf` — versiones descargables de la guía
  (la fuente editable y versionada es `documentacion/GUIA_ADAPTAR_A_TU_NEGOCIO.md`).
- `Posibilidades_Correduria_Aumentada.docx` — documento de apoyo del pack de seguros.

> La fuente de verdad de la guía es el archivo Markdown en `documentacion/`. Estos binarios
> son solo copias para distribución.
