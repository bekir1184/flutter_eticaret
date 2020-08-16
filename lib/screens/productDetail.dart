import 'package:flutter/material.dart';

class ProductDetail extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ProductDetailState();
}

class ProductDetailState extends State with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Urun Aciklamasi",
          style: TextStyle(color: Colors.black87),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.chevron_left,
            size: 40,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: _buildProductDetails(context),
      bottomNavigationBar: _buildbottomNavigationBar(),
    );
  }

  _buildProductDetails(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListView(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _buildProductImages(),
              _buildProductTitle(),
              SizedBox(
                height: 12,
              ),
              _buildProductPrice(),
              SizedBox(
                height: 12,
              ),
              _buildDivider(size),
              SizedBox(
                height: 12,
              ),
              _buildFutherInfo(),
              SizedBox(
                height: 12,
              ),
              _buildDivider(size),
              SizedBox(
                height: 12,
              ),
              _buildSizeArea(),
              SizedBox(
                height: 12,
              ),
              _buildDivider(size),
              SizedBox(
                height: 12,
              ),
              _buildInfo(),
            ],
          ),
        )
      ],
    );
  }

  _buildProductImages() {
    TabController imagesController = TabController(length: 3, vsync: this);
    return Padding(
      padding: EdgeInsets.all(16),
      child: Container(
        height: 250,
        child: Center(
          child: DefaultTabController(
            length: 3,
            child: Stack(
              children: <Widget>[
                TabBarView(
                  controller: imagesController,
                  children: <Widget>[
                    Image.network(
                        "https://kigili-akig.akinoncdn.com/products/2019/09/18/80868/86256281-eb3e-45e2-9a66-a83e01ef64bc_size350x525_quality90_cropCenter.jpg"),
                    Image.network(
                        "https://kigili-akig.akinoncdn.com/products/2019/09/18/80870/f6b7bf32-07a0-4aa7-b211-0d25137bd8f1_size350x525_quality90_cropCenter.jpg"),
                    Image.network(
                        "https://kigili-akig.akinoncdn.com/products/2019/09/18/80870/57f0046d-6ade-41c3-ae72-9856a1fde612_size350x525_quality90_cropCenter.jpg"),
                  ],
                ),
                Container(
                  alignment: FractionalOffset(0.5, 0.95),
                  child: TabPageSelector(
                    controller: imagesController,
                    selectedColor: Colors.grey,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  _buildProductTitle() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: Center(
        child: Text(
          "Orta füme Bato Yaka Yünlü Fermuarlı Triko Kazak",
          style: TextStyle(fontSize: 16, color: Colors.black87),
        ),
      ),
    );
  }

  _buildProductPrice() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        children: <Widget>[
          Text(
            "\$ 100",
            style: TextStyle(fontSize: 20, color: Colors.black87),
          ),
          SizedBox(
            width: 8,
          ),
          Text(
            "\$ 200",
            style: TextStyle(
                fontSize: 14,
                color: Colors.red,
                decoration: TextDecoration.lineThrough),
          ),
          SizedBox(
            width: 8,
          ),
          Text(
            "%50 indirim yapildi",
            style: TextStyle(
              fontSize: 14,
              color: Colors.blue,
            ),
          ),
          SizedBox(
            width: 8,
          ),
        ],
      ),
    );
  }

  _buildDivider(Size screanSize) {
    return Column(
      children: <Widget>[
        Container(
          color: Colors.grey,
          width: screanSize.width,
          height: 0.25,
        ),
      ],
    );
  }

  _buildFutherInfo() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        children: <Widget>[
          Icon(Icons.local_offer),
          SizedBox(
            width: 12.0,
          ),
          Text(
            "Daha fazla bilgi icin tiklayiniz ",
            style: TextStyle(color: Colors.grey, fontSize: 16),
          )
        ],
      ),
    );
  }

  _buildSizeArea() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(
                Icons.straighten,
                color: Colors.grey,
              ),
              SizedBox(width: 12),
              Text(
                "Beden = M ",
                style: TextStyle(color: Colors.grey),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Text(
                "Beden Tablosu",
                style: TextStyle(fontSize: 12, color: Colors.blue),
              ),
            ],
          ),
        ],
      ),
    );
  }

  _buildInfo() {
    TabController tabController = TabController(length: 2, vsync: this);
    return Container(
      child: Column(
        children: <Widget>[
          TabBar(
            controller: tabController,
            tabs: <Widget>[
              Tab(
                child: Text(
                  "Urun Bilgisi",
                  style: TextStyle(color: Colors.black87),
                ),
              ),
              Tab(
                child: Text(
                  "Yikama Bilgisi",
                  style: TextStyle(color: Colors.black87),
                ),
              ),
            ],
          ),
          Container(
            height: 100,
            padding: EdgeInsets.symmetric(horizontal: 12,vertical: 6),
            child: TabBarView(
              controller: tabController,
              children: <Widget>[
                Text(
                  "Cinsi: TRIKO \n Üretim Yeri: TÜRKIYE \n Renk: Orta füme \n Ürün Kodu: 0BDDMO05430XL \n  %50 YÜN %50 AKRİLİK ",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
                Text(
                  "30 derece makinada renkli yikama",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  _buildbottomNavigationBar() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Flexible(
            fit: FlexFit.tight,
            flex: 1,
            child: RaisedButton(
              onPressed: (){},
              color: Colors.grey,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.list,color: Colors.white,),
                  SizedBox(width: 4,),
                  Text("Istek",style: TextStyle(color: Colors.white),)

                ],
              ),
            ),
          ),
          Flexible(
            fit: FlexFit.tight,
            flex: 2,
            child: RaisedButton(
              onPressed: (){},
              color: Colors.greenAccent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.shopping_basket,color: Colors.white,),
                  SizedBox(width: 4,),
                  Text("Sepete Ekle",style: TextStyle(color: Colors.white),)

                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
