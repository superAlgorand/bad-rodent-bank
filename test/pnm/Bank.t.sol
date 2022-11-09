import "../../lib/pnm-contracts/PTest.sol";
import "../../src/Bank.sol";

contract BankFuzzTest is PTest {
    Bank bank;
    address agent;
    address payable depositor;

    function setUp() external {
        bank = new Bank();
        agent = getAgent();

        vm.deal(depositor, 100);
        vm.prank(depositor);
        bank.deposit{value: 100}();
    }

    function invariantGetWhatPut() public {
        vm.prank(depositor);
        bank.withdraw(100);
    }

    function attack() public {
	vm.prank(agent);
	bank.withdrawFrom(agent, 2);
    }
}
