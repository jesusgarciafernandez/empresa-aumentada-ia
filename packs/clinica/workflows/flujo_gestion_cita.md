# Flujo: Gestión de Cita (pack clínica)

**Objetivo:** Dar de alta, confirmar o reprogramar una cita y enviar recordatorios, con datos mínimos.
**Agentes implicados:** Gestión de Pacientes, Recepción y Comunicación.

**Pasos:**
1. Identificar al paciente y el tipo de visita (sin volcar datos clínicos en sistemas no seguros).
2. Consultar el protocolo de citas en `conocimiento/01_procedimientos_internos/`.
3. Asignar/confirmar fecha y profesional.
4. Redactar el recordatorio (skill `generacion-respuestas`) con datos mínimos.
5. Registrar la confirmación o la cancelación.

**Plantilla de salida:** `comunicacion_cliente.md`
