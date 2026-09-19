pragma solidity ^0.8.0;

contract InfiniteRegeneration302 {
    uint256 public step;
    uint256 public constant MAX_STEP = 302;

    event StepAdvanced(uint256 indexed newStep);

    function advanceStep() external {
        step += 1;

        if (step > MAX_STEP) {
            step = 0;
        }

        emit StepAdvanced(step);
    }
}
