import Float "mo:base/Float";
actor Dbank{
  stable var accbalance: Float = 100;
  public func checkBalance(): async Float{
    return accbalance;
  };

  public func topUp( amount: Float) : async(Float) {
    accbalance := accbalance + amount;
    return  accbalance;
  };

  public func withdraw(amount:Float): async(Float){
    if (amount > accbalance){
      return 0;
    }else{
      accbalance:=accbalance-amount;     
      return amount;
    } 
  };

};
