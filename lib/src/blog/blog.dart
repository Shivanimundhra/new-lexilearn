import 'package:flutter/material.dart';

import 'blog2.dart';
//
// class blog extends StatefulWidget {
//   const blog({super.key});
//
//   @override
//   State<blog> createState() => BlogScreen();
// }

// class _blogState extends State<blog> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: BlogScreen(),
//     );
//   }
//}
class BlogScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Blog Screen'),
      ),
      body: ListView.builder(
        itemCount: 7,
        itemBuilder: (context, index) {
          return BlogCard(
            title: _getBlogTitle(index),
            content: _getBlogContent(index),
            info: _getBlogInfo(index),
            imageUrl: _getBlogImage(index),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BlogDetailsScreen(title: _getBlogTitle(index), content: _getBlogContent(index), info: _getBlogInfo(index)),
                ),
              );
            },
          );
        },
      ),
    );
  }

  String _getBlogTitle(int index) {
    switch (index) {
      case 0:
        return 'Improving Public Speaking Skills';
      case 1:
        return 'Mastering a New Language';
      case 2:
        return 'Effective Business Communication';
      case 3:
        return 'Language Learning Tips';
      case 4:
        return 'Cross-Cultural Communication';
      case 5:
        return 'Basics of Grammer';
      case 6:
        return 'Overcoming Language Barriers';
      default:
        return 'Blog Title';
    }
  }

  String _getBlogInfo(int index) {
    switch (index) {
      case 0:
        return
          'Structured Preparation:Organize your content logically with a clear introduction, main points, and conclusion.Create an outline or structure to guide your speech, ensuring a cohesive flow of ideas.Practice brevity and clarity, avoiding unnecessary jargon or complexity.Effective Delivery:Focus on vocal variety by modulating tone, pitch, and pace to maintain audience interest.Project confidence through strong and articulate speech, emphasizing key points.'
              'Utilize pauses strategically to emphasize '

              'important ideas and allow for audience reflection.Nonverbal Communication:Pay attention to body language, maintaining open and confident posture to convey credibility.Use gestures purposefully to enhance your message and engage the audience.Maintain eye contact with the audience to establish rapport and convey sincerity.Audience Engagement:Tailor your speech to the audience interests, needs, and level of understanding.Encourage interaction through questions, anecdotes, or multimedia elements to keep the audience engaged.Adapt your delivery based on audience feedback, gauging their reactions and adjusting accordingly.'
              'Continuous Practice and Improvement:Regularly rehearse your speeches to build confidence and familiarity with your material.Seek feedback from peers, mentors, or professionals to identify areas for improvement.Take advantage of speaking opportunities, such as workshops or public speaking clubs, to refine your skills in a supportive environment.Manage Anxiety and Nerves:Practice relaxation techniques, such as deep breathing or visualization, to calm nerves before speaking.Reframe nervous energy as excitement, focusing on the opportunity to connect with and inspire your audience.Build confidence through positive self-talk and affirmations, reminding yourself of past successes and growth opportunities.'





        ;
      case 1:
        return 'Set Clear Goals:'
            'Define your objectives for learning the language, whether its for travel, career advancement, personal interest, or academic requirements.'
            'Establish specific, measurable goals such as achieving fluency, passing language proficiency exams, or engaging in conversations with native speakers.'
            'Choose the Right Learning Method:'

            ' Determine the learning method that best suits your preferences and learning style, whether its through traditional classroom instruction,'
            ' self-study with textbooks and online resources, immersion programs, language exchange partnerships, or a combination of methods.'
            'Consider using language learning apps and software that offer interactive lessons, vocabulary drills, and pronunciation practice.'
            ' Build a Strong Foundation:'

            ' Start with the basics of grammar, vocabulary, and pronunciation to establish a solid foundation in the language.'
            ' Focus on mastering essential phrases, greetings, and everyday expressions to facilitate communication in real-life situations.'
            ' Practice regularly to reinforce learning and commit new vocabulary and grammar rules to memory.'
            '  Immerse Yourself in the Language:'

            '  Surround yourself with the language as much as possible by watching movies, listening to music, reading books or articles, and consuming media in the target language.'
            '  Engage with native speakers through language exchange meetups, online forums, or language learning communities to practice speaking and listening skills.'
            '  Travel to countries where the language is spoken to immerse yourself in the culture and gain firsthand exposure to authentic language use.'
            ' Practice Speaking and Listening:'

            ' Practice speaking regularly, even if it means starting with simple conversations or talking to yourself in the mirror.'
            ' Focus on pronunciation and intonation by mimicking native speakers and recording yourself to identify areas for improvement.'
            ' Listen to podcasts, audiobooks, or radio programs in the target language to improve listening comprehension and expose yourself to different accents and dialect'


            ' Continuously expand your vocabulary by learning new words and phrases in context, using flashcards, mnemonic devices, or vocabulary apps.'
            ' Read extensively in the target language, starting with graded readers or children books and gradually progressing to newspapers, magazines, and literature.'
            'Pay attention to sentence structure, idiomatic expressions, and cultural nuances to enhance comprehension and fluency.'
            ' Practice Writing and Grammar:'

            'Practice writing regularly by keeping a journal, writing essays, or corresponding with native speakers through email or language exchange platforms.'
            'Pay attention to grammar rules, sentence structure, and punctuation, seeking feedback from tutors or language partners to improve accuracy and clarity.'
            'Stay Motivated and Persistent:'

        ;
      case 2:
        return 'Effective Business Communication';
      case 3:
        return 'Language Learning Tips';
      case 4:
        return 'Cross-Cultural Communication';
      case 5:
        return 'Language Learning Resources';
      case 6:
        return 'Overcoming Language Barriers';
      default:
        return 'Blog Title';
    }
  }

  String _getBlogImage(int index) {
    switch (index) {
      case 0:
        return 'assets/image/blog/learn.png';
      case 1:
        return 'assets/image/blog/communicatiopn.png';
      case 2:
        return 'assets/image/blog/multiple.png';
      case 3:
        return 'assets/image/blog/speak.png';
      case 4:
        return 'assets/image/blog/stage.png';
      case 5:
        return 'assets/image/blog/usa.png';
      case 6:
        return 'assets/image/blog/language.png';
      default:
        return '';

    }
  }

  String _getBlogContent(int index) {
    switch (index) {
      case 0:
        return 'Public speaking is the process of communicating information to an audience. It is an essential skill for professionals in various fields, including business, politics, and education. Here are some tips to improve your public speaking skills:';
      case 1:
        return 'Learning a new language can be a rewarding experience that opens up opportunities for personal and professional growth. Whether you want to travel the world, connect with people from different cultures, or advance your career, mastering a new language is a valuable skill.';
      case 2:
        return 'Effective business communication is crucial for success in today\'s competitive marketplace. Clear and concise communication helps build strong relationships with customers, partners, and employees, leading to increased productivity and profitability.';
      case 3:
        return 'Language learning tips can help you become more efficient and effective in acquiring new languages. Whether you\'re learning for personal or professional reasons, incorporating these strategies into your study routine can accelerate your progress and improve your fluency.';
      case 4:
        return 'Cross-cultural communication refers to the exchange of information between individuals from different cultural backgrounds. It plays a vital role in today\'s globalized world, where people from diverse cultures interact in various settings, such as workplaces, educational institutions, and social events.';
      case 5:
        return ' Grammar is the system of rules governing the structure, usage, and syntax of a language, ensuring clarity and coherence in communication. It encompasses elements such as syntax (sentence structure), morphology (word formation), and semantics (meaning). Proper understanding and application of grammar facilitate effective writing and speaking.';
      case 6:
        return 'Overcoming language barriers is essential for effective communication in multicultural environments. Whether you\'re traveling abroad, working with international colleagues, or interacting with diverse communities, understanding and addressing language barriers is key to fostering mutual understanding and collaboration.';
      default:
        return '';
    }
  }
}

class BlogCard extends StatelessWidget {
  final String title;
  final String content;
  final String info;
  final String imageUrl;
  final VoidCallback onTap;

  const BlogCard({
    Key? key,
    required this.title,
    required this.content,
    required this.info,
    required this.imageUrl,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: InkWell(
        onTap: onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 150.0,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    content,
                    style: TextStyle(fontSize: 16.0),
                  ),
                  SizedBox(height: 16.0),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Ink(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.orange),
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      child: TextButton(
                        onPressed: onTap,
                        child: Text(
                          'Read More',
                          style: TextStyle(
                            color: Colors.orange,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
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
  }
}
