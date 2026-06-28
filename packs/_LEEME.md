# 📦 Packs sectoriales

Un **pack** adapta la "Empresa Aumentada" a un sector concreto sin tocar el núcleo. Aporta el
vocabulario, las líneas rojas, los ejemplos y la configuración típica de ese sector.

## Cómo se usa un pack
1. En `00_CONFIGURACION_NEGOCIO.md` (sección 2), escribe el nombre del pack en "¿Usas un pack sectorial?".
2. La IA leerá `packs/<sector>/PACK.md` al iniciar y cargará su vocabulario y sus líneas rojas.
3. Su documentación de ejemplo está en `packs/<sector>/conocimiento/` y sus demos en `packs/<sector>/demo/`.

## Packs disponibles
- **`seguros/`** — correduría / mediación de seguros (pack de referencia).
- **`clinica/`** — centro sanitario (clínica, consulta, gabinete). Apoyo a gestión y comunicación, nunca al acto clínico.
- **`despacho/`** — despacho profesional (abogados, asesoría, gestoría). Gestión de expedientes y comunicación.

## Cómo crear un pack nuevo (formato estándar)
Crea una carpeta `packs/<sector>/` con:
- **`PACK.md`** (obligatorio): manifiesto del pack. Define:
  - Vocabulario del sector (cómo se llaman aquí "incidencia/caso", "producto", "cliente"…).
  - **Etiquetas de agente** (cómo se muestra cada agente en este sector).
  - **Líneas rojas del sector** (se suman a las universales de `instruccion.md`).
  - Normativa clave aplicable.
  - Qué aporta el pack (conocimiento de ejemplo, demos, flujos extra).
- **`conocimiento/`** (opcional): documentos de ejemplo del sector.
- **`demo/`** (opcional): prompts y casos de demostración del sector.
- **`workflows/`** (opcional): flujos específicos del sector.
- **`00_CONFIGURACION_PRESET.md`** (opcional): configuración tipo prerrellenada como punto de partida.

> Pídele a la IA: *"crea un pack para mi sector"* y te guiará para montarlo con este formato.
