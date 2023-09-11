class BMI{
  double? height;
  int? weight;
  String ? message;
  BMI({this.height,this.weight});
  String calc(){
    double heightInMeters = height! / 100;
    var result= weight!/heightInMeters!;
    if(25>result && result>18.5){
      message='Normal';
    }
    else if(result<18.5){
      message='Underweight';
    }
    else if(result>26){
      message='Overweight';
    }
    else{message='Invalid value';}
    return result.toStringAsFixed(2);

  }

}
