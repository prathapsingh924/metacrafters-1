# Medicine Production Contract

This Solidity smart contract, named `MedicineProductionContract`, is designed for managing the production of medicines on the Ethereum blockchain. The contract tracks the quantity of medicines produced, maintains a quality level, and calculates the total production cost. Here's a brief overview of its features:

## Contract Details

### Variables

- **totalproduced_quantity:** Tracks the total quantity of medicines produced.
- **qualityLevel:** Represents the quality level of the medicines.
- **totalCost:** Stores the total production cost.

### Events

- **UnitsProduced:** Emits an event when units of medicine are produced, providing information about the quantity.
- **QualityAdjusted:** Emits an event when the quality level is updated, indicating the new quality level.
- **CostCalculated:** Emits an event when the production cost is calculated, providing information about the total cost.

## Functions

### `increase_production`

- **Description:** Increments the total produced quantity by a specified amount.
- **Parameters:** `production` - The quantity of medicines produced.
- **Usage:** Call this function to update the total quantity of medicines produced and emit a corresponding event.

### `updateQuality`

- **Description:** Updates the quality level of the medicines.
- **Parameters:** `level` - The new quality level (between 0 and 100).
- **Usage:** Call this function to set a new quality level and emit an event indicating the change.

### `calaculate_ProductionCost`

- **Description:** Calculates the total production cost based on the quantity produced.
- **Returns:** The calculated total production cost.
- **Usage:** Call this function to determine the total cost of production, ensuring that units have been produced before calculating.

## Author

Prathap Singh

p19982102@gmail.com
