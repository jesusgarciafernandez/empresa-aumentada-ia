# Publicar en GitHub paso a paso (sin saber de informática)

*Guía pensada para hacerlo todo con el ratón, sin escribir comandos. Tiempo aproximado: 30-40 min.*

> **¿Qué es GitHub?** Una página web donde se publican carpetas de proyectos para que otras personas
> las vean, descarguen y copien. Es gratis para proyectos públicos.
> **¿Qué vamos a hacer?** Subir esta carpeta tal cual, de forma segura (sin subir lo privado), y dejar
> el proyecto preparado para que lo encuentre mucha gente.

> 💡 **Atajo para futuras actualizaciones:** una vez publicado por primera vez, no hace falta repetir
> todo esto. Para subir cambios bastará con hacer **doble clic** en el archivo
> **`Publicar en GitHub (Mac).command`** que está en la carpeta del proyecto. Ver la *Parte 5*.

---

## Parte 1 · Preparativos (una sola vez)

### 1. Crea tu cuenta de GitHub
- Entra en https://github.com y pulsa **Sign up**.
- Elige un nombre de usuario (será parte de la dirección de tu proyecto), tu email y una contraseña.
- Confirma el email que te envían.

### 2. Instala "GitHub Desktop" (la app con botones)
- Descárgala en https://desktop.github.com → instálala como cualquier programa.
- Ábrela y pulsa **Sign in to GitHub.com**. Entra con la cuenta del paso 1.
- Cuando pregunte por tu nombre y email para "configurar Git", pon tu nombre y tu email. **Continúa.**

---

## Parte 2 · Subir tu proyecto

### 3. Quita dos archivos de bloqueo (importante, si no la app dará error)
Tu carpeta tiene dos archivos invisibles que sobraron de antes. Hay que borrarlos:

1. Abre el **Finder** y entra en tu carpeta `EMPRESA AUMENTADA`.
2. Pulsa a la vez las teclas **Cmd + Shift + punto (.)**. Aparecerán archivos y carpetas en gris
   (los ocultos). Verás una carpeta gris llamada **`.git`**.
3. Entra en `.git`. Si dentro ves **`index.lock`** y/o **`HEAD.lock`**, **arrástralos a la papelera**.
   (Si no están, perfecto, no hay nada que borrar.)
4. Vuelve a pulsar **Cmd + Shift + punto** para ocultar de nuevo lo gris. **No toques nada más** dentro
   de `.git`.

> Si prefieres no tocar archivos ocultos, salta este paso y usa directamente el lanzador
> `Publicar en GitHub (Mac).command` (Parte 5): él quita esos bloqueos por ti.

### 4. Abre la carpeta en GitHub Desktop
- En GitHub Desktop: menú **File → Add Local Repository**.
- Pulsa **Choose…** y selecciona tu carpeta `EMPRESA AUMENTADA`. Pulsa **Add Repository**.
- Si aparece un aviso de "repository already exists" o similar, es normal: simplemente continúa.

### 5. Comprueba que NO se sube lo privado
En la columna izquierda verás la lista de archivos que se van a subir.
- **NO debe aparecer** la carpeta `Formación`, ni `config.json`, ni `00_CONFIGURACION_NEGOCIO.md`.
  (Ya están protegidos para que no se suban; esto es solo para confirmarlo con tus ojos.)
- Si por error vieras alguno de esos, **no sigas y revísalo**.

### 6. Guarda los cambios ("commit")
> Un **commit** es como pulsar "Guardar" poniéndole un nombre a esa versión.

- Abajo a la izquierda, en el recuadro **Summary**, escribe algo como:
  `Primera publicación del proyecto`.
- Pulsa el botón azul **Commit to main**.

