import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medora/Models/Articles_model.dart';
import 'package:medora/Pages/ArticleDetailsPage.dart';

class ShowArticles extends StatefulWidget {
  const ShowArticles({super.key});

  @override
  State<ShowArticles> createState() => _ShowArticlesState();
}

class _ShowArticlesState extends State<ShowArticles> {
  final List<ArticleModel> articles = [
    ArticleModel(
      title: "The Importance of Regular Health Checkups",
      quote: "Early detection can save lives.",
      imagePath: "assets/images/article 1.jpg",
      fullArticle:
          "Many people only visit the doctor when they are feeling unwell, but regular health checkups are essential even when you feel perfectly fine. Early detection of potential health issues can significantly improve treatment outcomes. Checkups include basic screenings like blood pressure, cholesterol, and blood sugar tests, helping to spot diseases such as hypertension or diabetes early. Preventive care allows for lifestyle changes that can delay or stop disease progression. Investing time once or twice a year for a full medical exam could mean fewer problems later, and peace of mind now.",
    ),
    ArticleModel(
        title: "Healthy Eating for a Strong Heart",
        quote:
            "Getting enough quality sleep is crucial for your overall health.",
        imagePath: "assets/images/article 2.jpg",
        fullArticle:
            "Getting enough quality sleep is crucial for your overall health. Sleep is when your body repairs itself—muscle recovery, hormone regulation, and immune system strengthening all happen during rest. Chronic sleep deprivation can lead to serious health issues like obesity, diabetes, depression, and heart disease. Sleep also directly impacts mental sharpness, mood, and energy levels. Good sleep hygiene habits include sticking to a schedule, avoiding caffeine late in the day, and creating a calm sleeping environment. By prioritizing sleep, you improve both your physical and mental performance every day."),
    ArticleModel(
        title: " How Sleep Affects Your Health",
        quote:
            "Getting enough quality sleep is crucial for your overall health.",
        imagePath: "assets/images/article 3.jpg",
        fullArticle:
            "Getting enough quality sleep is crucial for your overall health. Sleep is when your body repairs itself—muscle recovery, hormone regulation, and immune system strengthening all happen during rest. Chronic sleep deprivation can lead to serious health issues like obesity, diabetes, depression, and heart disease. Sleep also directly impacts mental sharpness, mood, and energy levels. Good sleep hygiene habits include sticking to a schedule, avoiding caffeine late in the day, and creating a calm sleeping environment. By prioritizing sleep, you improve both your physical and mental performance every day."),
    ArticleModel(
        title: "Managing Stress for a Healthier Life",
        quote:
            "Stress is an unavoidable part of life, but chronic stress can wreak havoc on your body and mind.",
        imagePath: "assets/images/article 5.jpeg",
        fullArticle:
            "Stress is an unavoidable part of life, but chronic stress can wreak havoc on your body and mind. High stress levels are linked to headaches, digestive problems, heart disease, and even weakened immunity. Managing stress effectively is vital for a long, healthy life. Relaxation techniques such as meditation, yoga, deep breathing exercises, and spending time in nature can significantly lower stress hormones. Setting boundaries, practicing gratitude, and making time for hobbies can also improve emotional resilience. Stress management isn't about avoiding challenges—it's about building strength to face them calmly and healthily."),
    ArticleModel(
        title: "Staying Hydrated: Why Water Matters",
        quote:
            "Water makes up about 60% of the human body and is involved in nearly every bodily function.",
        imagePath: "assets/images/article 6.jpg",
        fullArticle:
            "Water makes up about 60% of the human body and is involved in nearly every bodily function, from regulating temperature to aiding digestion. Dehydration can cause fatigue, headaches, dizziness, and impaired cognitive performance. Drinking enough water supports kidney function, joint health, and healthy skin. Experts recommend about 8 glasses (2 liters) a day, but needs vary based on age, activity level, and climate. Carrying a reusable water bottle can help remind you to sip regularly. Staying properly hydrated is one of the easiest and most powerful ways to feel better and stay energized throughout the day."),
    ArticleModel(
        title: "Vaccinations: Protecting You & Others",
        quote: "The most successful public health measures in history.",
        imagePath: "assets/images/article 7.jpg",
        fullArticle:
            "Vaccines are one of the most successful public health measures in history. They not only protect individuals from deadly diseases like measles, polio, and influenza but also protect entire communities through herd immunity. Vaccination works by training your immune system to recognize and fight infections quickly. Staying up to date on vaccines reduces the spread of contagious illnesses and protects those who can't be vaccinated, such as infants or people with weakened immune systems. In a world of global travel and fast-spreading diseases, vaccines are more important than ever to ensure public safety."),
    ArticleModel(
        title: "Mental Health is Health Too",
        quote:
            "Too often, mental health is overlooked in discussions about wellness.",
        imagePath: "assets/images/article 8.jfif",
        fullArticle:
            "Too often, mental health is overlooked in discussions about wellness. Yet, mental health affects every part of your life, from your physical health to your relationships and work performance. Common mental health challenges like anxiety and depression are treatable. Seeking professional help, practicing mindfulness, building strong social connections, and maintaining healthy sleep and exercise habits can make a significant difference. Remember, mental health is not a weakness; it’s a vital part of your overall well-being. Just like a physical illness, mental health struggles deserve compassion, care, and attention."),
    ArticleModel(
        title: "Signs of Diabetes You Should Know",
        quote:
            "Diabetes is a silent disease that can cause serious complications if left untreated.",
        imagePath: "assets/images/article 9.jpg",
        fullArticle:
            "Diabetes is a silent disease that can cause serious complications if left untreated. Recognizing early symptoms like excessive thirst, frequent urination, unexplained weight loss, blurred vision, and slow-healing wounds is crucial. Early diagnosis allows for easier management through lifestyle changes such as improved diet and increased exercise. Regular screenings are important, especially for people with a family history of diabetes. Managing blood sugar levels early can prevent serious issues such as kidney failure, blindness, and heart disease. Knowledge and early action are your best defenses against diabetes."),
    ArticleModel(
        title: "The Role of Calcium and Vitamin D",
        quote: "Strong bones are the foundation of a healthy body.",
        imagePath: "assets/images/article 10.png",
        fullArticle:
            "Strong bones are the foundation of a healthy body, yet bone health is often neglected until problems arise. Calcium is essential for building bone mass, while vitamin D helps your body absorb calcium effectively. Sources of calcium include dairy products, leafy green vegetables, and fortified foods. Sunlight exposure and foods like fatty fish provide vitamin D. Regular weight-bearing exercise, like walking or lifting weights, also strengthens bones. Maintaining healthy bone density prevents osteoporosis and fractures later in life. Building strong bones is a lifelong commitment that starts with daily smart choices."),
  ];

