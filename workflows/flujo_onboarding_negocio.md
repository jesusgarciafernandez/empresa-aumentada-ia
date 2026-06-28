# Flujo: Onboarding del Negocio

**Objetivo:** Dejar el sistema configurado a medida de cualquier negocio, sin conocimientos técnicos.
**Agentes implicados:** Director, (activa la skill `onboarding-negocio`).

**Cuándo se activa:**
- Primera vez que se usa el sistema, o `00_CONFIGURACION_NEGOCIO.md` tiene `[corchetes]` sin rellenar.
- El usuario pide "ayúdame a configurar / empezar / adaptar esto a mi sector".

**Pasos:**
1. El Director detecta que falta configuración y lanza la skill `onboarding-negocio`.
2. Entrevista guiada (preguntas sencillas, una a una): identidad, sector, oferta, destinatario, equipo, tono.
3. Al conocer el sector, comprueba si existe `packs/<sector>/` y lo propone.
4. Rellena `00_CONFIGURACION_NEGOCIO.md` y activa/desactiva agentes según el caso.
5. Si hay pack, ofrece instalarlo; si no, confirma el modo genérico y ofrece documentos de ejemplo.
6. Indica el siguiente paso: subir documentación a `conocimiento/` (skill `ingesta-conocimiento`).

**Plantilla de salida:** (actualiza directamente `00_CONFIGURACION_NEGOCIO.md`)

**Ejemplo de uso:**
*Usuario:* "Tengo una asesoría fiscal, ayúdame a montar esto."
*Sistema:* Hace la entrevista, configura el negocio, avisa de las líneas rojas de confidencialidad y propone subir los procedimientos internos como primer conocimiento.
