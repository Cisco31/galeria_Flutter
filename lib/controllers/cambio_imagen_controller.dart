import 'package:get/get.dart';

class CambioImagenController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    cambioAdelante(0);
  }

  List<String> fotos =['https://m.media-amazon.com/images/I/5101NtSnx0L._AC_.jpg',
                       'https://3.bp.blogspot.com/-Tyz_OhUYNfk/WK4_z7fUh_I/AAAAAAAAUG8/IC3nN-vNThsfbNGm18VD0NrdWkDALMO7wCLcB/s320/como%2Bdibujar%2Bpato%2B0%2B%25281%2529.gif',
                       'https://m.media-amazon.com/images/I/51OdP5UksIL._AC_SY450_.jpg',
                       'https://www.saludofamoso.cl/wp-content/uploads/2020/11/Gato-silvestre.jpg',
                       'https://m.media-amazon.com/images/I/51Z8vGbXcrL._AC_.jpg',
                       'https://static.wikia.nocookie.net/hitlerparody/images/b/b0/Yosemite_Sam.svg.png/revision/latest?cb=20210321101520&path-prefix=es',
                       'https://i.pinimg.com/474x/af/fb/76/affb7658a0bd3d0e67c41c291c8409c5--foghorn-leghorn-quotes-cartoon-online.jpg',
                       'https://i.pinimg.com/originals/b4/81/df/b481dfc2b9cac22245404fc4cdc8db6b.jpg',
                       'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRwaPA1ZR7KIFNC2N-z64_pbY23boHolb2aSg&usqp=CAU',
                       'https://cdn.hobbyconsolas.com/sites/navi.axelspringer.es/public/styles/480/public/media/image/2021/07/space-jam-nuevas-leyendas-2399541.jpg?itok=S4WGQFnG'];
  //int indexUrlImg = 0;
  
  int foto = 0;
  String urlImg = '';

 /* void cambioImg() {
    if (indexUrlImg == 0) {
      urlImg =
          'https://peru21.pe/resizer/PLTVehOy5lgBetglG3ut4BnFaA0=/1200x900/smart/filters:format(jpeg):quality(75)/arc-anglerfish-arc2-prod-elcomercio.s3.amazonaws.com/public/RPYN3Z5HKREFJFOXX4VFZJXG7E.jpg';
      indexUrlImg ++;
    } else {
      urlImg =
          'https://truyen3s.com/cover/images/1daca0c9ddba0017faf394403b2cda33f26edcd2/68747470733a2f2f73332e616d617a6f6e6177732e636f6d2f776174747061642d6d656469612d736572766963652f53746f7279496d6167652f385841484d4b3842625a5a744d413d3d2d3833363834363134382e313566316435623631363263323939663135383134373132353930342e6a7067';
      indexUrlImg --;
    }

    update();
  }*/

  void cambioAdelante(int numero){
    urlImg = fotos.first;
    if (numero == 1) {
      if (foto == 9) {
        foto = 0;
      } else {
        foto++;
      }
      urlImg = fotos[foto];
    }
    update();
  }
  
  void cambioAtras(){
      if (foto == 0) {
        foto = 9;
      } else {
        foto--;
      }
      urlImg = fotos[foto];
    update();
  }


}