### 7. Publica en internet
- Arriba aparecerá el botón **Publish repository**. Púlsalo.
- En la ventana:
  - **Name:** `empresa-aumentada-ia` (en minúsculas, sin espacios).
  - **Description:** *Sistema de gestión del conocimiento con IA para cualquier negocio. Sin código.*
  - **MUY IMPORTANTE:** **desmarca** la casilla **"Keep this code private"**. Si la dejas marcada,
    nadie podrá verlo. Para máxima visibilidad debe quedar **pública** (sin marcar).
- Pulsa **Publish repository**.

¡Listo! Tu proyecto ya está en internet. Pulsa **View on GitHub** para verlo en la web.

---

## Parte 3 · Dejarlo preparado para que lo encuentre mucha gente

Todo esto se hace en la **página web de tu proyecto** (la que abriste con "View on GitHub"), con el
ratón. Los valores exactos para copiar y pegar están en el **Anexo** del final.

### 8. Rellena la ficha "About" (lo primero que se ve)
- En la página de tu proyecto, arriba a la derecha, pulsa el **engranaje ⚙ (About)**.
- **Description** y **Website**: cópialos del Anexo.
- **Topics (etiquetas):** escribe las del Anexo y pulsa Enter tras cada una. Son las palabras por las
  que la gente te encontrará.
- Pulsa **Save changes**.

### 9. Activa el botón "Use this template"
> Permite que cualquiera **copie tu proyecto con un clic** para su negocio. Suma "usos".
- Pulsa **Settings** → en la primera sección marca **Template repository**.

### 10. Sube la imagen de presentación
- En **Settings**, baja a **Social preview** → **Edit → Upload an image** (1280×640 px) con el nombre
  y el lema. *(Si no tienes una, pídela y se te crea.)*

### 11. Activa las "Discussions" (foro para tu comunidad)
- En **Settings → General → Features**, marca **Discussions**.

### 12. Crea la primera "Release" (versión descargable)
> Una **Release** es una versión oficial con archivos para descargar. Aquí se cuentan las descargas.
- En la página del proyecto, a la derecha: **Releases → Create a new release**.
- **Tag:** `v3.1` (pulsa "Create new tag"). **Title:** `v3.1`.
- **Describe:** usa el texto del Anexo o pulsa **Generate release notes**.
- **Archivos:** arrastra a "Attach binaries" los archivos de tu carpeta `releases/` (las guías en PDF
  y Word).
- Pulsa **Publish release**.

---

## Parte 4 · Conseguir visitas y descargas

GitHub no trae visitas solo: hay que dar el primer empujón. Por orden de eficacia:

1. **LinkedIn (tu mejor canal):** post explicando **qué problema resuelve**, con imagen o vídeo corto,
   y el enlace al final. (Borrador en el Anexo.)
2. **Grupos de IA para pymes** y **foros del sector** (asesorías, clínicas, corredurías): aporta valor,
   no es un anuncio.
3. **Tu web y tu firma de email:** enlaza el proyecto.
4. **Un vídeo/GIF** del sistema en acción: multiplica el interés.
5. **Pide la estrella ⭐ (Star)** a conocidos los primeros días: las estrellas atraen estrellas.

---

## Parte 5 · Actualizar el proyecto en el futuro (lo más fácil)

Cuando cambies algo en la carpeta y quieras subirlo:

1. Haz **doble clic** en **`Publicar en GitHub (Mac).command`** (en la carpeta del proyecto).
2. Se abre una ventana negra (Terminal). El programa quita los bloqueos, guarda los cambios y los sube
   solo. Cuando ponga *"Hecho"*, ya está.
3. La primera vez puede pedirte permiso: si macOS dice *"no se puede abrir porque es de un
   desarrollador no identificado"*, pulsa con el **botón derecho** sobre el archivo → **Abrir** →
   **Abrir**. Solo la primera vez.

> Este atajo solo funciona **después** de haber publicado el proyecto al menos una vez (Parte 2). Si
> aún no lo has publicado, el propio programa te avisará.

---

## Si algo sale mal
- **GitHub Desktop da error al añadir la carpeta:** quedaron los archivos `.lock` del paso 3. Repítelo
  (o usa el lanzador `.command`, que los quita solo).