  List<ArticleModel> filteredArticles = [];
  TextEditingController searchController = TextEditingController();
  bool isSearching = false;

  @override
  void initState() {
    super.initState();
    filteredArticles = articles; // Show all initially
  }

  void updateSearch(String query) {
    setState(() {
      if (query.isEmpty) {
        filteredArticles = articles;
      } else {
        filteredArticles = articles
            .where((article) =>
                article.title.toLowerCase().contains(query.toLowerCase()))
            .toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEFF1F1),
      appBar: AppBar(
        backgroundColor: const Color(0xffEFF1F1),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black, size: 22),
        ),
        centerTitle: true,
        title: !isSearching
            ? Text(
                'Medical Articles',
                style: GoogleFonts.roboto(
                  textStyle: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w500),
                ),
              )
            : TextField(
                controller: searchController,
                onChanged: updateSearch,
                autofocus: true,
                style: const TextStyle(color: Colors.black),
                decoration: const InputDecoration(
                  hintText: 'Search articles...',
                  hintStyle: TextStyle(color: Colors.black54),
                  border: InputBorder.none,
                ),
              ),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                isSearching = !isSearching;
                if (!isSearching) {
                  searchController.clear();
                  filteredArticles = articles;
                }
              });
            },
            icon: Icon(
              isSearching ? Icons.close : Icons.search,
              size: 26,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: filteredArticles.length,
          itemBuilder: (context, index) {
            final article = filteredArticles[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          ArticleDetailsPage(article: article)),
                );
              },
              child: Container(
                margin: const EdgeInsets.only(bottom: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(0),
                        topRight: Radius.circular(0),
                        bottomLeft: Radius.circular(0),
                        bottomRight: Radius.circular(0),
                      ),
                      child: Image.asset(
                        article.imagePath,
                        width: double.infinity,
                        height: 150,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 100,
                      padding: const EdgeInsets.symmetric(
                          vertical: 12, horizontal: 16),
                      decoration: const BoxDecoration(
                        color: Color(0xff828181),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            article.title,
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            article.quote,
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                fontSize: 13,
                                color: Colors.white70,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
