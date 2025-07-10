//
import 'package:flutter/material.dart';
import 'package:medora/Models/Articles_model.dart';

class ArticleDetailsPage extends StatelessWidget {
  final ArticleModel article;

  const ArticleDetailsPage({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textColor = theme.textTheme.bodyLarge?.color;

    final List<ArticleModel> allArticles = [
      ArticleModel(
        title: "The Importance of Regular Health Checkups",
        quote: "Early detection can save lives.",
        imagePath: "assets/images/article 1.jpg",
        fullArticle:
            "Many people only visit the doctor when they are feeling unwell, but regular health checkups are essential even when you feel perfectly fine. Early detection of potential health issues can significantly improve treatment outcomes. Checkups include basic screenings like blood pressure, cholesterol, and blood sugar tests, helping to spot diseases such as hypertension or diabetes early. Preventive care allows for lifestyle changes that can delay or stop disease progression. Investing time once or twice a year for a full medical exam could mean fewer problems later, and peace of mind now.",
      ),
      ArticleModel(
        title: "How Sleep Affects Your Health",
        quote:
            "Getting enough quality sleep is crucial for your overall health.",
        imagePath: "assets/images/article 3.jpg",
        fullArticle:
            "Getting enough quality sleep is crucial for your overall health. Sleep is when your body repairs itself—muscle recovery, hormone regulation, and immune system strengthening all happen during rest. Chronic sleep deprivation can lead to serious health issues like obesity, diabetes, depression, and heart disease. Sleep also directly impacts mental sharpness, mood, and energy levels. Good sleep hygiene habits include sticking to a schedule, avoiding caffeine late in the day, and creating a calm sleeping environment. By prioritizing sleep, you improve both your physical and mental performance every day.",
      ),
      ArticleModel(
        title: "Nutrition Tips for a Healthy Life",
        quote: "Eat better, feel better!",
        imagePath: "assets/images/article 2.jpg",
        fullArticle:
            "Good nutrition is one of the keys to a healthy life. You can improve your health by keeping a balanced diet. Eat foods that contain vitamins and minerals, and avoid processed foods that are high in sugar and salt. Drinking plenty of water and getting regular exercise also play important roles. Make smart choices every day to feel better and live longer.",
      ),
    ];

    final List<ArticleModel> similarArticles = allArticles
        .where((a) => a.title != article.title)
        .toList();

    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  child: Image.asset(
                    article.imagePath,
                    width: double.infinity,
                    height: 250,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 40,
                  left: 16,
                  child: CircleAvatar(
                    backgroundColor: Colors.black45,
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back, color: Colors.white),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                article.fullArticle,
                style: TextStyle(fontSize: 16, height: 1.5, color: textColor),
              ),
            ),
            const SizedBox(height: 30),
            if (similarArticles.isNotEmpty) ...[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'Similar Articles',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: textColor,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 100,
                child: PageView.builder(
                  itemCount: similarArticles.length,
                  controller: PageController(viewportFraction: 0.9),
                  itemBuilder: (context, index) {
                    final similarArticle = similarArticles[index];
                    return GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                ArticleDetailsPage(article: similarArticle),
                          ),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 8),
                        decoration: BoxDecoration(
                          color: theme.cardColor,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              blurRadius: 8,
                              offset: const Offset(0, 4),
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(15),
                                bottomLeft: Radius.circular(15),
                              ),
                              child: Image.asset(
                                similarArticle.imagePath,
                                width: 100,
                                height: 80,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 8,
                                  horizontal: 8,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      similarArticle.title,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: textColor,
                                      ),
                                    ),
                                    const SizedBox(height: 5),
                                    Text(
                                      similarArticle.quote,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: theme.textTheme.bodySmall
                                          ?.copyWith(color: Colors.grey[600]),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
