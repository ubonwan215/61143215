void main() {
    var list = ['','หนึ่ง','สอง','สาม','สี่','ห้า','หก','เจ็ด','แปด','เก้า'];
    String k;
    int a, b, g, c, d;
    List<String> e = [];
    for ( c =1; c <= 99999; c++) {
      d = c;
      if (d >= 100000) {
        print ("จำนวนเลขมากเกินไป (1-99999)");
      } else {
        g = d;
        a = d;
        if (d >= 10000) {
          a = d % 10000;
          b = (d - a) ~/ 10000;
          k = list[b];
          e.add(k + "หมื่น");
          d = a;
        }
        if (d >= 1000) {
          a = d % 1000;
          b = (d - a) ~/ 1000;
          k = list[b];
          e.add(k + "พัน");
          d = a;
      }
         if (d >= 100) {
          a = d % 100;
          b = (d - a) ~/ 100;
          k = list[b];
          e.add(k + "ร้อย");
          d = a;
      }
         if (d >= 10) {
          a = d % 10;
          b = (d - a) ~/ 10;
          k = list[b];
          if (b == 1){
            e.add("สิบ");
          }else if (b == 2){
           e.add("ยี่สิบ");
         } else {
           e.add(k + "สิบ");
         }
      } 
        if (d == 0) {
      } else if (d > 10 &&  a == 1) {
        e.add("เอ็ด");
      } else {
          k = list[a];
          e.add(k);
        }
      String noeth = e.join();
      print("${g}=${noeth}");
      e.removeRange(0, e.length);
    }
      
    }
  
}

        