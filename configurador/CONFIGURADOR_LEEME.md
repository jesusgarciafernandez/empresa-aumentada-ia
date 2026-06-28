# 🧩 Configurador del Negocio — Guía de uso

Una forma **visual** de personalizar el sistema, alternativa a la entrevista guiada por chat.
Rellenas un formulario y obtienes los dos archivos que el sistema necesita, ya formateados.

---

## Qué hace

El configurador (esta carpeta `configurador/`) genera y mantiene **dos archivos**:

- **`config.json`** — tu copia editable (la *fuente de datos*). Vive **aquí, en `configurador/`**. Puedes recargarla en el formulario para seguir editando otro día.
- **`00_CONFIGURACION_NEGOCIO.md`** — el archivo que **lee la IA** al iniciar cada sesión. Se genera a partir del `config.json` y se guarda en la **raíz del proyecto** (la carpeta superior).

> No necesitas saber nada técnico. Si algún campo no aplica, déjalo en blanco.

---

## Cómo usarlo

Hay dos modos. Elige según lo que tengas instalado.

### Modo A — Guardado directo en la carpeta (recomendado)

Guarda los dos archivos **directamente en su sitio**, sin pasar por Descargas. Funciona en cualquier navegador (Chrome, Firefox, Safari, Edge). Requiere **Python 3**.

1. Doble clic en el lanzador de tu sistema:
   - **Windows:** `Iniciar configurador (Windows).bat`
   - **macOS:** `Iniciar configurador (Mac).command`
   - **Linux:** `Iniciar configurador (Linux).sh`
2. Se abre una ventana (el servidor local) y el formulario en tu navegador.
3. Rellena los campos y pulsa **💾 Guardar en el proyecto**. Listo: `config.json` y `00_CONFIGURACION_NEGOCIO.md` quedan actualizados en la carpeta.
4. Para cerrar, pulsa `Ctrl + C` en la ventana del servidor (o ciérrala).

### Modo B — Sin Python (descarga manual)

Si no tienes Python, no pasa nada: el lanzador abre el formulario igualmente en **modo descarga**.

1. Abre `configurador.html` (doble clic) **o** ejecuta el lanzador.
2. Rellena los campos.
3. Pulsa **⬇️ Descargar .md** y **⬇️ Descargar .json**. Los archivos van a tu carpeta de **Descargas**.
4. Mueve **`00_CONFIGURACION_NEGOCIO.md` a la raíz del proyecto** y **`config.json` a la carpeta `configurador/`**, sobrescribiendo los anteriores.

---

## ¿Necesito instalar Python?

Solo para el **Modo A** (guardado directo).

- **macOS y Linux:** suele venir instalado. Si no, el lanzador te muestra cómo instalarlo.
- **Windows:** normalmente hay que instalarlo desde [python.org/downloads](https://www.python.org/downloads/).
  ⚠️ Durante la instalación, **marca la casilla "Add Python to PATH"**. Luego vuelve a ejecutar el lanzador.

Sin Python, usa el **Modo B**: funciona en todos los sistemas sin instalar nada.

---

## Editar una configuración ya existente

1. Arranca en **Modo A** (con servidor): el formulario **carga solo** el `config.json` de la carpeta.
   - En **Modo B**, usa el botón **📂 Cargar config.json** y elige el archivo.
2. Cambia lo que quieras.
3. Guarda (Modo A) o descarga y reemplaza (Modo B).

---

## Notas

- En **macOS**, la primera vez el `.command` puede pedir permiso en *Ajustes › Privacidad y seguridad* (es un script descargado). Acéptalo y vuelve a abrirlo.
- El formulario usa fuentes web (Cormorant Garamond e Inter). Sin conexión a internet se ve con tipografías del sistema; funciona igual.
- El guardado directo usa un servidor **local** (`localhost`), solo en tu equipo. No sube nada a internet.

---

*Configurador del proyecto **Empresa Aumentada por IA** · creado por [Jesús García Fernández](https://jesusgarciafernandez.com).*
