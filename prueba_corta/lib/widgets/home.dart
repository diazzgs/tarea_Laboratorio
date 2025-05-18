import 'package:flutter/material.dart';

class AppClima extends StatelessWidget {
  const AppClima({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        
        title: const Text('Jun 2\nLondon', style: TextStyle(fontSize: 16)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('21°C', style: TextStyle(fontSize: 50, color: Color.fromARGB(255, 240, 166, 28))),
            const Text('Overcast Clouds', style: TextStyle(fontSize: 30, color: Color.fromARGB(255, 83, 83, 83))),
            const SizedBox(height: 50),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('Today',style:TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                Text('This Week', style: TextStyle(fontWeight: FontWeight.bold, color: Color.fromARGB(255, 77, 76, 76), fontSize: 20 )),
              ],
            ),
          
            const SizedBox(height: 20),
            const Text('Temperatures', style: TextStyle( fontWeight: FontWeight.bold, fontSize: 20)), 
                
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                 const SizedBox(width: 10),
                Column(
                  children: [
                    const Text('8 PM'),
                    Image.asset('img/nube.png' , width: 25, height: 25),

                    const Text('21°C', style: TextStyle( fontWeight: FontWeight.bold)),
                  ],
                ),
                            const SizedBox(width: 35),

                Column(
                  children: [
                    const Text('11 PM'),
                    Image.asset('img/nube.png' , width: 25, height: 25),

                    const Text('22°C', style: TextStyle( fontWeight: FontWeight.bold)),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 24),
            const Text('Details',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Minimum'),
                    Text('21°C', style: TextStyle(fontWeight: FontWeight.bold , fontSize: 20)),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Maximum'),
                    Text('22°C', style: TextStyle(fontWeight: FontWeight.bold , fontSize: 20)),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 26),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Pressure'),
                    Text('1020 Pa', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Humidity'),
                    Text('41%', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
