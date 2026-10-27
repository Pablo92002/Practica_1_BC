# Ejercicio 4 — Contrato de OpenZeppelin

`BCToken.sol`: token ERC-20 hecho con [OpenZeppelin Contracts](https://docs.openzeppelin.com/contracts):

- `ERC20`: estándar de token fungible.
- `ERC20Burnable`: cualquier titular puede quemar sus tokens.
- `Ownable`: solo el propietario puede acuñar con `mint`.

Compilado con Solidity 0.8.30 y probado en Remix VM.

## Capturas

| Captura | Qué muestra |
|---|---|
| `capturas/01_compilacion.png` | El contrato compila con Solidity 0.8.30 usando las librerías de OpenZeppelin: visto verde, `BCToken (BCToken.sol)` seleccionado y sin errores. |
| `capturas/02_name.png` | `name()` devuelve `BC Token`. |
| `capturas/03_symbol.png` | `symbol()` devuelve `BCT`. |
| `capturas/04_totalSupply.png` | `totalSupply()` devuelve `1000000000000000000000` (1000 tokens con 18 decimales), el suministro inicial. |
| `capturas/05_mint_no_propietario.png` | `mint` llamado desde una cuenta que no es el propietario: la transacción revierte con `OwnableUnauthorizedAccount`. |
