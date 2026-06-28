# Historial de versiones — Empresa Aumentada por IA

El formato sigue, de forma sencilla, la convención *fecha · versión · cambios*.

## v3.1 — 26/06/2026
Configurador visual del negocio: alternativa por formulario a la entrevista de onboarding.
- **Añadido:** `configurador.html`, formulario autónomo con las 11 secciones de la configuración
  (ayudas y ejemplos por campo, productos/servicios y proveedores dinámicos, barra de progreso).
  Carga un `config.json` existente y exporta `config.json` + `00_CONFIGURACION_NEGOCIO.md`.
- **Añadido:** `config.json` en la raíz como fuente de datos editable (genera el `.md` que lee la IA).
- **Añadido:** `servidor.py` (Python, sin dependencias) para **guardado directo** en la carpeta vía
  `localhost`, con endpoint `/guardar`; funciona en cualquier navegador.
- **Añadido:** lanzadores multiplataforma `Iniciar configurador (Windows).bat`, `(Mac).command`,
  `(Linux).sh`, con detección de Python y *fallback* automático a modo descarga si no está.
- **Añadido:** `CONFIGURADOR_LEEME.md` con la guía de uso (modos, Python, los dos archivos juntos).
- **Cambiado:** estética del configurador a la marca *Humanista Contemporáneo* (Dirección C):
  Cormorant Garamond + Inter, paleta piedra/carboncillo/ámbar.
- **Cambiado:** skill `onboarding-negocio` y `README.md` ofrecen ahora dos vías (chat o formulario);
  si ya hay configuración hecha con el formulario, la IA la lee y no repite la entrevista.

## v3.0 — 23/06/2026
Generalización multisectorial: el sistema deja de ser específico de seguros y pasa a servir a
**cualquier negocio o sector**. La versión de seguros se conserva como pack de referencia.
- **Cambiado:** sistema renombrado a "Empresa Aumentada por IA"; lenguaje neutro en todo el núcleo.
- **Añadido:** `00_CONFIGURACION_NEGOCIO.md`, configuración universal por sector (sustituye a la de correduría).
- **Añadido:** capa de **packs sectoriales** (`packs/`) con tres packs: `seguros/`, `clinica/` y `despacho/`.
- **Añadido:** skill `onboarding-negocio` (entrevista guiada de auto-montaje) y flujo asociado.
- **Añadido:** skill `ingesta-conocimiento` (clasificar e indexar documentos nuevos).
- **Añadido:** líneas rojas en dos niveles (universales + del pack) en `instruccion.md`.
- **Cambiado:** agentes renombrados a roles funcionales (conocimiento interno, producto/servicio,
  incidencias/casos, atención y comunicación, comercial/desarrollo, diagnóstico/necesidades,
  formación interna, cumplimiento).
- **Cambiado:** skills neutras (`comparacion-opciones`, `generacion-respuestas`, `evaluacion-necesidades`).
- **Cambiado:** workflows abstractos (`flujo_gestion_incidencia`, `flujo_renovacion_recurrencia`…);
  los flujos de siniestro pasan al pack de seguros.
- **Cambiado:** taxonomía neutra de `conocimiento/` y `_LEEME.md` genéricos.
- **Cambiado:** plantillas neutras (`checklist_proceso`, `informe_diagnostico`, `propuesta`,
  `comunicacion_cliente`).
- **Cambiado:** `GUIA_PRIVACIDAD_DATOS.md` (antes RGPD) universal y jurisdicción configurable.
- **Añadido:** `documentacion/GUIA_ADAPTAR_A_TU_NEGOCIO.md`, guía paso a paso para usuarios no técnicos.

## v2.0 — 23/06/2026
Evolución mayor de la plantilla de correduría para uso sin conocimientos técnicos (arranque
automático, configuración, privacidad, `_LEEME.md`, skills en formato `SKILL.md`).

## v1.0 — 10/06/2026
Versión inicial (correduría de seguros): instrucción maestra, 9 agentes, 9 skills, 9 workflows,
7 plantillas, demo y base de conocimiento de ejemplo.
