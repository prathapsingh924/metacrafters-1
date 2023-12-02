// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MedicineProductionContract {
    uint public totalproduced_quantity;
    uint public qualityLevel;
    uint public totalCost;

    event UnitsProduced(uint indexed units);
    event QualityAdjusted(uint indexed level);
    event CostCalculated(uint cost);

    
    function increase_production(uint production) public {
        require(production > 0, "Production must be greater than 0");
        totalproduced_quantity += production;
        emit UnitsProduced(production);
    }
    
    function updateQuality(uint level) public {
        assert(level >= 0 && level <= 100); // quality level must be between zero and hundred
        qualityLevel = level;
        emit QualityAdjusted(level);
    }

    function calaculate_ProductionCost() public returns (uint) {
        if (totalproduced_quantity == 0) {
            revert("No units produced. Produce units before calculating total cost");
        }

        
        totalCost = totalproduced_quantity * 7;
        emit CostCalculated(totalCost);

        return totalCost;
    }
}
