import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Carrinho'),
      ),
      body: Column(
        children: [
          Card(
            margin: EdgeInsets.all(25),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
              children: [
                Text(
                  'Total: ',
                  style: TextStyle(fontSize: 20),
                ),
                Chip(
                  label: Text(
                    'R\$1000',
                     style: TextStyle(
                      color: Theme.of(context).primaryColor),
                  ),
                ),
                TextButton(
                    onPressed: (){},
                  style: TextButton.styleFrom(
                    foregroundColor: Theme.of(context).primaryColor,
                  ),
                    child: Text('COMPRAR'),
                ),
              ],
              ),
            ),
          ),
        ],
      ),

    );
  }
}
