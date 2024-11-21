import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: TextField(
          
          ),
        ),
       
          
        
      
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildGopaySection(),
            _buildServiceGrid(),
            _buildProgressBarSection(),
            _buildVoucherButtons(),
            _buildReviewSection(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.local_offer), label: 'Promos'),
          BottomNavigationBarItem(icon: Icon(Icons.receipt), label: 'Orders'),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chat'),
        ],
      ),
    );
  }

  Widget _buildGopaySection() {
    return Container(
      color: Colors.blue,
      padding: EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Gopay', style: TextStyle(color: Colors.white)),
              Text('Saldo masih kosong..', style: TextStyle(color: Colors.white)),
            ],
          ),
          Row(
            children: [
              Column(
                children: [
                  Icon(Icons.add, color: Colors.white),
                  Text('Top up', style: TextStyle(color: Colors.white)),
                ],
              ),
              SizedBox(width: 16),
              Column(
                children: [
                  Icon(Icons.payment, color: Colors.white),
                  Text('Pay', style: TextStyle(color: Colors.white)),
                ],
              ),
             
                ],
              ),
            ],
          ),
        
    );
    
  }

  Widget _buildServiceGrid() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.count(
        crossAxisCount: 4,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: [
          _buildGridItem(Icons.motorcycle, 'GoRide'),
          _buildGridItem(Icons.directions_car, 'GoCar'),
          _buildGridItem(Icons.restaurant, 'GoFood'),
          _buildGridItem(Icons.send, 'GoSend'),
          _buildGridItem(Icons.store, 'GoMart'),
          _buildGridItem(Icons.phone_android, 'GoPulsa'),
          _buildGridItem(Icons.group, 'GoClub'),
          _buildGridItem(Icons.more_horiz, 'More'),
        ],
      ),
    );
  }

  Widget _buildGridItem(IconData icon, String label) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 40),
        SizedBox(height: 8),
        Text(label),
      ],
    );
  }

  Widget _buildProgressBarSection() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            children: [
              Icon(Icons.star, color: Colors.amber),
              SizedBox(width: 8),
              Text('111 XP your next treasure'),
            ],
          ),
          LinearProgressIndicator(
            value: 0.5,
            backgroundColor: Colors.grey[300],
            valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
          ),
        ],
      ),
    );
  }

  Widget _buildVoucherButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
          onPressed: () {},
          child: Text('21 vouchers expiring soon'),
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text('Restos near me'),
        ),
      ],
    );
  }

  Widget _buildReviewSection() {
    return ListTile(
      leading: Icon(Icons.fastfood),
      title: Text('How was the driver?'),
      subtitle: Text('Geprek Sambelan Cak Tek, Gubeng\nToday, 11.16'),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: List.generate(5, (index) => Icon(Icons.star_border)),
      ),
    );
  }
}
