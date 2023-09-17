import 'package:flutter/material.dart';

class HelpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Help'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          buildFAQItem(
            question: 'How does the disease detection feature work?',
            answer:
                'The disease detection feature uses advanced image processing and machine learning algorithms to analyze plant images and identify diseases. Simply capture a clear image of the affected plant part and let the app analyze it. It will then provide you with the most probable disease identification based on the symptoms detected.',
          ),
          buildFAQItem(
            question:
                'Can I use the app to identify different types of plants?',
            answer:
                'Yes, absolutely! Our app includes a plant identification feature that allows you to identify various plant species. Simply take a photo of the plant or leaf, and the app will match it against its extensive plant database to provide you with the closest possible identification.',
          ),
          buildFAQItem(
            question:
                'How accurate are the weather forecasts provided by the app?',
            answer:
                'The weather forecasts in our app are sourced from reputable weather data providers and are generally accurate. However, please note that weather predictions can be subject to change and occasional variations. We recommend checking the forecast regularly for the most up-to-date information.',
          ),
          buildFAQItem(
            question:
                'How can I calculate the precise amount of fertilizers, herbicides, and pesticides needed for my crops?',
            answer:
                'Our app incorporates algorithms that take into account factors such as crop type, soil condition, weather, and disease prevalence to calculate the precise amount of fertilizers, herbicides, and pesticides required. Simply input the necessary information, and the app will provide you with customized recommendations.',
          ),
          buildFAQItem(
            question: 'Where does the app get its crop price information?',
            answer:
                'The crop price information in our app is sourced from reliable agricultural markets and commodity exchanges. We collect real-time data to provide you with up-to-date information on crop prices. However, please note that market prices can fluctuate, and it\'s always a good idea to verify the prices through local sources as well.',
          ),
          buildFAQItem(
            question: 'How do the crop rotation recommendations work?',
            answer:
                'Our app\'s crop rotation recommendations are based on industry best practices and scientific research. By considering factors such as soil health, nutrient depletion, pest control, and market demand, the app suggests the most suitable crop rotation patterns to optimize productivity and maintain soil fertility.',
          ),
          buildFAQItem(
            question:
                'How are the personalized nutrient recommendations determined?',
            answer:
                'The personalized nutrient recommendations provided by our app are based on user inputs regarding their health conditions and dietary requirements. By leveraging nutritional guidelines and expert knowledge, the app suggests appropriate nutrients to support individual health needs.',
          ),
          buildFAQItem(
            question: 'How can I provide feedback or report a bug in the app?',
            answer:
                'We appreciate your feedback! To provide feedback or report a bug, you can contact our support team through email at "olumabera@gmail.com" or by filling out the contact form on our website. We value your input and will strive to address your concerns promptly.',
          ),
        ],
      ),
    );
  }

  Widget buildFAQItem({required String question, required String answer}) {
    return ExpansionTile(
      title: Text(
        question,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(answer),
        ),
      ],
    );
  }
}
