# Flujo: Gestión de Incidencia / Caso

**Objetivo:** Abrir, documentar y dar los primeros pasos de un caso operativo, sea cual sea su tipo.
**Agentes implicados:** Incidencias/Casos, Atención y Comunicación, (Cumplimiento si hay datos sensibles).

> En el pack de seguros este flujo se concreta en los flujos de siniestro (auto/hogar). En otros
> sectores cubre tickets, reclamaciones, devoluciones, expedientes, etc.

**Datos de entrada:**
- Descripción del problema o caso (ej. "un cliente tiene un problema con X").
- Tipo de caso, si se conoce.

**Pasos:**
1. El Agente de Incidencias/Casos identifica el tipo de caso y busca el procedimiento aplicable en `/conocimiento`.
2. Genera un **checklist interno** (skill `generacion-checklists`): datos a recopilar y documentos a pedir.
3. Detecta riesgos del caso (plazos, requisitos) y los señala.
4. El Agente de Atención y Comunicación redacta un **mensaje para el destinatario** pidiendo lo necesario o informando del estado.
5. Si hay datos personales sensibles, el Agente de Cumplimiento recuerda el canal seguro.
6. Se aplica `control-calidad-respuestas` (sin prometer un resultado no confirmado).
7. Se entregan checklist, mensaje y próximos pasos.

**Plantilla de salida:** `checklist_proceso.md` y `comunicacion_cliente.md`

**Ejemplo de uso:**
*Usuario:* "Un cliente reclama que su pedido llegó dañado. ¿Qué hago?"
*Sistema:* Checklist (fotos, nº de pedido, fecha), mensaje al cliente y aviso de los plazos internos.
