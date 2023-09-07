pub contract BankRecord {

    pub var Accounts: {Address: Record}
    
    pub struct Record {
        pub let name: String
        pub let accountbal: Int
        pub let accountno: Int
        pub let age: Int
        pub let account: Address

        init(_name: String, _accountbal: Int, _accountno: Int, _age: Int, _account: Address) {
            self.name = _name
            self.accountbal = _accountbal
            self.accountno = _accountno
            self.age = _age 
            self.account = _account
        }
    }

    pub fun newRecord(name: String, accountbal: Int, accountno: Int, age: Int, account: Address) {
        let newaccount = Record(_name: name, _accountbal: accountbal, _accountno: accountno, _age: age, _account: account)
        self.Accounts[account] = newaccount
    }

    init() {
        self.Accounts = {}
    }
}