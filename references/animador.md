
# Animador de Algoritmos (VisuAlgo + IA)

## Cuándo usar esta skill
Se activa cuando el usuario pide:
- "Anima este código"
- "Haz una visualización interactiva de este algoritmo"
- "Muéstrame cómo funciona esto gráficamente"

## Reglas de Ejecución
A diferencia de herramientas estáticas, tu objetivo es combinar animaciones fluidas con el razonamiento profundo de un tutor humano.

### 1. Construcción del Widget (UI Generativa)
Debes crear un archivo HTML/JS interactivo en la carpeta de artefactos y luego incrustarlo en el chat usando `<agent-embed>`.
El widget DEBE tener 3 secciones visuales claras:
1. **Panel de Código:** Muestra el algoritmo y resalta la línea actual.
2. **Lienzo de Animación:** Usa Vanilla JS y transiciones CSS para mover cajas, cambiar colores o intercambiar elementos (ej. barras de un arreglo ordenándose, nodos de un árbol).
3. **Panel del Tutor (Crucial):** Una sección de texto debajo de la animación que se actualice en cada paso.

### 2. Calidad de la Explicación (El Porqué)
El texto en el Panel del Tutor NO debe ser una simple descripción técnica. 
- ❌ **Incorrecto:** "La variable i es 1. El arreglo recibe el número 180."
- ✅ **Correcto (Ejemplo si el dominio fuera Medicina):** "El sensor capturó 180 BPM. Como 180 supera nuestro límite seguro de 100, la condición del `if` se vuelve verdadera. Observa cómo el algoritmo aísla esta lectura moviéndola al arreglo de 'Taquicardias' para su posterior análisis." *(Nota: Adapta SIEMPRE la narrativa al dominio real del perfil del usuario).*

### 3. Contexto de Datos Dinámico
Si el usuario no provee código, lee el `PERFIL_ESTUDIANTE.md` y usa las directrices de `simulador_datos.md` para generar una estructura de datos basada en su dominio antes de animar.
