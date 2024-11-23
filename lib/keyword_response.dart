// keyword_response.dart

// Define your keywords
final List<String> keywords = [
  'anxiety', 'depression', 'stress', 'mental health', 'panic attack', 'self-care', 'therapy', 'meditation', 'coping mechanisms',
  'burnout', 'insomnia', 'loneliness', 'anger management', 'PTSD', 'bipolar disorder', 'OCD', 'eating disorder', 'self-esteem',
  'social anxiety', 'grief', 'support groups', 'suicidal thoughts', 'mindfulness', 'psychologist', 'counselor', 'emotional well-being',
  'mental health apps', 'healthy habits', 'dealing with change', 'self-compassion', 'boundaries', 'overthinking', 'work-life balance',
  'relaxation techniques', 'journaling', 'gratitude', 'negative thoughts', 'sleep hygiene', 'addiction', 'substance abuse',
  'fear of failure', 'trauma', 'emotional intelligence', 'ADHD', 'schizophrenia', 'self-isolation', 'fear of rejection', 'forgiveness',
  'relationship problems', 'empathy', 'assertiveness', 'negative self-talk', 'cognitive behavioral therapy', 'psychotherapy',
  'medication for mental health', 'mental health awareness', 'how to reduce stress', 'how to deal with depression', 'relaxation tips',
  'what is therapy', 'how to calm down', 'how to manage anxiety', 'how to meditate', 'mental health hotline', 'crisis hotline',
  'mental health stigma', 'life purpose', 'how to build confidence', 'how to boost self-esteem', 'what is anxiety', 'what is depression',
  'how to deal with trauma', 'how to deal with grief', 'dealing with loss', 'fear of public speaking', 'relationship anxiety',
  'conflict resolution', 'communication skills', 'breathing exercises', 'progressive muscle relaxation', 'how to let go',
  'finding motivation', 'personal growth', 'how to set goals', 'how to manage time', 'perfectionism', 'self-improvement',
  'mental health tips', 'how to stay positive', 'emotional resilience', 'how to manage emotions', 'emotional support', 'therapy options',
  'mindfulness exercises', 'grounding techniques', 'what is mindfulness', 'how to stop overthinking', 'managing negative emotions',
  'feeling overwhelmed', 'managing pressure', 'emotional burnout', 'what is burnout', 'why do I feel tired', 'how to get better sleep',
  'dealing with insomnia', 'how to relax', 'understanding emotions', 'mental health resources', 'talking to a therapist',
  'how to express emotions', 'how to cope with sadness', 'feeling down', 'feeling lost', 'how to manage anger', 'what is PTSD',
  'what is OCD', 'types of therapy', 'benefits of therapy', 'when to seek help', 'what is a counselor', 'life coach', 'mental wellness',
  'mental health check-up', 'feeling numb', 'feeling stuck', 'how to be more mindful', 'coping with anxiety', 'coping with stress',
  'how to manage work stress', 'stress at home', 'family stress', 'financial stress', 'how to calm anxiety', 'why do I feel anxious',
  'why do I feel sad', 'why do I feel stressed', 'coping with uncertainty', 'mental health myths', 'importance of self-care',
  'self-care tips', 'how to practice self-care', 'how to take a break', 'why self-care matters', 'importance of mental health',
  'mental health in the workplace', 'dealing with job stress', 'how to reduce anxiety', 'what is mental health', 'what is bipolar disorder',
  'how to get help for mental health', 'how to support a friend', 'how to help someone with anxiety', 'how to help someone with depression',
  'how to talk about mental health', 'mental health and relationships', 'managing emotional pain', 'dealing with fear', 'dealing with shame',
  'coping with guilt', 'how to handle rejection', 'how to accept failure', 'how to practice gratitude', 'what is emotional intelligence',
  'how to set boundaries', 'mental health recovery', 'how to improve well-being', 'how to deal with anger', 'mental health and exercise',
  'importance of physical activity', 'healthy eating and mental health', 'what is emotional resilience', 'what is emotional burnout',
  'managing family conflict', 'how to handle stress', 'importance of sleep', 'effects of stress on health', 'effects of anxiety',
  'how to build healthy habits', 'feeling unmotivated', 'how to deal with frustration', 'support for mental health', 'talking about mental health',
  'mental health and addiction', 'coping with addiction', 'how to quit smoking', 'what is self-harm', 'what is suicide prevention',
  'how to ask for help', 'mental health emergency', 'crisis support', 'how to improve focus', 'why do I feel empty', 'what is schizophrenia',
  'mental health blog', 'mental health articles', 'mental health books', 'how to deal with panic attacks', 'how to handle panic attacks',
  'dealing with childhood trauma', 'trauma recovery', 'emotional trauma', 'how to build resilience', 'how to be happier', 'mental health journey'
];

