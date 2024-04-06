import Authentication from 0x05

pub fun main(modelNo:UInt64): Authentication.comp {
    return Authentication.company[modelNo]!
}       
