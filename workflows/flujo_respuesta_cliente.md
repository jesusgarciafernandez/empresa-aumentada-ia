# Flujo: Respuesta al Cliente

**Objetivo:** Crear comunicaciones externas de alta calidad.
**Agentes implicados:** Atención y Comunicación, Cumplimiento (opcional).

**Datos de entrada:**
- Petición de redactar email, WhatsApp o guion.
- Contexto de la situación.

**Pasos:**
1. El Agente de Atención y Comunicación determina el tono y el canal (según la configuración).
2. Aplica la skill `generacion-respuestas`.
3. Si el mensaje incluye datos sensibles (médicos, fiscales, etc.), activa al Agente de Cumplimiento para validar (ej. "enviar por canal seguro").
4. Muestra la respuesta formateada y lista para enviar.

**Plantilla de salida:** `comunicacion_cliente.md` o `respuesta_cliente.md`
