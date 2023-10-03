import 'package:flutter/material.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 60,
              ),
              Image.asset(
                'assets/hand2.png',
                fit: BoxFit.fill, 
              ),
              SizedBox(
                height: 60,
              ),
              //*********************
              Text(
                "**Privacy Policy** ",
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Effective Date: [Insert Effective Date]",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Welcome to Hunch! This Privacy Policy outlines how Hunch ("we," "our," or "us") collects, uses, protects, and shares your personal information when you access or use our mobile application and website (collectively referred to as the "Service").',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "By using the Service, you consent to the practices described in this Privacy Policy. If you do not agree with this Privacy Policy, please do not use the Service.",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "**1. Information We Collect**",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "1.1. **Information You Provide**: When you use our Service, you may voluntarily provide us with personal information, including but not limited to:",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              SizedBox(
                height: 20,
              ),
              //1
              Text(
                "- Your name",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              SizedBox(
                height: 20,
              ),
              //2
              Text(
                "- Email address",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              //3
              SizedBox(
                height: 20,
              ),
              Text(
                "- Username and password",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              //4
              SizedBox(
                height: 20,
              ),
              Text(
                "- Profile information",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              //5
              SizedBox(
                height: 20,
              ),
              Text(
                "- User-generated content, such as comments and posts",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "1.2. **Information Collected Automatically**: We may automatically collect certain information when you use the Service, including:",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              //1
              SizedBox(
                height: 20,
              ),
              Text(
                "- Device information (e.g., device type, operating system, unique device identifiers)",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              //2
              SizedBox(
                height: 20,
              ),
              Text(
                "- Log data (e.g., IP address, browser type, pages viewed)",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              //3
              SizedBox(
                height: 20,
              ),
              Text(
                "- Usage information (e.g., interactions with the Service, time spent on pages)",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "1.3. **Cookies and Similar Technologies**: We may use cookies and similar tracking technologies to collect information about your interactions with the Service. Cookies are small text files that are stored on your device. You can manage your cookie preferences through your browser settings.",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "**2. How We Use Your Information**",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),

              SizedBox(
                height: 20,
              ),
              Text(
                "We may use the information we collect for various purposes, including but not limited to:",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              //1

              Text(
                " - Providing and maintaining the Service",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              //2
              Text(
                "- Personalizing your experience",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              //3
              Text(
                "- Analyzing usage patterns and trends",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              //4
              Text(
                "- Communicating with you",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              //5
              Text(
                "- Detecting and preventing fraud and misuse",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                ),
              ),
              //6
              Text(
                "- Complying with legal obligations",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "**3. Disclosure of Your Information**",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "3.1. **Service Providers**: We may share your information with third-party service providers who assist us in delivering and improving the Service.",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "3.2. **Legal Requirements**: We may disclose your information to comply with legal obligations, enforce our Terms and Conditions, protect our rights, and respond to legal requests.",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "**4. Data Security**",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "We implement reasonable security measures to protect your information from unauthorized access, disclosure, alteration, or destruction. However, please note that no method of data transmission over the internet or electronic storage is entirely secure.",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "**5. Your Choices**",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "5.1. **Account Information**: You can review and update your account information through the Service. You may also delete your account, subject to our Terms and Conditions.",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "5.2. **Cookies**: You can manage your cookie preferences through your browser settings. Disabling cookies may affect your user experience.",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "**6. Children's Privacy**",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "The Service is not intended for children under the age of 13. We do not knowingly collect personal information from children under 13. If you believe we have collected information from a child under 13, please contact us, and we will promptly delete the information.",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "**7. Changes to this Privacy Policy**",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "We may update this Privacy Policy to reflect changes in our practices or for other operational, legal, or regulatory reasons. We will notify you of any material changes, and the updated Privacy Policy will be effective upon the date specified in the notice.",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "**8. Contact Information**",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "If you have questions or concerns about this Privacy Policy, please contact us at:",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "[Your Contact Information]",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "**9. Applicable Law**",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "This Privacy Policy is governed by the laws of [Your Jurisdiction]. Any disputes arising under or in connection with this Privacy Policy shall be subject to the exclusive jurisdiction of the courts in [Your Jurisdiction].",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Creating comprehensive and detailed legal documents such as Terms and Conditions and a Privacy Policy is essential to ensure transparency, protect your users, and safeguard your business interests. Below, I'll provide you with expanded content for both documents. Keep in mind that these templates should be reviewed and customized by legal professionals to ensure compliance with applicable laws and regulations in your jurisdiction.",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "**Terms and Conditions** ",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "**1. Acceptance of Terms**",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Welcome to Hunch, an innovative online platform designed to help users overcome stage fright, anxiety, and communication difficulties. These Terms and Conditions (the "Agreement") govern your use of the Hunch mobile application, website, and related services (collectively referred to as the "Service"). By accessing or using the Service, you agree to comply with and be bound by these terms. If you do not agree with any part of these terms, you may not use the Service.',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "**2. User Accounts**",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "2.1. **Account Creation**: To access certain features of the Service, you must create an account. You agree to provide accurate, current, and complete information during the registration process and to update such information to keep it accurate, current, and complete.",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "2.2. **Account Security**: You are responsible for maintaining the security of your account and any activities that occur under your account. You must not share your account credentials with others.",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "**3. Content**",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "3.1. **User-Generated Content**: Users are solely responsible for the content they post on the Service. By posting content, you grant Hunch a non-exclusive, worldwide, royalty-free license to use, copy, reproduce, process, adapt, modify, publish, transmit, display, and distribute such content.",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "3.2. **Content Restrictions**: You agree not to post content that is offensive, illegal, infringing, or violates the rights of others. Hunch reserves the right to remove or modify any content that violates these terms.",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "**4. Privacy**",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "4.1. **Privacy Policy**: Your use of the Service is also governed by our Privacy Policy, which outlines how we collect, use, and protect your personal information. By using the Service, you consent to our collection and use of your personal information as described in the Privacy Policy",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "**5. Intellectual Property**",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "5.1. **Ownership**: All content and materials on the Service, including text, images, trademarks, logos, and software, are the property of Hunch or its licensors and are protected by intellectual property laws.",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "**6. Termination**",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "6.1. **Termination by Hunch**: Hunch reserves the right to terminate or suspend your account and access to the Service for any reason without notice, including, but not limited to, violations of these terms.",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "**7. Disclaimer of Warranties**",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                '7.1. **No Warranties**: The Service is provided "as is" without any warranties, expressed or implied. Hunch does not warrant that the Service will be error-free or uninterrupted.',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "**8. Limitation of Liability**",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "8.1. **Limitation of Liability**: Hunch shall not be liable for any direct, indirect, incidental, special, or consequential damages, including, but not limited to, loss of data, profits, or use of the Service.",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "**9. Changes to Terms**",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "9.1. **Updates**: Hunch may update these Terms and Conditions from time to time. You will be notified of any changes, and your continued use of the Service after such changes constitute acceptance of the updated terms.",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "**10. Governing Law**",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "10.1. **Applicable Law**: This Agreement is governed by the laws of [Your Jurisdiction]. Any disputes arising under or in connection with this Agreement shall be subject to the exclusive jurisdiction of the courts in [Your Jurisdiction].",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "**Other Requirements for the App**",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "In addition to your legal documents, consider the following requirements and considerations:",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "**11. Compliance with App Store Policies**: Ensure that your app complies with the policies and guidelines of the app stores (e.g., Google Play Store) where you plan to distribute it.",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "**12. Accessibility**: Make your app accessible to users with disabilities in compliance with accessibility standards.",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "**13. Data Protection Laws**: If your app collects personal information, be aware of data protection laws such as GDPR (General Data Protection Regulation) if you have users in the European Union.",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "**14. User Consent**: Implement mechanisms for obtaining user consent for data collection and processing where required.",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "**15. Security Measures**: Implement security measures to protect user data from unauthorized access.",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "**16. User Support**: Provide clear contact information for user support and respond to user inquiries and concerns in a timely manner.",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "**17. Legal Consultation**: Consult with legal professionals to ensure your app's compliance with all applicable laws and regulations.",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Creating robust legal documents and ensuring your app's compliance with relevant laws and guidelines are critical steps in building trust with your users and protecting your business. Always seek legal advice to customize these documents and address specific aspects of your app's functionality and jurisdictional requirements.",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Short description of Eduhunch (80 words)",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                '"Hunch: Unleash Your Confidence',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Join Hunch, your trusted companion in conquering stage fright and enhancing your communication skills. Say goodbye to anxiety and hello to a more confident you. Explore interactive activities, connect with like-minded individuals, and find your voice with Hunch. Your journey to becoming a confident communicator starts here.”",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Long description of Eduhunch",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "**Hunch: Unlock Your Communication Potential**",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Hunch is your go-to platform for conquering stage fright, boosting your confidence, and sharpening your communication skills. Whether you're a student preparing for placements, a professional seeking career advancement, or anyone looking to overcome communication hurdles, Hunch is your partner on this transformative journey.",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "**Key Features:**",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "1. **Digital Community**: Connect with like-minded individuals in a thriving digital community. Share thoughts, ideas, and experiences in a supportive environment.",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "2. **Interactive Activities**: Participate in debates, group discussions, and presentations to refine your communication skills effectively. Learning by doing is at the core of Hunch.",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "3. **Structured Approach**: Our platform offers a structured approach to improving communication tailored to meet your specific needs. No one-size-fits-all solutions here.",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "**Upcoming Features:**",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "- **ChatGPT Integration**: Our AI-powered chatbot, ChatGPT, will soon provide guidance on what to say and how to say it, helping you communicate more effectively in real-time.",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "- **Badges and Rewards**: Achieve milestones and earn badges and rewards, similar to Salesforce, to motivate your journey and recognize your progress.",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "- **Trending Hashtags**: Engage in more productive group discussions with trending hashtags, facilitating meaningful conversations.",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "- **Career Mentorship**: Connect with career counselors who will guide you in your professional development, offering valuable insights and advice.",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "- **Anonymous Duniya**: Express your thoughts and ideas without fear of judgment in an anonymous space designed for open sharing.",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "- **One-on-One Interaction**: Engage in one-on-one conversations with others, similar to Omegle, for personal and meaningful interactions.",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "- **Vedic Math for Aptitude**: Improve your mental math skills for aptitude tests with Vedic math lessons, enhancing your problem-solving abilities.",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "- **Live Trainers**: Join live sessions conducted by expert trainers who will help you improve your communication skills every step of the way.",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "- **Personalized Coaching**: Our AI coach will provide feedback on body language and facial expressions, ensuring you communicate more effectively and confidently",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "- **Placement Assistance**: Get valuable guidance on placements, including access to 4th-year notes, projects, research papers, and thesis help.",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "- **Startup Support**: We offer a soft corner for startups, helping them create pitch decks and presentations to secure investments and support.",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Join Hunch today and embark on a journey to unlock your full communication potential. Our community, interactive activities, and upcoming features are here to empower you. Get ready to shine in every conversation, presentation, and group discussion.",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Your journey to confident communication begins with Hunch.",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),

//************************************************************************* */
              
              //*************************************************** */
              Text(
                'Privacy Policy',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),

              Text(
                'Last updated: September 09, 2023',
                style: TextStyle(
                  // fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
             

              Text(
                "Thank you for using",
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Hunch!",
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                  "This Privacy Policy describes Our policies and procedures on the collection, use and disclosure of Your information when You use the Service and tells You about Your privacy rights and how the law protects You."),
              SizedBox(
                height: 20,
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text:
                          "We use Your Personal data to provide and improve the Service. By using the Service, You agree to the collection and use of information in accordance with this Privacy Policy. This Privacy Policy has been created with the help of the ",
                      style: TextStyle(fontSize: 16.0, color: Colors.black),
                    ),
                    TextSpan(
                      text: "Free Privacy Policy Generator",
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black, // Change the color as desired
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Interpretation and",
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Definitions",
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Interpretation",
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                  "The words of which the initial letter is capitalized have meanings defined under the following conditions. The following definitions shall have the same meaning regardless of whether they appear in singular or in plural"),
              SizedBox(
                height: 20,
              ),
              Text(
                "Definitions",
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text("For the purposes of this Privacy Policy:"),
              SizedBox(
                height: 20,
              ),

              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '• ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.black, 
                      ),
                    ),
                    TextSpan(
                      text: 'Account ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.black, 
                      ),
                    ),
                    TextSpan(
                      text: 'means a unique account created for You to access '
                          'our Service or parts of our Service.',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black, 
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              //2
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '• ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.black, 
                      ),
                    ),
                    TextSpan(
                      text: 'Affiliate ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.black, 
                      ),
                    ),
                    TextSpan(
                      text:
                          'e means an entity that controls, is controlled by or is under common control with a party, where "control" means ownership of 50% or more of the shares, equity interest or other securities entitled to vote for election of directors or other managing authority.',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black, 
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              //3
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '• ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text: 'Application ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.black, 
                      ),
                    ),
                    TextSpan(
                      text:
                          'refers to hunch, the software program provided by the Company.',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black, 
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              //4
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '• ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text: 'Company ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.black, 
                      ),
                    ),
                    TextSpan(
                      text:
                          '(referred to as either "the Company", "We", "Us" or "Our" in this Agreement) refers to hunch.',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black, 
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              //4
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '• ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text: 'Country ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.black, 
                      ),
                    ),
                    TextSpan(
                      text: 'refers to: Rajasthan, India.',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black, 
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              //6
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '• ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.black, 
                      ),
                    ),
                    TextSpan(
                      text: 'Device ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.black, 
                      ),
                    ),
                    TextSpan(
                      text:
                          'means any device that can access the Service such as a computer, a cellphone or a digital tablet.',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black, 
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              //7
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '• ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text: 'Personal Data ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.black, 
                      ),
                    ),
                    TextSpan(
                      text:
                          'is any information that relates to an identified or identifiable individual.',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              //8
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '• ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.black, 
                      ),
                    ),
                    TextSpan(
                      text: 'Service ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.black, 
                      ),
                    ),
                    TextSpan(
                      text: ' refers to the Application.',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black, 
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              //9
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '• ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.black, 
                      ),
                    ),
                    TextSpan(
                      text: 'Service Provider ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.black, 
                      ),
                    ),
                    TextSpan(
                      text:
                          'means any natural or legal person who processes the data on behalf of the Company. It refers to third-party companies or individuals employed by the Company to facilitate the Service, to provide the Service on behalf of the Company, to perform services related to the Service or to assist the Company in analyzing how the Service is used.',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black, 
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
//10
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '• ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.black, 
                      ),
                    ),
                    TextSpan(
                      text: 'Third-party Social Media Service ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.black, 
                      ),
                    ),
                    TextSpan(
                      text:
                          'refers to any website or any social network website through which a User can log in or create an account to use the Service.',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              //11
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '• ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.black, 
                      ),
                    ),
                    TextSpan(
                      text: 'Usage Data ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.black, 
                      ),
                    ),
                    TextSpan(
                      text:
                          'a refers to data collected automatically, either generated by the use of the Service or from the Service infrastructure itself (for example, the duration of a page visit).',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black, 
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              //12
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '• ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.black, 
                      ),
                    ),
                    TextSpan(
                      text: 'You ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text:
                          'means the individual accessing or using the Service, or the company, or other legal entity on behalf of which such individual is accessing or using the Service, as applicable.',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black, 
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),

              Text(
                "Collecting and Using",
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Your Personal Data",
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Types of Data Collected",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Personal Data",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "While using Our Service, We may ask You to provide Us with certain personally identifiable information that can be used to contact or identify You. Personally identifiable information may include, but is not limited to:",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              SizedBox(
                height: 20,
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '• ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.black, 
                      ),
                    ),
                    TextSpan(
                      text: 'Email address',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black, 
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '• ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.black, 
                      ),
                    ),
                    TextSpan(
                      text: 'First name and last name',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black, 
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '• ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.black, 
                      ),
                    ),
                    TextSpan(
                      text: 'Phone number',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black, 
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '• ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.black, 
                      ),
                    ),
                    TextSpan(
                      text: "Usage Data",
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black, 
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Usage Data",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Usage Data is collected automatically when using the Service.",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Usage Data may include information such as Your Device's Internet Protocol address (e.g. IP address), browser type, browser version, the pages of our Service that You visit, the time and date of Your visit, the time spent on those pages, unique device identifiers and other diagnostic data.",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "When You access the Service by or through a mobile device, We may collect certain information automatically, including, but not limited to, the type of mobile device You use, Your mobile device unique ID, the IP address of Your mobile device, Your mobile operating system, the type of mobile Internet browser You use, unique device identifiers and other diagnostic data.",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "We may also collect information that Your browser sends whenever You visit our Service or when You access the Service by or through a mobile device.",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Information from Third-Party Social Media Services ",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "The Company allows You to create an account and log in to use the Service through the following Third-party Social Media Services:",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              SizedBox(
                height: 20,
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '• ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.black, 
                      ),
                    ),
                    TextSpan(
                      text: "Google",
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black, 
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '• ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.black, 
                      ),
                    ),
                    TextSpan(
                      text: "Facebook",
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black, 
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '• ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.black, 
                      ),
                    ),
                    TextSpan(
                      text: "Instagram",
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black, 
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '• ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.black, 
                      ),
                    ),
                    TextSpan(
                      text: "Twitter",
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black, 
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '• ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text: "LinkedIn",
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black, 
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "If You decide to register through or otherwise grant us access to a Third-Party Social Media Service, We may collect Personal data that is already associated with Your Third-Party Social Media Service's account, such as Your name, Your email address, Your activities or Your contact list associated with that account.",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "You may also have the option of sharing additional information with the Company through Your Third-Party Social Media Service's account. If You choose to provide such information and Personal Data, during registration or otherwise, You are giving the Company permission to use, share, and store it in a manner consistent with this Privacy Policy.",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Information Collected while Using the Application ",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "While using Our Application, in order to provide features of Our Application, We may collect, with Your prior permission:",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              SizedBox(
                height: 20,
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '• ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.black, 
                      ),
                    ),
                    TextSpan(
                      text: "Information regarding your location",
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black, 
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '• ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.black, 
                      ),
                    ),
                    TextSpan(
                      text:
                          "Information from your Device's phone book (contacts list)",
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black, 
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '• ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.black, 
                      ),
                    ),
                    TextSpan(
                      text:
                          "Pictures and other information from your Device's camera and photo library",
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black, 
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "We use this information to provide features of Our Service, to improve and customize Our Service. The information may be uploaded to the Company's servers and/or a Service Provider's server or it may be simply stored on Your device .",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "You can enable or disable access to this information at any time, through Your Device settings.",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Use of Your Personal Data",
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "The Company may use Personal Data for the following purposes:",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              SizedBox(
                height: 20,
              ),
              //1
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '• ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.black, 
                      ),
                    ),
                    TextSpan(
                      text: 'To provide and maintain our Service, ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.black, 
                      ),
                    ),
                    TextSpan(
                      text: 'including to monitor the usage of our Service.',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black, 
                      ),
                    ),
                  ],
                ),
              ),
              //2
              SizedBox(
                height: 20,
              ),

              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '• ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.black, 
                      ),
                    ),
                    TextSpan(
                      text: 'To manage Your Account: ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.black, 
                      ),
                    ),
                    TextSpan(
                      text:
                          'to manage Your registration as a user of the Service. The Personal Data You provide can give You access to different functionalities of the Service that are available to You as a registered user.',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              //3
              SizedBox(
                height: 20,
              ),

              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '• ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.black, 
                      ),
                    ),
                    TextSpan(
                      text: 'For the performance of a contract: ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.black, 
                      ),
                    ),
                    TextSpan(
                      text:
                          'the development, compliance and undertaking of the purchase contract for the products, items or services You have purchased or of any other contract with Us through the Service.',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black, 
                      ),
                    ),
                  ],
                ),
              ),
              //4
              SizedBox(
                height: 20,
              ),

              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '• ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.black, 
                      ),
                    ),
                    TextSpan(
                      text: 'To contact You: ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.black, 
                      ),
                    ),
                    TextSpan(
                      text:
                          "To contact You by email, telephone calls, SMS, or other equivalent forms of electronic communication, such as a mobile application's push notifications regarding updates or informative communications related to the functionalities, products or contracted services, including the security updates, when necessary or reasonable for their implementation.",
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black, 
                      ),
                    ),
                  ],
                ),
              ),
              //5
              SizedBox(
                height: 20,
              ),

              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '• ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.black, 
                      ),
                    ),
                    TextSpan(
                      text: 'To provide You ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.black, 
                      ),
                    ),
                    TextSpan(
                      text:
                          'with news, special offers and general information about other goods, services and events which we offer that are similar to those that you have already purchased or enquired about unless You have opted not to receive such information.',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black, 
                      ),
                    ),
                  ],
                ),
              ),
              //6
              SizedBox(
                height: 20,
              ),

              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '• ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.black, 
                      ),
                    ),
                    TextSpan(
                      text: 'To manage Your requests: ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.black, 
                      ),
                    ),
                    TextSpan(
                      text: 'To attend and manage Your requests to Us.',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black, 
                      ),
                    ),
                  ],
                ),
              ),
              //7
              SizedBox(
                height: 20,
              ),

              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '• ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.black, 
                      ),
                    ),
                    TextSpan(
                      text: 'For business transfers: ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.black, 
                      ),
                    ),
                    TextSpan(
                      text:
                          'We may use Your information to evaluate or conduct a merger, divestiture, restructuring, reorganization, dissolution, or other sale or transfer of some or all of Our assets, whether as a going concern or as part of bankruptcy, liquidation, or similar proceeding, in which Personal Data held by Us about our Service users is among the assets transferred.',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black, 
                      ),
                    ),
                  ],
                ),
              ),
              //8
              SizedBox(
                height: 20,
              ),

              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '• ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.black, 
                      ),
                    ),
                    TextSpan(
                      text: 'For other purposes: ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.black, 
                      ),
                    ),
                    TextSpan(
                      text:
                          'We may use Your information for other purposes, such as data analysis, identifying usage trends, determining the effectiveness of our promotional campaigns and to evaluate and improve our Service, products, services, marketing and your experience.',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black, 
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "We may share Your personal information in the following situations:",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              //9
              SizedBox(
                height: 20,
              ),

              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '• ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.black, 
                      ),
                    ),
                    TextSpan(
                      text: 'With Service Providers: ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.black, 
                      ),
                    ),
                    TextSpan(
                      text:
                          ': We may share Your personal information with Service Providers to monitor and analyze the use of our Service, to contact You.',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black, 
                      ),
                    ),
                  ],
                ),
              ),
              //10
              SizedBox(
                height: 20,
              ),

              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '• ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.black, 
                      ),
                    ),
                    TextSpan(
                      text: 'For business transfers: ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.black, 
                      ),
                    ),
                    TextSpan(
                      text:
                          'We may share or transfer Your personal information in connection with, or during negotiations of, any merger, sale of Company assets, financing, or acquisition of all or a portion of Our business to another company.',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black, 
                      ),
                    ),
                  ],
                ),
              ),
              //11
              SizedBox(
                height: 20,
              ),

              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '• ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.black, 
                      ),
                    ),
                    TextSpan(
                      text: 'With Affiliates: ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.black, 
                      ),
                    ),
                    TextSpan(
                      text:
                          'We may share Your information with Our affiliates, in which case we will require those affiliates to honor this Privacy Policy. Affiliates include Our parent company and any other subsidiaries, joint venture partners or other companies that We control or that are under common control with Us.',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black, 
                      ),
                    ),
                  ],
                ),
              ),
              //12
              SizedBox(
                height: 20,
              ),

              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '• ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.black, 
                      ),
                    ),
                    TextSpan(
                      text: 'With business partners: ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.black, 
                      ),
                    ),
                    TextSpan(
                      text:
                          'We may share Your information with Our business partners to offer You certain products, services or promotions.',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black, 
                      ),
                    ),
                  ],
                ),
              ),
              //13
              SizedBox(
                height: 20,
              ),

              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '• ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.black, 
                      ),
                    ),
                    TextSpan(
                      text: 'With other users: ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.black, 
                      ),
                    ),
                    TextSpan(
                      text:
                          'when You share personal information or otherwise interact in the public areas with other users, such information may be viewed by all users and may be publicly distributed outside. If You interact with other users or register through a Third-Party Social Media Service, Your contacts on the Third-Party Social Media Service may see Your name, profile, pictures and description of Your activity. Similarly, other users will be able to view descriptions of Your activity, communicate with You and view Your profile.',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black, 
                      ),
                    ),
                  ],
                ),
              ),
              //14
              SizedBox(
                height: 20,
              ),

              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '• ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.black, 
                      ),
                    ),
                    TextSpan(
                      text: 'With Your consent: ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.black, 
                      ),
                    ),
                    TextSpan(
                      text:
                          'We may disclose Your personal information for any other purpose with Your consent.',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black, 
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Retention of Your Personal Data ",
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "The Company will retain Your Personal Data only for as long as is necessary for the purposes set out in this Privacy Policy. We will retain and use Your Personal Data to the extent necessary to comply with our legal obligations (for example, if we are required to retain your data to comply with applicable laws), resolve disputes, and enforce our legal agreements and policies.",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "The Company will also retain Usage Data for internal analysis purposes. Usage Data is generally retained for a shorter period of time, except when this data is used to strengthen the security or to improve the functionality of Our Service, or We are legally obligated to retain this data for longer time periods.",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Transfer of Your Personal Data",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Your information, including Personal Data, is processed at the Company's operating offices and in any other places where the parties involved in the processing are located. It means that this information may be transferred to — and maintained on — computers located outside of Your state, province, country or other governmental jurisdiction where the data protection laws may differ than those from Your jurisdiction.",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Your consent to this Privacy Policy followed by Your submission of such information represents Your agreement to that transfer.",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "The Company will take all steps reasonably necessary to ensure that Your data is treated securely and in accordance with this Privacy Policy and no transfer of Your Personal Data will take place to an organization or a country unless there are adequate controls in place including the security of Your data and other personal information.",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Delete Your Personal Data ",
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "You have the right to delete or request that We assist in deleting the Personal Data that We have collected about You.",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Our Service may give You the ability to delete certain information about You from within the Service.",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "You may update, amend, or delete Your information at any time by signing in to Your Account, if you have one, and visiting the account settings section that allows you to manage Your personal information. You may also contact Us to request access to, correct, or delete any personal information that You have provided to Us.",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Please note, however, that We may need to retain certain information when we have a legal obligation or lawful basis to do so.",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Disclosure of Your Personal Data ",
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Business Transactions ",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "If the Company is involved in a merger, acquisition or asset sale, Your Personal Data may be transferred. We will provide notice before Your Personal Data is transferred and becomes subject to a different Privacy Policy.",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Law enforcement ",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Under certain circumstances, the Company may be required to disclose Your Personal Data if required to do so by law or in response to valid requests by public authorities (e.g. a court or a government agency).",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Other legal requirements  ",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "The Company may disclose Your Personal Data in the good faith belief that such action is necessary to:",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              //1
              SizedBox(
                height: 20,
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '• ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.black, 
                      ),
                    ),
                    TextSpan(
                      text: "Comply with a legal obligation",
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black, 
                      ),
                    ),
                  ],
                ),
              ),
              //2
              SizedBox(
                height: 20,
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '• ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.black, 
                      ),
                    ),
                    TextSpan(
                      text:
                          "Protect and defend the rights or property of the Company",
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black, 
                      ),
                    ),
                  ],
                ),
              ),
              //3
              SizedBox(
                height: 20,
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '• ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.black, 
                      ),
                    ),
                    TextSpan(
                      text:
                          "Prevent or investigate possible wrongdoing in connection with the Service",
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black, 
                      ),
                    ),
                  ],
                ),
              ),
              //4
              SizedBox(
                height: 20,
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '• ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.black, 
                      ),
                    ),
                    TextSpan(
                      text:
                          "Protect the personal safety of Users of the Service or the public",
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black, 
                      ),
                    ),
                  ],
                ),
              ),
              //5
              SizedBox(
                height: 20,
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '• ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.black, 
                      ),
                    ),
                    TextSpan(
                      text: "Protect against legal liability",
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black, 
                      ),
                    ),
                  ],
                ),
              ),
              //1
              SizedBox(
                height: 20,
              ),

              Text(
                "Security of Your Personal Data ",
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "The security of Your Personal Data is important to Us, but remember that no method of transmission over the Internet, or method of electronic storage is 100% secure. While We strive to use commercially acceptable means to protect Your Personal Data, We cannot guarantee its absolute security.",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),

              //2
              SizedBox(
                height: 20,
              ),

              Text(
                "Children's Privacy ",
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Our Service does not address anyone under the age of 13. We do not knowingly collect personally identifiable information from anyone under the age of 13. If You are a parent or guardian and You are aware that Your child has provided Us with Personal Data, please contact Us. If We become aware that We have collected Personal Data from anyone under the age of 13 without verification of parental consent, We take steps to remove that information from Our servers.",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "If We need to rely on consent as a legal basis for processing Your information and Your country requires consent from a parent, We may require Your parent's consent before We collect and use that information.",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              //3
              SizedBox(
                height: 20,
              ),

              Text(
                "Links to Other Websites ",
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Our Service may contain links to other websites that are not operated by Us. If You click on a third party link, You will be directed to that third party's site. We strongly advise You to review the Privacy Policy of every site You visit.",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "We have no control over and assume no responsibility for the content, privacy policies or practices of any third party sites or services.",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              //4
              SizedBox(
                height: 20,
              ),

              Text(
                "Changes to this Privacy Policy ",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "We may update Our Privacy Policy from time to time. We will notify You of any changes by posting the new Privacy Policy on this page.",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'We will let You know via email and/or a prominent notice on Our Service, prior to the change becoming effective and update the "Last updated" date at the top of this Privacy Policy.',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "You are advised to review this Privacy Policy periodically for any changes. Changes to this Privacy Policy are effective when they are posted on this page.",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              //5
              SizedBox(
                height: 20,
              ),

              Text(
                "Contact Us ",
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "If you have any questions about this Privacy Policy, You can contact us:",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, 
                ),
              ),
              
            ],
          ),
        ),
      )

         

          ),
    );
  }
}
