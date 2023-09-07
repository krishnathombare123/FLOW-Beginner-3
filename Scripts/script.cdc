import BankRecord from 0x01

pub fun main(account: Address): BankRecord.Record {
    return BankRecord.Accounts[account]!
}