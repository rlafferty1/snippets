contract M5Coin{
	
	mapping (address => uint) public balanceSheet;
	
	function M5Coin(){
		}
    
    //fix price at 1 m5c per wei.
    function buyM5C(){
        uint val = msg.value;
        balanceSheet[msg.sender] = addmod(balanceSheet[msg.sender],val,5);
    }

    function sendM5C(uint amount,address recipient){
        if(amount > balanceSheet[msg.sender]) return;
        balanceSheet[msg.sender] -= amount;
        balanceSheet[msg.sender] = addmod(balanceSheet[msg.sender],0,5);
        balanceSheet[recipient] = addmod(balanceSheet[recipient],amount,5);
    }
    
}
