# =========================================================
# ARCHIVO DE CONFIGURACIÓN LOCAL PARA LATEXMK
# Obliga a latexmk a ejecutar makeglossaries
# =========================================================

# 1. DEFINICIÓN DE DEPENDENCIAS
# Si existe .glo (input) y falta .gls (output), ejecuta 'run_makeglossaries'
add_cus_dep('glo', 'gls', 0, 'run_makeglossaries');
add_cus_dep('acn', 'acr', 0, 'run_makeglossaries');


# 2. DEFINICIÓN DEL SUBROUTINE PARA EJECUTAR makeglossaries
sub run_makeglossaries {
    # Maneja la ubicación de archivos auxiliares (.glo) en el directorio 'build'
    my ($base_name, $path) = fileparse( $_[0] ); 
    pushd $path; 
    
    # Ejecuta makeglossaries con el nombre base del archivo (principal)
    if ( $silent ) {
        system "makeglossaries -q '$base_name'"; # Opción silenciosa
    }
    else {
        system "makeglossaries '$base_name'"; # Opción normal
    };

    popd; # Vuelve al directorio raíz
}

# 3. ACTUALIZACIÓN DE EXTENSIONES PARA LA LIMPIEZA
# Asegura que 'latexmk -c' borre los archivos auxiliares del glosario
push @generated_exts, 'glo', 'gls', 'glg';
push @generated_exts, 'acn', 'acr', 'alg';

$clean_ext .= ' %R.ist %R.xdy';