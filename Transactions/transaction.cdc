import BankRecord from 0x01

transaction(name: String, accountbal: Int, accountno: Int, age: Int, account: Address)
{
    prepare(signer:AuthAccount)
    {

    }
    execute 
    {
        BankRecord.newRecord(name: name, accountbal: accountbal, accountno: accountno, age: age, account: account)
        log("Details Stored")
    }
}