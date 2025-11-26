# Estructura de Anexos y Apéndices

Este directorio contiene los archivos de contenido real de los anexos y apéndices (Anexo A, Anexo B, Apéndice A, etc.), así como el archivo de enlace que define su estructura y orden en el documento.

## 🔗 Archivo de Enlace

El archivo principal que controla la inclusión y el orden es:
* **`lista_anexos.tex`**: Define la estructura principal de las secciones **ANEXOS** y **APÉNDICES** y llama a los archivos de contenido (`\input{...}`).

## 📝 Cómo Agregar un Nuevo Anexo o Apéndice

Para asegurar el formato correcto (título sin numeración, pero visible en el Índice de Contenido), la plantilla utiliza los comandos simplificados **`\chapterToc{...}`** y **`\sectionToc{...}`**.

### Paso 1: Crear el Archivo de Contenido

Crea un nuevo archivo `.tex` dentro del directorio `anexos/` o en un subdirectorio relevante (ej., `codigo/`) para el contenido que deseas añadir.

**Estructura mínima recomendada para un anexo (ej., `anexo_b.tex`):**

```latex
% Usa el comando simplificado \sectionToc{...} para titular el anexo
\sectionToc{ANEXO B: Certificado de Aprobación}

% Coloca aquí el contenido del anexo (texto, código, imágenes)
\begin{figure}[h]
    \centering
    

[Image of the Certificate]

    \caption{Certificado de Aprobación del instrumento.}
    \label{fig:certificado_aprobacion}
\end{figure}
```

### Paso 2: Incluir el Archivo en `lista_anexos.tex`

Abre el archivo **`lista_anexos.tex`** y utiliza los comandos **`\chapterToc`** y **`\input{...}`** para estructurar y cargar el contenido.

**Ejemplo de uso de comandos simplificados en `lista_anexos.tex`:**

```latex
% =================================================================
% ARCHIVO DE ENLACE: ANEXOS Y APÉNDICES (anexos/lista_anexos.tex)
% =================================================================

% --- ANEXOS ---
% Usa \chapterToc para el título principal (lo añade al TOC como capítulo)
\chapterToc{ANEXOS} 
%\cleardoublepage

% Cargar los archivos de contenido de Anexos
\input{anexos/anexo_a.tex} % ANEXO A: Memoria Fotográfica
\cleardoublepage

% [NUEVA INCLUSIÓN]
\input{anexos/anexo_b.tex} % ANEXO B: Certificado de Aprobación
\cleardoublepage 

% ...

% --- APÉNDICES ---
% Usa \chapterToc para el título principal
\chapterToc{APÉNDICES}
%\cleardoublepage

% Cargar los archivos de contenido de Apéndices
\input{anexos/apendice_a.tex} % APÉNDICE A: Constancia de Validación
\cleardoublepage
% ... y así sucesivamente...
```