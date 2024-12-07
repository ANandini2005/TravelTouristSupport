<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Travel and Tourism</title>
    <link rel="stylesheet" type="text/css" href="css/welcome.css">
    
    <script>
        function checkLogin() {
            alert('Please login to access this content.');
            window.location.href = "/index"; // Redirect to login page
        }

        // Scroll indicator function
        window.onscroll = function() {
            var scrollIndicator = document.documentElement.scrollTop / (document.documentElement.scrollHeight - window.innerHeight) * 100;
            document.documentElement.style.setProperty('--scroll-percent', scrollIndicator + '%');
        };

        // Smooth scroll function
        function smoothScroll(target) {
            document.querySelector(target).scrollIntoView({ behavior: 'smooth' });
        }

        // Dark mode toggle
        function toggleDarkMode() {
            document.body.classList.toggle('dark-mode');
        }

        // Subscription success message
        function showSuccessMessage() {
            alert("Thank you for subscribing to our newsletter!");
            closeModal(); // Close the modal after subscription
        }
    </script>
</head>
<body>
    <!-- Video Background -->
    <video autoplay muted loop id="backgroundVideo">
        <source src="images/v1.mp4" type="video/mp4">
        Your browser does not support HTML5 video.
    </video>
    <!-- Scroll indicator -->
    <div class="scroll-indicator"></div>

    <!-- Navigation Bar -->
    <header class="main-header">
        <h1>Travel and Tourism</h1>
        <div class="login-signup-buttons">
            <button onclick="window.location.href='/index';">Login</button>
            <button onclick="window.location.href='/signup';">Sign Up</button>
            <button onclick="toggleDarkMode()">Toggle Dark Mode</button>
        </div>
    </header>

    <!-- Parallax background section -->
    <section class="parallax"></section>

    <section class="main-content">
        <div id="about" class="scroll-content">
            <h2>🌍✨ Explore the World with Us! ✈️🌟</h2>
            <p>Discover the beauty of the world’s most famous travel destinations.Traveling is a beautiful escape from the ordinary, offering a chance to see the world from a new perspective. It is not just about visiting new places, but also about immersing yourself in different cultures, tasting new cuisines, and experiencing unforgettable adventures. 🌎💫 Whether you're exploring bustling cities, relaxing on sun-kissed beaches, hiking through lush forests, or stepping back in time by visiting historical landmarks, travel opens up a world full of opportunities to create memories that last a lifetime. 🏙️🌴
🌏 From the towering skyscrapers of New York 🗽 to the serene beauty of the Swiss Alps 🏔️, every destination has something unique to offer. One of the most rewarding aspects of travel is cultural immersion. 🕌🍛 It’s a chance to engage with traditions, customs, and languages that are completely different from your own. Whether it’s taking part in a traditional dance 🕺, savoring a local dish 🍽️, or learning a few words in a new language 💬, these experiences enrich your understanding of the world and make every trip memorable. The world is a mosaic of unique histories and stories, waiting for you to experience and learn from them.

Beyond the cultural experiences, travel 🌏❤️ is an opportunity for personal growth. 🌱💪 As you step out of your comfort zone and face new challenges—be it navigating through a foreign city 🗺️ or trying out an extreme sport like skydiving 🪂—you build resilience, confidence, and adaptability. Travel teaches you to be resourceful, flexible, and open-minded. 🧠✈️ Whether you're learning to communicate without a common language or managing your time to explore multiple destinations, these experiences shape you in ways that only travel can.

Furthermore, travel has the power to connect people.🌍🤝

While traveling, you also get the chance to enjoy some of the most awe-inspiring natural wonders on Earth 🌳🌊—from the majestic waterfalls of Iceland 🌋 to the clear blue waters of the Maldives 🌊. Nature's beauty has a way of leaving you in awe and reminding you of the planet's power and fragility. 🌱 As more people venture into these beautiful landscapes, it becomes increasingly important to embrace sustainable travel practices ♻️, ensuring that we leave the world as beautiful as we found it. Respecting local cultures, minimizing our environmental impact, and supporting eco-friendly businesses are just a few ways we can travel responsibly.

