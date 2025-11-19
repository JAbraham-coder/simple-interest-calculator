/**
 * Calcula el interés simple basado en el monto principal, la tasa de interés anual y el tiempo en años.
 * @param {number} montoPrincipal - El monto inicial de dinero.
 * @param {number} tasaInteresAnual - La tasa de interés como porcentaje (ej. 5 para 5%).
 * @param {number} tiempoEnAnios - El tiempo en años.
 * @returns {number} El monto total de interés simple ganado o pagado.
 */
function calcularInteresSimple(montoPrincipal, tasaInteresAnual, tiempoEnAnios) {
    // Convertimos la tasa de porcentaje a decimal (ej. 5% -> 0.05)
    const tasaDecimal = tasaInteresAnual / 100;
    
    // Fórmula del interés simple: I = P * R * T
    const interesCalculado = montoPrincipal * tasaDecimal * tiempoEnAnios;
    
    return interesCalculado;
}

// --- Uso de la función ---

// 1. Declaramos las variables o constantes para los parámetros:
const monto = 1000;         // Monto inicial (ej. $1000)
const tasaDeInteres = 5;    // Tasa anual en porcentaje (ej. 5%)
const tiempo = 2;           // Tiempo en años (ej. 2 años)

// 2. Llamamos a la función con las variables como argumentos:
const interesTotal = calcularInteresSimple(monto, tasaDeInteres, tiempo);

// 3. Mostramos el resultado por consola:
console.log("--- Cálculo de Interés Simple ---");
console.log(`Monto Principal: $${monto}`);
console.log(`Tasa de Interés Anual: ${tasaDeInteres}%`);
console.log(`Tiempo: ${tiempo} años`);
console.log(`---------------------------------`);
console.log(`Interés Total Ganado: $${interesTotal.toFixed(2)}`); // Usamos toFixed(2) para 2 decimales
console.log(`Monto Total Final: $${(monto + interesTotal).toFixed(2)}`);
