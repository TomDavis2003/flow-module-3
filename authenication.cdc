pub contract Authentication {
    pub var company: {UInt64: comp}

    pub struct comp{
        pub let carName: String
        pub let carModel: String
        pub let price: Int
        pub let color: String
        pub let modelNo:UInt64


        // You have to pass in 5 arguments when creating this Struct.
        init(_carName: String, _carModel: String, _price: Int,_color:String,_modelNo:UInt64) {
            self.carName = _carName
            self.carModel = _carModel
            self.price = _price
            self.color=_color
            self.modelNo=_modelNo
        }
    }

    pub fun addProfile(carName: String, carModel: String, price: Int,color: String, modelNo: UInt64) {
        let newProfile = comp(_carName: carName, _carModel: carModel, _price: price,_color:color, _modelNo: modelNo)
        self.company[modelNo] = newProfile
    }

    init() {
        self.company = {}
    }

}
