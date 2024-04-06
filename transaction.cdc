import Authentication from 0x05

transaction(carName: String, carModel                                                   : String, price: Int,color: String, modelNo: UInt64){
    
    prepare(signer: AuthAccount){}

    execute{
        Authentication.addProfile(carName: carName, carModel: carModel, price: price,color:color, modelNo: modelNo)
        log("successfully new profile is added!!!!!")

    }
} 
