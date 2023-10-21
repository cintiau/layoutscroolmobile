import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart'; 
//untuk likebutton download pub devnya terlebih dahulu di terminal

class scrol extends StatelessWidget {
  const scrol({super.key});


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; //size

    return Scaffold( //terdpat appbar dan body
      appBar: AppBar( //appbar
      //didalam appbar ini terdapat icon back dan text
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text( //text
          'StayCation',
          style:
          TextStyle(color: Colors.black, fontSize: 23, fontWeight: FontWeight.w600),
        ),
        leading: IconButton( //iconbutton back
          icon: Icon(
            Icons.arrow_back_ios_sharp,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
      ),

      body: Padding( 
        //menggunakan padding di body agar memiliki jarak diantara kanan dan kirinya
        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
        child: ListView( //membuat data scroolable
          children: [ 
            //children ini mennampung semua isi mulai dari sizebox, container searchbar, 
            //text "tempat populer", 3 container box menunya. 
            SizedBox(
              height: 12.0,
            ),
            Container( //searchbar
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  color: Color.fromRGBO(244, 243, 243, 1),
                  borderRadius: BorderRadius.circular(20)),
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.black87,
                    ),
                    hintText: "Search you're looking for",
                    hintStyle:
                    TextStyle(color: Colors.grey, fontSize: 15)),
              ),
            ),

            Align( //Text "Tempat Populer", menggunakan Align 
              alignment: Alignment.topLeft, //agar text berada di kiri atas
              child: Padding(
                padding: const EdgeInsets.only(left: 5.0, top: 12.0),
                child: Text(
                  'Tempat Populer',
                  style:
                  TextStyle(color: Colors.black, fontSize: 23, fontWeight: FontWeight.w600),
                ),
              ),
            ),
            SizedBox(
              height: 12.0,
            ),
            Container( // Container Box Menu Candi Borobudur
              width: size.width,
              height: size.height / 3.5,
              decoration: const BoxDecoration( //mengatur boxdecorationnya
                borderRadius: BorderRadius.all(Radius.circular(20)), //box radius roundednya
                boxShadow: const[ //boxshadow (efect shadow dibawah boxnya)
                  BoxShadow(
                    color: Colors.black38,
                    blurRadius: 5,
                    spreadRadius: 2,
                    offset: Offset(1,5)
                  )
                ],
                color: Colors.white,
              ),
              child: Column(//dibuat secara column
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[ //didalam column ini ada image, 
                //tulisan text "candi borobudur" icon like, dan rating location
                  ClipRRect( // ClipRRect digunakan menambah sudut bulat pada gambar
                    borderRadius: BorderRadius.circular(20.0), //sesuaikan dengan boxradius luarannya
                      child: Image( //image
                        height: 170, 
                        width: 400, //sesuaikan lebar box luarannya
                        image: NetworkImage('https://www.worldhistory.org/img/r/p/1000x1200/9232.jpg.webp?v=1646143202'),
                        fit: BoxFit.cover,
                      )
                  ),
                  Row( // Bagian Text "Candi Borobudur" dan icon like dijadikan 1 row
                    mainAxisAlignment: MainAxisAlignment.spaceBetween, 
                    //menggunakan spacebetween agar textnya ada disebelah kiri dan button likenya ada disebelah kanan
                    children: [
                      Align( //text candi borobudur
                        alignment: Alignment.topLeft, //text disebelah kiri
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15.0, top: 10.0, bottom: 5),
                          child: Text(
                            'Candi Borobudur',
                            style:
                            TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight, //icon like disebelah kanan
                          child: Padding(
                            padding: const EdgeInsets.only(right: 15.0, top: 10),
                            child: LikeButton( //likebutton didapat dari import package likebutton 
                              size: 35,
                              circleColor: //color effect pada saat dilike
                              CircleColor(start: Color(0xff00ddff), end: Color(0xff0099cc)),
                              bubblesColor: BubblesColor(
                                dotPrimaryColor: Color(0xff33b5e5),
                                dotSecondaryColor: Color(0xff0099cc),
                              ),
                              likeBuilder: (bool isLiked) {
                                return Icon( //icon likenya
                                  size: 35,
                                  Icons.favorite,
                                  color: isLiked ? Colors.red : Colors.grey, 
                                  //jika tidak dilike berwarna abuabu jika dilike berubah warna merah
                                );
                              },
                            ),
                        ),
                      ),
                    ],
                  ),
                  Row( // rating dan lokasi dijadikan 1 row
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                      ),
                      Icon( //icon bintang
                        Icons.star,
                        size: 20,
                        color: Colors.amber,
                      ),
                      SizedBox( 
                        width: 5.0,
                      ),
                      Text( //text rating
                        "4,7",
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Icon( //icon lokasi
                        Icons.location_on,
                        size: 20,
                        color: Colors.blue,
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text( //text lokasi
                        "Jawa Tengah",
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              width: size.width,
              height: size.height / 3.5,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                boxShadow: const[
                  BoxShadow(
                      color: Colors.black38,
                      blurRadius: 5,
                      spreadRadius: 2,
                      offset: Offset(1,5)
                  )
                ],
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image(
                        height: 170,
                        width: 400,
                        image: NetworkImage('https://pontas.id/wp-content/uploads/2018/11/rinjani.jpg'),
                        fit: BoxFit.cover,
                      )
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15,top: 10.0, bottom: 5),
                          child: Text(
                            'Gunung Rinjani',
                            style:
                            TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10, right: 15),
                          child: LikeButton(
                            size: 35,
                            circleColor:
                            CircleColor(start: Color(0xff00ddff), end: Color(0xff0099cc)),
                            bubblesColor: BubblesColor(
                              dotPrimaryColor: Color(0xff33b5e5),
                              dotSecondaryColor: Color(0xff0099cc),
                            ),
                            likeBuilder: (bool isLiked) {
                              return Icon(
                                size: 35,
                                Icons.favorite,
                                color: isLiked ? Colors.red : Colors.grey,
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                      ),
                      Icon(
                        Icons.star,
                        size: 20,
                        color: Colors.amber,
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        "4,5",
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Icon(
                        Icons.location_on,
                        size: 20,
                        color: Colors.blue,
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        "Lombok",
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              width: size.width,
              height: size.height / 3.5,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                boxShadow: const[
                  BoxShadow(
                      color: Colors.black38,
                      blurRadius: 5,
                      spreadRadius: 2,
                      offset: Offset(1,5)
                  )
                ],
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image(
                        height: 170,
                        width: 400,
                        image: NetworkImage('https://s-light.tiket.photos/t/01E25EBZS3W0FY9GTG6C42E1SE/rsfit19201280gsm/events/2020/10/09/d0a0dc5e-fbae-40ac-9b90-85982b863466-1602221682294-9a6c860bbe870391ebe769e34bc961e5.jpg'),
                        fit: BoxFit.cover,
                      )
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15, top: 10.0, bottom: 5),
                          child: Text(
                            'Pink Beach Lombok',
                            style:
                            TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 15, top: 10),
                          child: LikeButton(
                            size: 35,
                            circleColor:
                            CircleColor(start: Color(0xff00ddff), end: Color(0xff0099cc)),
                            bubblesColor: BubblesColor(
                              dotPrimaryColor: Color(0xff33b5e5),
                              dotSecondaryColor: Color(0xff0099cc),
                            ),
                            likeBuilder: (bool isLiked) {
                              return Icon(
                                size: 35,
                                Icons.favorite,
                                color: isLiked ? Colors.red : Colors.grey,
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                      ),
                      Icon(
                        Icons.star,
                        size: 20,
                        color: Colors.amber,
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        "4,9",
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Icon(
                        Icons.location_on,
                        size: 20,
                        color: Colors.blue,
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        "Lombok",
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
          ],
        ),
      ),
    );
  }
}
