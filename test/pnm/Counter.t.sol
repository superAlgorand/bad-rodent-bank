import "../../lib/pnm-contracts/PTest.sol";
import "../../src/Counter.sol";

contract CounterFuzzTest is PTest {
    Counter counter;
    address agent;

    function setUp() external {
        counter = new Counter();
        counter.increment();
        agent = getAgent();
    }

    function invariantGetWhatPut() public {
        assert(counter.number() >= 1);
    }
}
