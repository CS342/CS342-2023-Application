import SwiftUI
import UIKit


struct AboutMeQuizView: View {
    @State private var currentQuestion = 0
    @State private var userAnswer = ""
    @State private var showResult = false
    @State private var isCorrect = false
    @State private var quizComplete = false
    @State private var correctAnswer = ""
    @State private var questions = ["What is my favorite food?", "What is my favorite hobby?", "What is my favorite book series?",
                                    "What is my favorite animal?", "What state am I from?"]
    @State private var answers = ["Sushi", "Sleeping", "Harry Potter", "Dog", "Ohio"]
    
    

    private func checkAnswer() {
        if userAnswer.lowercased() == answers[currentQuestion].lowercased() {
            isCorrect = true
        } else {
            isCorrect = false
            correctAnswer = answers[currentQuestion]
        }
        showResult = true
    }

    private func nextQuestion() {
        currentQuestion += 1
        if currentQuestion == questions.count {
            quizComplete = true
        }
        userAnswer = ""
        showResult = false
    }
    var body: some View {
        NavigationView {
            VStack {
                if currentQuestion < questions.count {
                    Text(questions[currentQuestion])
                        .font(.title)
                        .padding()
                    TextField("Enter your answer", text: $userAnswer)
                        .padding()
                    Button(action: checkAnswer) {
                        Text("Submit")
                    }
                    if showResult {
                        Text(isCorrect ? "Correct!" : "Incorrect. The correct answer is: \(correctAnswer)")
                            .font(.title)
                            .foregroundColor(isCorrect ? .green : .red)
                            .padding()
                    }
                    if showResult {
                        Button(action: nextQuestion) {
                            Text("Next")
                        }
                    }
                } else {
                    QuizCompleteView()
                }
            }.navigationBarTitle("", displayMode: .inline)
        }
    }
    struct QuizCompleteView: View {
        @Environment(\.presentationMode) var presentationMode
        var body: some View {
            VStack {
                Text("Quiz Complete!")
                    .font(.title)
                    .padding()
            }
        }
    }
}
