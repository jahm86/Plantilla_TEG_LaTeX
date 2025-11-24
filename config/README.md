# Configuración del Documento

Este directorio contiene el archivo `datos.tex`, el cual centraliza todos los metadatos y variables que aparecen en la portada, encabezados y el pie de página del documento.

**Archivo a modificar: `config/datos.tex`**

## 📝 Variables de Configuración

Para personalizar el documento, simplemente edita el valor entre llaves `{...}` de cada comando `\newcommand`.

### 1. Datos de la Portada

| Variable | Descripción | Ejemplo |
| :--- | :--- | :--- |
| `\unefaNucleo` | Nombre del núcleo de la UNEFA. | `{NÚCLEO ARAGUA - SEDE MARACAY}` |
| `\unefaUnidad` | (Opcional) Unidad Académica, si aplica. | `{\text{E.A.D. DE INVESTIGACIÓN}}` |
| `\carrera` | Nombre completo de la carrera. | `{Ingeniería Electrónica}` |
| `\tipoTrabajo` | Tipo de documento (Trabajo Especial de Grado, Tesis, etc.). | `{Trabajo Especial de Grado}` |
| `\datosTitulo` | **Título completo** del proyecto. | `{Análisis de Fallas en Aistemas Embebidos Utilizando Redes Neuronales}` |
| `\tituloCorto` | **Título corto** para los encabezados de página. (En mayúsculas). | `{Análisis de Fallas en Sistemas Embebidos}` |

### 2. Datos de Autor(es) y Tutor

| Variable | Descripción | Ejemplo |
| :--- | :--- | :--- |
| `\datosTutorNombre` | Nombre y Apellido del tutor(a). | `{Federico Pinto}` |
| `\datosTutorCI` | Cédula de Identidad del tutor(a). | `{V-1.234.567}` |
| `\datosTutorTitulo` | Título académico del tutor(a) (Ing., Lic., Msc.). | `{Ing.}` |
| `\datosAutorNombre` | Nombre y Apellido del Primer Autor. | `{Pepito Pérez}` |
| `\datosAutorCI` | Cédula de Identidad del Primer Autor. | `{V-9.876.543}` |
| `\datosSegAutorNombre` | (Opcional) Nombre del Segundo Autor. | `{Petra Gómez}` |
| `\datosSegAutorCI` | Cédula de Identidad del Segundo Autor. | `{V-10.987.654}` |
| `\datosAutoresTitulo` | Título de los autores (Br., T.S.U., Ing. - usado en la portada). | `{Br.}` |

### 3. Datos de Lugar y Fecha de Presentación

La fecha se usa en la portada, y el mes debe definirse como un número para asegurar la correcta presentación de la fecha.

| Variable | Descripción | Ejemplo |
| :--- | :--- | :--- |
| `\cuidadPresentacion` | Ciudad de presentación. | `{Maracay}` |
| `\estadoPresentacion` | Estado de presentación. | `{Aragua}` |
| `\diaPresentacion` | Día de la presentación (número). | `{28}` |
| `\mesNumPresentacion` | **MES** de la presentación (número: 1=Enero, 12=Diciembre). **¡Importante!** | `{11}` |
| `\anoPresentacion` | Año de la presentación. | `{2025}` |

---

**Notas:**

1. Recuerda siempre **recompilar** el documento (`latexmk`) después de cualquier cambio en `datos.tex` para que los metadatos se actualicen en todas las páginas.

2. El título del proyecto, los nombres y títulos se imprimirán en **MAYÚSCULA** en la portada, independiente de cómo lo escriba.

3. El contenido de la portada, contraportada y aprobación se adecuará automáticamente para el caso de uno ó dos estudiantes. Si es un solo estudiante, poner `\datosSegAutorNombre` en comentarios (%).
