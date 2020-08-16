import 'package:eticaret/widgets/productListRow.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductList extends StatelessWidget {
  BuildContext context;
  @override
  Widget build(BuildContext context) {
    this.context = context;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Tum Urunler",
          style: TextStyle(color: Colors.black87),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: buildProductListPage(),
    );
  }

  buildProductListPage() {
    Size screanSize = MediaQuery.of(context).size;
    return Container(
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          if (index == 0) {
            return _buildFilterWidget(screanSize);
          } else if (index == 4) {
            return SizedBox(height: 12,);
          } else {
            return _buildProductListRow();
          }
        },
      ),
    );
  }

  _buildFilterWidget(Size screanSize) {
    return Container(
      margin: EdgeInsets.all(12.0),
      width: screanSize.width,
      child: Card(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _buildFilterButton("Sirala"),
              Container(
                color: Colors.black87,
                width: 2,
                height: 24,
              ),
              _buildFilterButton("Filtrele"),
            ],
          ),
        ),
      ),
    );
  }

  _buildFilterButton(String title) {
    return InkWell(
      onTap: (){print(title);},
      child: Row(
        children: <Widget>[
          Icon(
            Icons.arrow_drop_down,
            color: Colors.black87,
          ),
          SizedBox(
            width: 2,
          ),
          Text(title)
        ],
      ),
    );
  }

  _buildProductListRow() {
    return ProductListRow(name:"Kazak",currentPrice:150,originalPrice:300,discount:50,imageUrl:"https://kigili-akig.akinoncdn.com/products/2019/09/18/80868/86256281-eb3e-45e2-9a66-a83e01ef64bc_size350x525_quality90_cropCenter.jpg");
  }
}
