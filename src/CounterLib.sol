
library CounterLib {

    event SomethingBeenDone(uint256 value);
    function multiply(uint256 self, uint256 other) public returns (uint256) {
         uint256 val = self * other;
         emit SomethingBeenDone(val);
         return val;
    }
}