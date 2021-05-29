import 'package:flutter/material.dart';
import 'package:plant2/main.dart';

class GreenPlant extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                icon: Icon(Icons.search, size: 30),
                onPressed: () {},
              )
            ],
          ),
          Text('Green', style: TextStyle(color: Colors.grey, fontSize: 15)),
          SizedBox(height: 7),
          Text(
            'Plants',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
          ),
          Expanded(
            child: Container(
              child: ListView.builder(
                itemCount: plants.length,
                itemBuilder: (_, index) {
                  return GestureDetector(
                    onTap: () {},
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Hero(
                            tag: plants[index].title,
                            child: Image.network(
                              plants[index].image,
                              height: 210,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            plants[index].title,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            plants[index].discription,
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(height: 5),
                          Row(
                            children: [
                              Text(
                                "\$${plants[index].price}",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              // IconButton(
                              //   icon: Icon(Icons.menu),
                              //   color: Colors.transparent,
                              //   onPressed: () {},
                              // ),
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
                          Divider(),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
