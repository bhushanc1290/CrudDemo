package com.java.springboot.controller;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Collections;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.java.springboot.dao.TestDetailRepository;
import com.java.springboot.dao.UserRepository;
import com.java.springboot.entity.TestDetail;
import com.java.springboot.entity.User;

@Controller
public class UserController {

	@Autowired
	private TestDetailRepository testDetailRepository;

	@Autowired
	private UserRepository userRepository;

	@PostMapping(value = "/evaluate/spring/test")
	public String processSpringTest(@RequestParam("Question1") String question1,
			@RequestParam("Question2") String question2, @RequestParam("Question3") String question3,
			@RequestParam("Question4") String question4, @RequestParam("Question5") String question5,
			HttpSession session) {
		int totalMarks = 0;
		LocalDateTime lt = LocalDateTime.now();
		String date = lt.getDayOfMonth() + "-" + lt.getMonthValue() + "-" + lt.getYear() + " " + lt.getHour() + ":"
				+ lt.getMinute() + ":" + lt.getSecond();

		String[] answers = { "J2EE App Development Framework", "Inversion Of Control", "Aspect Oriented Programming",
				"Application Context", "Dispatcher Servlet" };
		if (question1.equals(answers[0])) {
			totalMarks = totalMarks + 10;
		}
		if (question2.equals(answers[1])) {
			totalMarks = totalMarks + 10;
		}
		if (question3.equals(answers[2])) {
			totalMarks = totalMarks + 10;
		}
		if (question4.equals(answers[3])) {
			totalMarks = totalMarks + 10;
		}
		if (question5.equals(answers[4])) {
			totalMarks = totalMarks + 10;
		}
		String email = (String) session.getAttribute("email");
		if (totalMarks >= 30) {
			TestDetail testDetail = new TestDetail(date, "Spring-L1", totalMarks, email, 50, "Passed");
			testDetailRepository.save(testDetail);
			return "successPage";
		} else {
			TestDetail testDetail = new TestDetail(date, "Spring-L1", totalMarks, email, 50, "Failed");
			testDetailRepository.save(testDetail);
			return "failure";
		}
	}

	@RequestMapping("/springAssessment")
	public String springAssessmentPage() {
		return "springAssessment";
	}

	@RequestMapping("/hibernateAssessment")
	public String hibernateAssessmentPage() {
		return "hibernateAssessment";
	}

	@PostMapping(value = "/registration/do")
	public ModelAndView register(@ModelAttribute User user) {
		ModelAndView modelAndView = new ModelAndView("confirmation");
		user.setUserType("candidate");
		User userdetail = userRepository.save(user);
		modelAndView.addObject("user", userdetail);
		return modelAndView;

	}

	@RequestMapping(value = "/evaluate/hibernate/test", method = RequestMethod.POST)
	public String processHibernateTest(@RequestParam("Question1") String question1,
			@RequestParam("Question2") String question2, @RequestParam("Question3") String question3,
			@RequestParam("Question4") String question4, @RequestParam("Question5") String question5,
			HttpSession session) {

		int total = 0;
		LocalDateTime lt = LocalDateTime.now();
		String date = lt.getDayOfMonth() + "-" + lt.getMonthValue() + "-" + lt.getYear() + " " + lt.getHour() + ":"
				+ lt.getMinute() + ":" + lt.getSecond();

		String[] answers = { "Object Relational Mapping", "uni-directional & bi-directional", "configuration file",
				"Hibernate Query Language", "isolation levels" };
		if (question1.equals(answers[0])) {
			total = total + 10;
		}
		if (question2.equals(answers[1])) {
			total = total + 10;
		}
		if (question3.equals(answers[2])) {
			total = total + 10;
		}
		if (question4.equals(answers[3])) {
			total = total + 10;
		}
		if (question5.equals(answers[4])) {
			total = total + 10;
		}
		String email = (String) session.getAttribute("email");
		if (total >= 30) {
			TestDetail testDetail = new TestDetail(date, "Hibernate-L1", total, email, 50, "Passed");
			testDetailRepository.save(testDetail);
			return "successPage";
		} else {
			TestDetail testDetail = new TestDetail(date, "Hibernate-L1", total, email, 50, "Failed");
			testDetailRepository.save(testDetail);
			return "failure";
		}
	}

	@RequestMapping(value = "/users/all")
	public ModelAndView getAllcandidateDetails() {

		ModelAndView model = new ModelAndView("listCandidate");
		Iterable<User> iterable = userRepository.findAll();
		ArrayList<User> al = new ArrayList<>();

		for (User td : iterable) {
			al.add(td);
		}
		Collections.sort(al, (s1, s2) -> s1.getFirstName().compareToIgnoreCase(s2.getFirstName()));
		model.addObject("lists", al);
		return model;

	}

	@RequestMapping(value = "/tests/all")
	public ModelAndView getAllTestDetails() {

		ModelAndView model = new ModelAndView("allTestDetails");
		Iterable<TestDetail> iterable = testDetailRepository.findAll();
		ArrayList<TestDetail> al = new ArrayList<>();

		for (TestDetail td : iterable) {
			al.add(td);
		}
		model.addObject("lists", al);
		return model;
	}
}
