# 📚 Guía para la Inclusión de Términos al Glosario

El glosario se genera automáticamente a partir de los términos definidos en el archivo `glosario.tex` que son referenciados en el cuerpo del documento. Si un término no se referencia con los comandos apropiados, no aparecerá en el glosario.

## 1. Definición de un Nuevo Término (`\newglossaryentry`)

Todos los términos se definen utilizando el comando **`\newglossaryentry`** en el archivo `glosario.tex`.

### Sintaxis

```latex
\newglossaryentry{<etiqueta>}{<propiedades>}
```

### 📋 Opciones Principales de `<propiedades>`

| Propiedad | Descripción | Ejemplo de Uso | Notas Importantes |
| :---: | :--- | :--- | :--- |
| **`etiqueta`** | **Identificador Único (ID)**, solo para uso interno del código. | `robotica` | No debe contener espacios ni caracteres especiales. |
| **`name`** | **Nombre que aparecerá en el glosario impreso.** | `name={Robótica}` | **CRÍTICO:** Utiliza mayúscula inicial para cumplir con el formato de la UNEFA (Ej. **Latex:** Es...). |
| **`description`** | **Definición completa del término.** | `description={Ciencia que...}` | La descripción debe ir sin el punto final (el paquete lo agrega) y con sangría si el estilo lo requiere. |
| **`plural`** | (Opcional) Forma plural del nombre si no es trivial (solo añadiendo 's'). | `plural={robots}` | Útil para palabras con plural irregular o que terminan en vocal. |
| **`text`** | (Opcional) Cómo debe aparecer el término la primera vez que se usa en minúscula. | `text={robot}` | Útil para establecer el formato inicial, aunque a menudo es redundante si se usan los comandos `\gls`. |

## 2. Uso y Referencia en el Documento (Inclusión Obligatoria)

Para que un término definido en `glosario.tex` sea visible en el glosario impreso, debe ser utilizado al menos una vez en el documento principal con los comandos de referencia (`\gls`, `\Gls`, etc.).

| Comando de Uso | Salida de Texto | Función |
| :---: | :--- | :--- |
| **`\gls{etiqueta}`** | Imprime el término en **minúsculas**. | `robot` |
| **`\Gls{etiqueta}`** | Imprime el término con la **primera letra en mayúscula**. | `Robot` |
| **`\glspl{etiqueta}`** | Imprime el término en **plural** y minúsculas. | `robots` |
| **`\Glspl{etiqueta}`** | Imprime el término en **plural** y con mayúscula inicial. | `Robots` |

> **⚠️ Advertencia Importante:** Si utilizas el término sin estos comandos (ej. escribiendo `Latex` directamente en el texto), el término **NO** será rastreado, el archivo `.glo` no se actualizará, y no aparecerá en el glosario final.