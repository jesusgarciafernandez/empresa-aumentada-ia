# Flujo: Siniestro de Hogar

**Objetivo:** Guiar al mediador en la apertura y gestión inicial de un siniestro de hogar o comunidad.
**Agentes implicados:** Director, Siniestros, Productos y Coberturas, Atención al Cliente.

**Datos de entrada:**
- Tipo de daño (agua, eléctrico, robo, etc.).
- Descripción inicial del cliente.

**Pasos:**
1. El Director clasifica como Siniestro y activa al Agente de Siniestros.
2. El Agente de Siniestros solicita confirmación de datos vitales (póliza, fecha, terceros).
3. Si el usuario pregunta si está cubierto, el Agente de Productos consulta el condicionado en `/conocimiento/02_productos_y_coberturas/hogar/`.
4. El Agente de Siniestros genera un checklist interno.
5. El Agente de Atención al Cliente genera el texto para pedir las fotos y facturas.

**Plantilla de salida:** `checklist_siniestro.md` y `correo_cliente.md`

**Ejemplo de uso:**
*Usuario:* "Tengo una clienta a la que se le ha roto la vitrocerámica de golpe, sin que cayera nada."
*Sistema:* Guía al usuario advirtiendo que las vitrocerámicas suelen requerir impacto y genera la solicitud de información prudente al cliente.