- **No aparece el botón "Publish":** asegúrate de haber hecho antes el **Commit** (paso 6).
- **Subiste algo privado sin querer:** quítalo del repositorio en la web (Settings) o pide ayuda.

---

## Anexo · Datos para copiar y pegar al crear el repositorio

**Nombre del repositorio (Name):**
```
empresa-aumentada-ia
```

**Descripción (Description):**
```
Marco estructurado —agentes, skills, workflows y packs sectoriales— para poner la IA a trabajar sobre el conocimiento real de tu negocio. Respuestas ancladas en tu documentación y con su fuente; la decisión final, humana. Multisectorial y agnóstico: Claude, Gemini o Codex.
```

**Web (Website):**
```
https://jesusgarciafernandez.com
```

**Visibilidad:** Pública (NO marcar "private").

**Topics / etiquetas** (una a una, pulsando Enter tras cada):
```
ai  artificial-intelligence  ai-agents  agentic-ai  llm  claude  gemini  prompt-engineering  knowledge-management  knowledge-base  business-automation  no-code  framework  spanish  small-business  operations  documentation  template
```

**Opciones a activar:**
- Template repository: **ON**
- Discussions: **ON**
- Issues: **ON** (ya viene activado)
- Wiki: OFF

**Imagen de presentación (Social preview):** 1280×640 px, con el nombre y el lema.

**Primera versión (Release):**
- Tag: `v3.1`
- Title: `v3.1 — La IA de tu negocio, con método`
- Notas (ejemplo):
```
Primera versión pública de Empresa Aumentada por IA: un marco estructurado para llevar
la IA a tu negocio con estructura, trazabilidad y control humano.

Qué incluye:
- Arquitectura de agentes (Director + 8 especialistas), skills y workflows reutilizables.
- Respuestas ancladas en TU documentación, con la fuente citada y un claro "no consta"
  cuando falta evidencia. La IA nunca inventa ni sustituye el criterio humano.
- Packs sectoriales listos para usar: seguros, clínica y despacho (8 documentos y 5 demos cada uno).
- Configurador visual del negocio + onboarding guiado por chat.
- Funciona sobre Claude, Gemini o Codex. Sin lock-in: todo son archivos Markdown.
- Gobernanza y privacidad por diseño (líneas rojas, revisión humana, datos mínimos).

Adjuntos: guía para adaptar a tu negocio (PDF y Word).
```
- Adjuntar: los archivos de la carpeta `releases/`.

**Borrador de post para LinkedIn:**
```
La mayoría usamos la IA a ciegas: pegamos contexto en un chat, sin método, y a veces se
inventa los datos. Funciona para jugar, no para operar un negocio.

Así que he construido lo contrario, y lo libero hoy en abierto.

"Empresa Aumentada por IA" es un marco estructurado para llevar la IA a tu negocio:
→ Responde SIEMPRE anclado en tu propia documentación, y cita la fuente.
→ Si algo no consta, lo dice. No inventa.
→ La decisión final siempre es humana.
→ No son prompts sueltos: es una arquitectura de agentes, skills y flujos de trabajo.
→ Multisectorial (seguros, clínica, despacho…) y agnóstico: Claude, Gemini o Codex.

Pensado para quien ya usa la IA y quiere pasar del uso improvisado a un sistema fiable.
Gratuito y adaptable. Te dejo el enlace 👇 ¿qué le añadirías?

👉 [enlace a tu repositorio]

#IA #InteligenciaArtificial #Pymes #Productividad #Innovación
```

**Titular alternativo para Hacker News / X (en inglés):**
```
Show: A structured framework that grounds business AI in your own docs (Claude/Gemini/Codex)
```

> Licencia del proyecto: CC BY-NC-SA 4.0 (uso libre no comercial citando la fuente; para uso comercial,
> contacto@jesusgarciafernandez.com).
