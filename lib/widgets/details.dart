import 'package:flutter/material.dart';
import 'package:plant2/main.dart';

class DetailPage extends StatelessWidget {
  final Plant plant;

  const DetailPage({Key key, this.plant}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    print(plant);
    return Scaffold(
      backgroundColor: Color.fromRGBO(118, 152, 75, 1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(200),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 25),
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.arrow_back),
                        onPressed: () => Navigator.pop(context),
                      ),
                      Spacer(),
                      IconButton(
                        icon: Icon(Icons.shopping_cart_outlined),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  Container(
                    child: Hero(
                      tag: plant.title,
                      child: Image.network(
                        plant.image,
                        height: 350,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 70),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10),
                        Text(
                          plant.title,
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          plant.discription,
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 12,
                            height: 1.5,
                          ),
                        ),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            Text(
                              "\$${plant.price}",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            MaterialButton(
                              onPressed: () {},
                              color: Colors.white,
                              textColor: Colors.black,
                              child: Text(
                                "+",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              shape: CircleBorder(),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 70),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildStats("Height", Icons.height, plant.height),
                  _buildStats("Temperature", Icons.thermostat_outlined,
                      plant.temprature),
                  _buildStats("Pot", Icons.maps_ugc, plant.port),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildStats(String title, IconData icon, String data) {
    return Column(
      children: [
        Icon(icon, color: Colors.white, size: 40),
        SizedBox(height: 10),
        Text(
          title,
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 10),
        Text(
          data,
          style: TextStyle(color: Colors.white, fontSize: 10),
        )
      ],
    );
  }
}
