# Ejercicio 2 — TokenContract.sol

Contrato del enunciado ampliado para comprar tokens con Ether (1 token = 5 Ether):

- `buyToken(_amount)`: da error si el propietario no tiene tokens suficientes o si el Ether enviado no basta.
- `getContractBalance()`: devuelve el Ether que hay en el contrato.

Compilado con Solidity 0.8.30 y probado en Remix VM. Capturas en `capturas/`: despliegue, los dos errores, compra correcta y saldos finales.