So, why wait? 🌟 The world is calling, and there’s no better time than now to explore it! 🌍✨ Whether you’re planning a weekend getaway 🏖️, a road trip with friends 🚗, or an international adventure 🌏, every journey is an opportunity to grow, learn, and connect. 🗺️👣 From the mountains 🏞️ to the oceans 🌊, the cities 🏙️ to the countryside 🌳, there’s a whole world out there waiting for you to discover. 🌟 So, pack your bags 🎒, put on your adventure shoes 👟, and set off on the greatest journey of all—exploring the world with us! ✈️🌍</p>
            <a href="#" onclick="checkLogin()">Explore Destinations</a>
            <p>Our travel and tourism services provide the best options for...</p>
            <p>We offer a variety of tours, from relaxing beach holidays to exciting adventures.</p>
            <a href="#" onclick="checkLogin()">Best Time to Travel</a>
        </div>

        <!-- Image Gallery with Carousel -->
        <div class="image-gallery">
            <img src="images/des1.webp" alt="Destination 1">
            <img src="images/des2.jpg" alt="Destination 2">
            <img src="images/des3.jpg" alt="Destination 3">
            <img src="images/des4.jpg" alt="Destination 4">
        </div>

        <div class="scroll-content">
            <h2 id="services">Why Travel with Us?</h2>
            <p>We offer top-notch travel services, personalized itineraries, and unbeatable deals. Whether you're looking for a family vacation, a romantic getaway, or an adventure trip, we have something for everyone!When you choose to travel with us, you’re not just booking a trip—you’re embarking on an unforgettable adventure! 🌟 We offer personalized travel experiences that go beyond the typical tourist paths, taking you to hidden gems 🏞️, local hotspots 🏙️, and breathtaking destinations 🌅 that you'll cherish forever. Whether you’re looking to relax on a beach 🏖️, explore vibrant cities 🏙️, or immerse yourself in nature’s wonders 🌳, we have something for everyone.

Our team of experienced travel experts 🌍 ensures every detail of your journey is taken care of, so you can focus on making memories 🥳. We prioritize your comfort and safety, offering top-notch accommodations 🏨, seamless transportation 🚗, and handpicked activities 🏄‍♂️ to suit your interests. Plus, we’re committed to sustainability 🌱, promoting eco-friendly travel and responsible tourism.

With us, you’ll enjoy local experiences 🍲, meet new people 👫, and learn about diverse cultures 🕌. We believe travel should be stress-free and fun, with every moment filled with joy and discovery. 🎉 So, why wait? Pack your bags 🎒, and let us help you explore the world in the most unforgettable way possible! 🌍✈️</p>
            <a href="#" onclick="checkLogin()">See Our Services</a>
        </div>
    </section>

    <section id="testimonials" class="testimonials">
    <h2>What Our Travelers Say</h2>
    <div class="testimonial-slider-container">
      <%--  <button class="scroll-btn left" onclick="scrollTestimonials('left')">&#10094;</button>--%> 
        <div class="testimonial-slider">
            <div class="testimonial">
                <img src="images/av2.webp" alt="Sarah J" class="testimonial-avatar">
                <p>"The entire trip was magical! From seamless bookings to breathtaking destinations, everything was top-notch."</p>
                <p class="testimonial-name">- Sarah J.</p>
            </div>
            <div class="testimonial">
                <img src="images/av4.png" alt="Michael R" class="testimonial-avatar">
                <p>"Their service made my dream vacation a reality. Exceptional team and well-planned itineraries."</p>
                <p class="testimonial-name">- Michael R.</p>
            </div>
            <div class="testimonial">
                <img src="images/av1.webp" alt="Lina Seims" class="testimonial-avatar">
                <p>"An unforgettable journey! Every little detail was taken care of, making it a stress-free experience."</p>
                <p class="testimonial-name">- Lina Seims</p>
            </div>
            <div class="testimonial">
                <img src="images/av3.webp" alt="Cavin Venn" class="testimonial-avatar">
                <p>"The personalized recommendations were a game changer. Truly felt like a VIP throughout the trip."</p>
                <p class="testimonial-name">- Cavin Venn</p>
            </div>
            <div class="testimonial">
                <img src="images/av5.jpg" alt="Indhu" class="testimonial-avatar">
                <p>"Amazing service with attention to detail. Our family loved the planned excursions and comfortable stays."</p>
                <p class="testimonial-name">- Indhu</p>
            </div>
        </div>
      <%--  <button class="scroll-btn right" onclick="scrollTestimonials('right')">&#10095;</button>--%> 
    </div>
</section>




    <section id="faq" class="faq">
        <h2>Frequently Asked Questions</h2>
        <div class="faq-item">
            <h3 onclick="toggleFAQ(this)">What is the cancellation policy?</h3>
            <p class="faq-content">Our cancellation policy allows free cancellation up to 7 days before the travel date.</p>
        </div>
        <div class="faq-item">
            <h3 onclick="toggleFAQ(this)">Are meals included in the packages?</h3>
            <p class="faq-content">Yes, most packages include complimentary breakfast and dinner.</p>
        </div>
    </section>

    <div class="chatbot">
        <img src="images/chat.webp" alt="Chatbot Icon" onclick="openChatbot()">
    </div>
    <!-- Chatbot Window -->
