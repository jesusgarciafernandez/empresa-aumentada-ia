# Flujo: Siniestro de Auto

**Objetivo:** Protocolizar la gestión de accidentes de circulación, rotura de lunas o robos.
**Agentes implicados:** Siniestros, Atención al Cliente.

**Datos de entrada:**
- Circunstancias del siniestro (parte amistoso, colisión sin parte, asistencia en viaje, luna).

**Pasos:**
1. Se activa al Agente de Siniestros.
2. Se revisa en la base de datos si es convenio CICOS/SDM (si aplica).
3. Genera la lista de documentos obligatorios (DNI, permiso de conducir, parte, atestado si lo hay).
4. Genera advertencias específicas (plazo de 7 días, necesidad de croquis firmado).
5. Crea un mensaje claro para el asegurado.

**Plantilla de salida:** `checklist_siniestro.md`
