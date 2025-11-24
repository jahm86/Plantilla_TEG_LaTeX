# Plantilla de Trabajo Especial de Grado (UNEFA)

Este proyecto intenta proporcionar una plantilla de documento en $\text{LaTeX}$ estructurada según los lineamientos de la UNEFA, lista para ser compilada en cualquier entorno moderno. 

---

## 🚀 Requisitos y Configuración Inicial

Para compilar el proyecto a PDF, necesitas tener instalado un sistema $\text{TeX}$ y, opcionalmente, un entorno de desarrollo con soporte para $\text{LaTeX}$.

### Paso 1: Instalar la Distribución $\text{TeX}$ (Requisito Obligatorio)

Se recomienda encarecidamente la distribución **$\text{TeX}$ Live**, ya que incluye `latexmk` y la mayoría de los paquetes necesarios.

| Sistema Operativo | Distribución Recomendada | Comando / Enlace de Instalación |
| :---: | :--- | :--- |
| **Linux** | **$\text{TeX}$ Live** | `sudo apt install texlive-full` (Debian/Ubuntu) o equivalente. |
| **Windows** | **$\text{TeX}$ Live** | Descargar el instalador desde la [página oficial de $\text{TeX}$ Live](https://www.tug.org/texlive/acquire-tliso.html). |

---

### Paso 2: Compilación del Proyecto

El proyecto está configurado para usar la herramienta **`latexmk`**, que automatiza las múltiples pasadas necesarias para generar índices, referencias y la bibliografía.

#### Opción A: Compilación por Línea de Comandos (Recomendado, si conoces líneas de comando)

Una vez instalado $\text{TeX}$ Live, abre una terminal en el directorio raíz del proyecto y ejecuta:

```bash
latexmk -pdf principal
```

Este comando buscará automáticamente todos los archivos fuente, ejecutará las pasadas necesarias y generará el archivo final.

#### Opción B: Uso de Visual Studio Code (VS Code)

El proyecto incluye la configuración para el complemento **"LaTeX Workshop"**.

1.  **Instalación:** Instala el complemento **`LaTeX Workshop`** (de **James Yu**).
2.  **Configuración de Salida:** El archivo `.vscode/settings.json` ya configura la extensión para:
    * Usar `latexmk` como herramienta de compilación por defecto.
    * Dirigir todos los archivos de salida (PDF, log, aux) al directorio **`build/`**.

**Contenido de `.vscode/settings.json`:**
```json
{
    "latex-workshop.latex.outDir": "build",
    "latex-workshop.latex.tools": [
        {
            "name": "latexmk",
            "command": "latexmk",
            "args": [
                "-synctex=1",
                "-interaction=nonstopmode",
                "-file-line-error",
                "-outdir=build",
                "-pdf",
                "principal"
            ]
        },
        {
            "name": "pdflatex",
            "command": "pdflatex",
            "args": [
                "-synctex=1",
                "-interaction=nonstopmode",
                "-file-line-error",
                "-output-directory=build",
                "principal"
            ]
        }
    ]
}
```

Simplemente usa el botón **"Build $\text{LaTeX}$ Project"** dentro de VS Code para generar el archivo **`build/principal.pdf`**.

Para información acerca de cómo configurar tus datos personales para ser cargados en el documento final, [ve a este enlace](config/README.md).

**Nota:** todos los párrafos que se muestran en "latín" son **Lorem Ipsum** generados por el comando `\lipsum[x]` para rellenar el documento. Simplemente borre esos comandos y escriba el texto que requiera.