<div id="chatbotWindow" style="display: none;">
    <div class="chatbot-header">
        <span>Chatbot</span>
        <span class="close" onclick="closeChatbot()">&times;</span>
    </div>
    <div class="chat-messages"></div>
    <div class="chat-input">
        <input type="text" placeholder="Type a message..." />
        <button>Send</button>
    </div>
</div>


   <%--<div id="newsletterModal" class="modal">
        <div class="modal-content">
            <span class="close" onclick="closeModal()">&times;</span>
            <h2>Stay Updated with Our Newsletter</h2>
            <p>Subscribe to get exclusive travel deals and updates!</p>
            <input type="email" placeholder="Your email address">
            <button onclick="showSuccessMessage()">Subscribe</button>
        </div>
    </div> --%>

    <script>
        function toggleFAQ(element) {
            var content = element.nextElementSibling;
            var isExpanded = content.style.display === "block";
            content.style.display = isExpanded ? "none" : "block";
            element.setAttribute("aria-expanded", !isExpanded);
        }


        // Modal logic
        var modal = document.getElementById("newsletterModal");
        function closeModal() { modal.style.display = "none"; }
        setTimeout(() => { modal.style.display = "block"; }, 5000); // Show after 5 seconds
    </script>
 <script>
    document.addEventListener("DOMContentLoaded", () => {
        const chatbotInput = document.querySelector("#chatbotWindow .chat-input input[type='text']");
        const sendButton = document.querySelector("#chatbotWindow .chat-input button");
        const chatbotMessages = document.querySelector("#chatbotWindow .chat-messages");

        // Options for the user to choose
        const options = [
            "1. What are your services?",
            "2. How can I contact support?",
            "3. What are your working hours?",
            "4. Where are you located?",
            "5. How do I reset my password?"
        ];

        // Automated greeting and options
        function showGreeting() {
            addMessage("Hi there! I'm your assistant bot. How can I help you today?", true);
            addMessage("Please choose an option or type your question:", true);
            options.forEach(option => addMessage(option, true));
        }

        // Function to add messages
        function addMessage(message, isBot = false) {
            const messageElement = document.createElement("div");
            messageElement.classList.add(isBot ? "bot-message" : "user-message");
            messageElement.textContent = message;
            chatbotMessages.appendChild(messageElement);
            chatbotMessages.scrollTop = chatbotMessages.scrollHeight; // Auto scroll to latest message
        }

        // Function to generate bot responses
        function generateBotResponse(userMessage) {
            if (userMessage.includes("1")) {
                return "We offer web development, app development, and IT consulting services.";
            } else if (userMessage.includes("2")) {
                return "You can contact support at support@example.com or call +1-800-123-4567.";
            } else if (userMessage.includes("3")) {
                return "Our working hours are Monday to Friday, 9 AM to 6 PM.";
            } else if (userMessage.includes("4")) {
                return "We are located at 123 Main Street, Cityville, Country.";
            } else if (userMessage.includes("5")) {
                return "To reset your password, go to the login page and click 'Forgot Password'.";
            } else {
                return "Sorry, I couldn't find an answer to your question. Please contact support at +1-800-123-4567.";
            }
        }

        // Event listener for send button
        sendButton.addEventListener("click", () => {
            const userMessage = chatbotInput.value.trim();
            if (userMessage) {
                addMessage(userMessage); // Add user message to chat
                chatbotInput.value = ""; // Clear input field

                // Simulate bot response after a short delay
                setTimeout(() => {
                    const botResponse = generateBotResponse(userMessage);
                    addMessage(botResponse, true); // Add bot message to chat
                }, 1000); // Bot response after 1 second
            }
        });

        // Event listener for enter key to send message
        chatbotInput.addEventListener("keypress", (event) => {
            if (event.key === "Enter") {
                sendButton.click();
            }
        });

        // Show greeting when chatbot is opened
        openChatbot = () => {
            document.getElementById('chatbotWindow').style.display = 'block';
            chatbotMessages.innerHTML = ""; // Clear old messages
            showGreeting(); // Show initial greeting and options
        };

        closeChatbot = () => {
            document.getElementById('chatbotWindow').style.display = 'none';
        };
    });
</script>