final List<String> responses = [
  'Anxiety is a common mental health condition. It\'s important to take steps like breathing exercises and grounding techniques to manage it.',
  'Depression is more than feeling down; it\'s a serious condition. Reach out to a professional for support.',
  'Stress can be overwhelming, but taking breaks, exercising, and mindfulness can help manage it.',
  'Mental health is as important as physical health. It encompasses emotional, psychological, and social well-being.',
  'Panic attacks can be intense. Focus on slow breathing and finding a calm space. Consider talking to a therapist.',
  'Self-care is about taking time to do things that help you live well and improve both your physical and mental health.',
  'Therapy can provide a safe space to talk and explore solutions to personal challenges.',
  'Meditation can be a powerful tool to reduce stress and improve mental well-being. Try practicing daily for a few minutes.',
  'Coping mechanisms such as exercise, journaling, or talking to a friend can help manage emotions during difficult times.',
  'Burnout is a state of physical or emotional exhaustion. Take breaks and prioritize rest to avoid it.',
  'Insomnia is a common issue. Practice good sleep hygiene, such as keeping a regular bedtime routine.',
  'Loneliness can affect mental health. Reaching out to others, even small interactions, can help reduce feelings of isolation.',
  'Anger management involves recognizing triggers and learning to express feelings in healthy ways.',
  'PTSD can develop after trauma. Therapy, including cognitive behavioral therapy (CBT), is an effective treatment option.',
  'Bipolar disorder involves extreme mood swings. Medication and therapy can help manage symptoms.',
  'Obsessive-compulsive disorder (OCD) involves repetitive thoughts and behaviors. Therapy can help reduce symptoms.',
  'Eating disorders are serious and can affect both physical and mental health. Professional treatment is essential.',
  'Building self-esteem takes time. Focus on your strengths, practice self-compassion, and avoid negative self-talk.',
  'Social anxiety can make interactions difficult. Gradual exposure to social situations and therapy can help.',
  'Grief is a natural response to loss. Everyone processes it differently; give yourself time and seek support if needed.',
  'Support groups can provide a safe space to share experiences with others facing similar challenges.',
  'If you\'re experiencing suicidal thoughts, reach out to a helpline or professional immediately. You are not alone.',
  'Mindfulness is the practice of being present in the moment. It can help reduce stress and increase awareness.',
  'A psychologist can provide therapy and support for mental health concerns. Seek one out if you need help.',
  'A counselor is a professional who can help you navigate emotional or mental health challenges.',
  'Emotional well-being is about managing your emotions effectively and finding balance in life.',
  'There are many mental health apps available to help with meditation, mindfulness, and relaxation.',
  'Building healthy habits can improve mental health over time. Start small, and be consistent.',
  'Change can be difficult to navigate. Practice patience with yourself and seek support if needed.',
  'Self-compassion involves treating yourself with kindness during difficult times. It is a key part of mental health.',
  'Setting boundaries is essential for maintaining healthy relationships and protecting your emotional energy.',
  'Overthinking can be exhausting. Try to focus on the present moment and practice mindfulness.',
  'Work-life balance is essential for preventing burnout and maintaining mental health. Set clear boundaries at work.',
  'Relaxation techniques, such as deep breathing and progressive muscle relaxation, can help reduce stress.',
  'Journaling can help process emotions and clarify thoughts. It\'s a great self-reflection tool.',
  'Practicing gratitude can improve mental health by focusing on the positive aspects of life.',
  'Negative thoughts can impact your mood. Challenge these thoughts with positive affirmations or reframing.',
  'Sleep hygiene includes maintaining a regular sleep schedule and creating a restful sleep environment.',
  'Addiction can affect mental health. Seek professional help if you or someone you know is struggling with addiction.',
  'Substance abuse can worsen mental health. It\'s important to reach out to support services for help.',
  'Fear of failure is common. Focus on the lessons learned from mistakes and view failure as a stepping stone.',
  'Trauma can leave emotional scars. Therapy can help process and heal from traumatic experiences.',
  'Emotional intelligence involves understanding and managing your emotions as well as recognizing the emotions of others.',
  'ADHD can affect focus and behavior. A combination of medication and therapy is often helpful.',
  'Schizophrenia is a serious mental illness. It\'s essential to seek professional help if you or someone you know is affected.',
  'Self-isolation can be a sign of declining mental health. Reach out to a trusted friend or professional if you feel isolated.',
  'Fear of rejection is natural, but it shouldn\'t prevent you from forming relationships. Practice self-compassion and openness.',
  'Forgiveness is a process that can help with emotional healing. It\'s about releasing resentment, not condoning behavior.',
  'Relationship problems can affect mental health. Open communication and seeking couples therapy can help.',
  'Empathy is the ability to understand and share the feelings of others. It\'s important for building strong relationships.',
  'Assertiveness is about communicating your needs and desires clearly and respectfully. Practice saying "no" when necessary.',
  'Negative self-talk can harm your self-esteem. Replace negative thoughts with positive affirmations.',
  'Cognitive behavioral therapy (CBT) is a highly effective form of therapy for various mental health conditions.',
  'Psychotherapy can help address deep-seated issues and improve mental well-being over time.',
  'Medication can be part of a mental health treatment plan. Talk to a healthcare provider for guidance.',
  'Mental health awareness is essential to reduce stigma and encourage people to seek help when needed.',
  'Reducing stress can involve a variety of techniques, such as relaxation, physical activity, and time management.',
  'Dealing with depression involves seeking support, practicing self-care, and considering therapy.',
  'Relaxation tips include practicing mindfulness, meditation, and deep breathing exercises.',
  'Therapy is a safe space to explore feelings and receive guidance from a mental health professional.',
  'Calming down in stressful situations can involve grounding techniques, deep breathing, and finding a quiet space.',
  'Anxiety management can include therapy, medication, mindfulness, and relaxation techniques.',
  'Meditation involves focusing your mind to achieve a state of calm and clarity. It\'s great for managing stress.',
  'Mental health hotlines provide immediate support for those in crisis. They are available 24/7.',
  'The stigma around mental health can prevent people from seeking help. It\'s important to challenge these misconceptions.',
  'Finding life purpose involves exploring your passions and aligning them with your values and strengths.',
  'Building confidence involves stepping out of your comfort zone and celebrating your achievements.',
  'Boosting self-esteem can involve practicing self-compassion and focusing on your strengths.',
  'Anxiety is a feeling of worry or fear that can be overwhelming. It\'s important to reach out for support when needed.',
  'Depression is more than feeling sad; it\'s a persistent feeling of emptiness or hopelessness. Therapy can help.',
  'Dealing with trauma can take time. Therapy, self-care, and support groups can aid in healing.',
  'Grief is a natural response to loss. Give yourself time to process emotions, and seek support if needed.',
  'Dealing with loss can be challenging. Surround yourself with supportive people and take things one day at a time.',
  'Fear of public speaking is common. Practice, preparation, and breathing exercises can help reduce anxiety.',
  'Relationship anxiety involves fear or worry in relationships. Open communication and therapy can help manage it.',
  'Conflict resolution involves finding solutions to disagreements in a healthy and constructive manner.',
  'Communication skills are essential for building strong relationships and resolving conflicts.',
  'Breathing exercises, such as deep breathing, can help reduce stress and promote relaxation.',
  'Progressive muscle relaxation involves tensing and relaxing different muscle groups to reduce stress and anxiety.',
  'Letting go of past hurts or regrets can free up mental space and emotional energy for growth.',
  'Finding motivation can be difficult during tough times. Break tasks into smaller steps and celebrate progress.',
  'Personal growth involves continuous learning and self-improvement to become the best version of yourself.',
  'Goal setting is a great way to stay focused and motivated. Set small, achievable goals to start with.',
  'Time management skills are essential for reducing stress and improving productivity. Prioritize your tasks and set clear boundaries.',
  'Perfectionism can lead to burnout and stress. Practice self-compassion and allow yourself to make mistakes.',
  'Self-improvement is an ongoing process of working on personal development and well-being.',
  'Mental health tips include practicing mindfulness, getting regular exercise, and seeking support when needed.',
  'Staying positive can be challenging, but practicing gratitude and surrounding yourself with supportive people can help.',
  'Emotional resilience is the ability to bounce back from adversity. It\'s a skill that can be developed over time.',
  'Managing emotions can involve learning to identify and express them in healthy ways. Journaling can help.',
  'Emotional support is essential during tough times. Reach out to trusted friends or a therapist.',
  'There are many therapy options available, from talk therapy to cognitive-behavioral therapy (CBT). Explore what works for you.',
  'Mindfulness exercises can help you stay grounded and reduce stress. Practice being present in the moment.',
  'Grounding techniques can help you stay present during moments of high anxiety or stress. Focus on your five senses.',
  'Mindfulness is the practice of paying attention to the present moment without judgment. It can help with stress and anxiety.',
  'Overthinking can create unnecessary stress. Try to stay focused on the present and challenge negative thoughts.',
  'Managing negative emotions involves recognizing them and finding healthy ways to cope, such as exercise or talking to someone.',
  'Feeling overwhelmed is common during stressful times. Break tasks into smaller steps and take things one at a time.',
  'Managing pressure involves practicing self-care and setting realistic expectations for yourself.',
  'Emotional burnout is a state of emotional exhaustion. Take breaks and prioritize self-care to prevent it.',
  'Burnout occurs when you feel overwhelmed and emotionally drained. Practice self-care and set boundaries to avoid it.',
  'Feeling tired all the time can be a sign of stress or burnout. Try improving your sleep routine and managing stress.',
  'Getting better sleep can improve mental health. Stick to a regular sleep schedule and create a calming bedtime routine.',
  'Insomnia can be managed by improving sleep hygiene, such as avoiding screens before bed and keeping a regular sleep routine.',
  'Relaxation is essential for mental health. Find activities that help you unwind, such as reading, meditating, or walking.',
  'Understanding your emotions can help you manage them more effectively. Try naming what you\'re feeling in the moment.',
  'There are many mental health resources available, including therapy, support groups, and hotlines. Don\'t hesitate to seek help.',
  'Talking to a therapist can provide you with new tools and perspectives to manage your mental health.',
  'Expressing emotions can be difficult, but it\'s important for emotional well-being. Practice sharing your feelings with someone you trust.',
  'Coping with sadness can involve self-care activities, talking to a friend, or seeking professional support.',
  'Feeling down happens to everyone. Take some time for self-care and reach out to others for support if needed.',
  'Feeling lost is common during challenging times. Take small steps toward your goals and seek support if needed.',
  'Managing anger involves recognizing triggers and finding healthy ways to express emotions, such as physical activity or journaling.',
  'Post-traumatic stress disorder (PTSD) can develop after a traumatic event. Therapy and support groups can help manage symptoms.',
  'Obsessive-compulsive disorder (OCD) involves repetitive thoughts and behaviors. Therapy, particularly CBT, can help.',
  'There are different types of therapy, including cognitive-behavioral therapy (CBT), talk therapy, and group therapy.',
  'Therapy can provide many benefits, such as improving emotional well-being and helping you manage stress.',
  'If you\'re feeling overwhelmed, it may be time to seek help from a mental health professional.',
  'A counselor can provide guidance and support for emotional or mental health concerns.',
  'A life coach can help you set and achieve personal goals while providing support and encouragement.',
  'Mental wellness involves maintaining a balanced state of emotional, psychological, and social well-being.',
  'A mental health check-up can help you assess your emotional and psychological health. It\'s just as important as physical check-ups.',
  'Feeling numb can be a sign of emotional burnout or depression. Reach out to a mental health professional if this persists.',
  'Feeling stuck can be frustrating. Try setting small, achievable goals to regain a sense of purpose.',
  'Mindfulness involves focusing on the present moment. It\'s a great way to reduce stress and improve mental well-being.',
  'Coping with anxiety can involve breathing exercises, mindfulness, and seeking professional support.',
  'Stress is a natural response to challenging situations. Managing stress involves setting boundaries and practicing relaxation techniques.',
  'Work stress can affect your mental health. Make sure to take breaks, set boundaries, and seek support if needed.',
  'Stress at home can arise from family dynamics, financial pressures, or other factors. Open communication and stress management techniques can help.',
  'Family stress can impact everyone in the household. Open communication and finding ways to support each other can help.',
  'Financial stress is common, especially during tough times. Consider seeking financial advice and focusing on managing stress.',
  'Calming anxiety can involve practicing mindfulness, breathing exercises, or seeking professional support.',
  'Anxiety can be overwhelming, but it\'s manageable. Consider seeking therapy or practicing relaxation techniques.',
  'Sadness is a normal human emotion. Allow yourself to feel it, but also seek support if it persists.',
  'Stress can build up over time. Regular self-care practices and relaxation techniques can help reduce stress levels.',
  'Uncertainty can be challenging to cope with. Focus on what you can control and take things one step at a time.',
  'There are many mental health myths, such as the idea that mental health issues are a sign of weakness. It\'s important to challenge these misconceptions.',
  'Self-care is important for maintaining mental health. Take time each day for activities that bring you joy and relaxation.',
  'Self-care tips include practicing mindfulness, getting regular exercise, and setting healthy boundaries.',
  'Practicing self-care can improve your mental health. Set aside time each day for relaxation and stress-relief activities.',
  'Taking a break is essential for preventing burnout and improving mental well-being. Rest and relaxation are key.',
  'Self-care is an important part of mental health. It involves taking time to care for your physical, emotional, and mental well-being.',
  'Mental health matters just as much as physical health. It\'s important to prioritize your mental well-being.',
  'Mental health in the workplace can affect productivity and overall well-being. Encourage a supportive work environment.',
  'Job stress can be overwhelming. It\'s important to set boundaries, take breaks, and seek support if needed.',
  'Reducing anxiety involves practicing relaxation techniques, exercising, and seeking support from a therapist if needed.',
  'Mental health encompasses emotional, psychological, and social well-being. It affects how we think, feel, and behave.',
  'Bipolar disorder involves extreme mood swings. Therapy and medication can help manage the condition.',
  'If you\'re struggling with mental health, don\'t hesitate to ask for help. Reach out to a professional or a trusted friend.',
  'Supporting a friend with mental health challenges involves being a good listener and encouraging them to seek professional help.',
  'If someone you know is struggling with anxiety, encourage them to seek professional help and be there to listen without judgment.',
  'If someone is struggling with depression, offer support by listening and encouraging them to seek professional help.',
  'Talking about mental health can be difficult, but it\'s important for breaking the stigma and getting the help you need.',
  'Mental health can impact relationships. Open communication and setting healthy boundaries are essential for maintaining well-being.',
  'Managing emotional pain can involve self-care, seeking therapy, and reaching out for support from loved ones.',
  'Fear can be a natural response to uncertainty. Focus on what you can control and take steps to manage it.',
  'Shame can be a powerful emotion. Reach out for support from a therapist or a trusted friend if you\'re struggling with it.',
  'Coping with guilt can involve acknowledging mistakes, making amends, and practicing self-compassion.',
  'Handling rejection involves recognizing that it\'s a part of life. Focus on your strengths and seek support from others.',
  'Accepting failure is part of personal growth. It provides an opportunity to learn and improve.',
  'Practicing gratitude involves focusing on the positive aspects of life. It can improve mood and overall well-being.',
  'Emotional intelligence involves understanding and managing your emotions effectively. It\'s key to building strong relationships.',
  'Setting boundaries is important for protecting your mental health and maintaining healthy relationships.',
  'Mental health recovery is a journey. It involves patience, support, and self-care practices.',
  'Improving well-being involves practicing self-care, seeking support, and staying connected with others.',
  'Managing anger involves recognizing triggers and finding healthy ways to express emotions, such as physical activity or journaling.',
  'Exercise is a great way to improve mental health. Physical activity releases endorphins, which boost mood.',
  'Physical activity is essential for both mental and physical health. Aim for regular exercise to improve well-being.',
  'Healthy eating can positively impact mental health. A balanced diet supports brain function and mood stability.',
  'Emotional resilience is the ability to bounce back from adversity. It can be developed through practice and support.',
  'Emotional burnout occurs when you\'re emotionally exhausted. It\'s important to take breaks and practice self-care.',
  'Family conflict can be stressful. Practice open communication and seek help from a therapist if needed.',
  'Handling stress involves practicing relaxation techniques, setting boundaries, and taking time for self-care.',
  'Sleep is essential for mental health. Aim for 7-9 hours of quality sleep each night to improve well-being.',
  'Stress can have negative effects on physical health. It\'s important to practice relaxation techniques to manage stress levels.',
  'Chronic anxiety can affect overall health. Consider seeking therapy to address the root cause and learn coping strategies.',
  'Building healthy habits involves consistency and patience. Start small and make changes that are sustainable.',
  'Feeling unmotivated can be a sign of burnout. Take time to rest and focus on self-care.',
  'Dealing with frustration involves recognizing the source of frustration and finding healthy ways to cope.',
  'Mental health support can come from friends, family, and professionals. Don\'t hesitate to reach out for help.',
  'Talking about mental health can help reduce stigma and encourage others to seek help when needed.',
  'Addiction can affect mental health. Professional support and therapy are important for recovery.',
  'Coping with addiction involves seeking professional help and building a support network of friends and family.',
  'Quitting smoking can improve both physical and mental health. Consider seeking support from a therapist or a quitline.',
  'Self-harm is a sign of emotional distress. It\'s important to seek professional help to address the underlying issues.',
  'Suicide prevention is about recognizing the warning signs and providing support. Reach out for help if you or someone you know is struggling.',
  'Asking for help is a sign of strength, not weakness. Don\'t hesitate to reach out to a friend, family member, or professional.',
  'In a mental health emergency, it\'s important to seek immediate help from a crisis hotline or emergency services.',
  'Crisis support is available through hotlines, therapy, and support groups. Don\'t hesitate to seek help when needed.',
  'Improving focus can involve practicing mindfulness, managing stress, and taking breaks when needed.',
  'Feeling empty can be a sign of depression. Reach out for support from a mental health professional if needed.',
  'Schizophrenia is a serious mental health condition that affects how a person thinks, feels, and behaves. Professional help is essential.',
  'Mental health blogs can provide valuable information and support. Consider following trusted sources for mental health tips.',
  'Mental health articles can provide insights into managing stress, anxiety, depression, and other conditions.',
  'Mental health books can offer support and guidance on managing mental health challenges. Consider reading widely.',
  'Panic attacks can be overwhelming. Focus on breathing exercises and grounding techniques to manage them.',
  'Handling panic attacks involves recognizing the signs early and practicing calming techniques, such as deep breathing.',
  'Childhood trauma can affect mental health later in life. Therapy can help you process and heal from traumatic experiences.',
  'Trauma recovery involves taking time to heal, practicing self-care, and seeking professional support if needed.',
  'Emotional trauma can affect your mental health. Consider talking to a therapist to work through your feelings.',
  'Building resilience involves practicing self-care, learning from challenges, and seeking support when needed.',
  'Happiness is a journey. Focus on small moments of joy and practice gratitude to improve your mood.',
  'Your mental health journey is unique. Be patient with yourself and seek support along the way.'
];

// Default response for unrecognized input
final String defaultResponse = "Sorry, I didn't understand that. Could you please rephrase?";