# Flujo: Comparación de Opciones

**Objetivo:** Obtener un análisis comparativo estructurado entre dos o más opciones.
**Agentes implicados:** Producto / Servicio.

**Datos de entrada:**
- "Compara X con Y".

**Pasos:**
1. El Agente de Producto/Servicio lee la documentación de las opciones en `/conocimiento`.
2. Extrae las características principales de cada una.
3. Aplica la skill `comparacion-opciones`.
4. Genera la tabla de salida con la recomendación prudente.

**Plantilla de salida:** `respuesta_tecnica.md` (con tabla).
