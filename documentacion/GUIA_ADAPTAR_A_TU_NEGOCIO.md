# 🧭 Guía paso a paso: cómo adaptar el sistema a tu negocio

> Para cualquier persona, **sin conocimientos técnicos**. En unos 20-30 minutos tendrás el sistema
> funcionando con la información y el tono de tu negocio. No tienes que tocar nada de programación:
> solo conversar con la IA y guardar algunos documentos en carpetas.

Sigue los pasos en orden. Puedes parar y continuar cuando quieras; tus cambios se conservan.

---

## Paso 1 · Abre la carpeta en tu asistente de IA
1. Abre tu herramienta (Claude, Antigravity/Gemini o Codex).
2. **Abre o selecciona** esta carpeta (`EMPRESA AUMENTADA`) como proyecto/espacio de trabajo.
3. El sistema se carga solo (lee su archivo de arranque). No tienes que copiar nada.

> ¿Dudas con tu herramienta concreta? Mira `documentacion/GUIA_DE_INICIO.md`.

---

## Paso 2 · Configura tu negocio con la IA (lo más importante)
En el chat, escribe:
> **"Ayúdame a configurar mi negocio"**

La IA te hará una **entrevista guiada**: preguntas sencillas, una a una (nombre del negocio, a qué te
dedicas, qué ofreces, a quién, cómo firmas los correos, tu tono…). Con tus respuestas rellena por ti
el archivo `00_CONFIGURACION_NEGOCIO.md`.

✅ Al terminar este paso, la IA ya responde "como tu casa": con tu nombre, tu tono y tu firma.

> ¿Prefieres hacerlo a mano? Abre `00_CONFIGURACION_NEGOCIO.md` y sustituye los textos entre
> `[corchetes]` por tus datos.

---

## Paso 3 · Activa un pack de tu sector (si existe)
Un **pack** trae el vocabulario, las reglas y los ejemplos típicos de un sector, para que arranques
más rápido. Packs disponibles ahora mismo:

- `seguros` — correduría / mediación de seguros.
- `clinica` — clínica, consulta o gabinete sanitario.
- `despacho` — abogados, asesoría o gestoría.

Si tu sector está, dilo en la sección 2 de `00_CONFIGURACION_NEGOCIO.md` (o pídeselo a la IA:
*"activa el pack clinica"*). Si **no** está, no pasa nada: el sistema funciona igual en **modo
genérico**, adaptándose a la documentación que subas. Incluso puedes pedir: *"crea un pack para mi
sector"* y la IA te ayuda a montarlo.

---

## Paso 4 · Sube la documentación de tu negocio
Aquí está el verdadero valor: que la IA responda con **tus** documentos. Abre la carpeta
`conocimiento/` y guarda cada archivo en la subcarpeta que corresponda:

| Si tienes… | Guárdalo en… |
|---|---|
| Cómo hacéis las cosas (procesos, protocolos) | `01_procedimientos_internos/` |
| Catálogos, tarifas, fichas, condiciones | `02_catalogo_productos_servicios/` |
| Protocolos de casos, tickets, incidencias | `03_casos_y_operaciones/` |
| Argumentarios, propuestas tipo | `04_comercial_y_propuestas/` |
| Guías de atención, FAQs, respuestas tipo | `05_atencion_cliente/` |
| Normativa, privacidad, info obligatoria | `06_normativa_y_cumplimiento/` |
| Glosarios, manuales de bienvenida | `07_formacion_interna/` |
| Tus modelos de correo, informes, plantillas | `08_plantillas_propias/` |
| Ejemplos resueltos ("cuando pasa X, hacemos Y") | `09_casos_tipo/` |
| Datos de proveedores y partners | `10_proveedores_y_partners/` |

Cada carpeta tiene un `_LEEME.md` que te explica qué va dentro. Formatos recomendados: **PDF claro** o
**Markdown (.md)**.

> 💡 Tras guardar un documento, pídele a la IA: *"crea la ficha de este documento en el índice
> documental"*. Así la IA "sabe" que existe y lo podrá citar.

---

## Paso 5 · Pruébalo con preguntas reales
Hazle preguntas de tu día a día. Algunos ejemplos (mira más en `demo/prompts_demo.md`):

- *"Tengo un cliente con una incidencia. ¿Qué le pido y qué pasos sigo?"*
- *"Redáctame un correo para [situación], con nuestro tono."*
- *"Compara estas dos opciones que ofrecemos y recomiéndame para un cliente de perfil X."*

Fíjate en dos cosas: **cita de qué documento sale** la respuesta y **termina con próximos pasos**.

> Si responde "no consta en la documentación", es buena señal de honestidad: significa que aún no has
> subido ese documento. Súbelo (Paso 4) y vuelve a preguntar.

---

## Paso 6 · Ajusta el tono y revisa que esté todo
- Para cambiar tono, firma o idioma: edita `00_CONFIGURACION_NEGOCIO.md` (secciones 5 y 6) o pídeselo
  a la IA.
- Para una revisión automática, escribe: **"Revisa si estoy bien configurado"**. La IA detecta
  campos sin rellenar y huecos importantes.

---

## Reglas de oro mientras lo usas
1. **Datos mínimos.** No hace falta pegar nombres, DNI ni datos sensibles reales: usa "el cliente",
   "la empresa". Antes de pegar datos reales, lee `documentacion/GUIA_PRIVACIDAD_DATOS.md`.
2. **La decisión final es tuya.** La IA organiza, redacta y orienta; valida siempre antes de enviar o decidir.
3. **Si no consta, no se inventa.** La IA te dirá qué falta en lugar de improvisar.
4. **Respeta las líneas rojas de tu sector** (las trae el pack): p. ej., en clínica no se diagnostica;
   en despacho no se anticipan resultados.

---

## Resumen en 6 frases
1. Abre la carpeta en tu IA. 2. Di "ayúdame a configurar mi negocio". 3. Activa tu pack si existe.
4. Sube tus documentos a `conocimiento/`. 5. Pregúntale cosas de tu día a día. 6. Ajusta el tono y a trabajar.

> ¿Te has perdido en algún punto? Escribe en el chat: *"guíame paso a paso para adaptar esto a mi
> negocio"* y la IA hará este recorrido contigo.
