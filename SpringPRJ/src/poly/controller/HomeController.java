package poly.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import poly.dto.UsrDTO;
import poly.service.IUsrService;
import poly.util.CmmUtil;

/*
 * Controller 선언해야만 Spring 프레임워크에서 Controller인지 인식 가능
 * 자바 서블릿 역할 수행
 * */
@Controller
public class HomeController {
	private Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name = "UsrService")
	private IUsrService usrService;
	
	@RequestMapping(value="home")
	public String main(HttpServletRequest request, HttpServletResponse response, Model model, HttpSession session) throws Exception{
		
		log.info("home");
		return "/home";
	}
	
	@RequestMapping(value="login")
	public String login(HttpServletRequest request, HttpServletResponse response, Model model, HttpSession session) throws Exception{
		
		log.info("로그인");
		return "/user/login";
	}
	
	@RequestMapping(value="loginProc")
	public String loginProc(HttpServletRequest request, HttpServletResponse response, Model model, HttpSession session) throws Exception{
		
		log.info("로그인시도");
		String usrID = request.getParameter("usrID");
		String usrPW = request.getParameter("usrPW");
		
		UsrDTO uDTO = new UsrDTO();
		uDTO.setUsrID(usrID);
		uDTO.setUsrPW(usrPW);
		UsrDTO uDTO2 = new UsrDTO();
		uDTO2 = usrService.loginProc(uDTO);
		
		String msg = "";
		String url = "";
		
		if(uDTO2 == null)
		{
			msg = "아이디 또는 비밀번호가 맞지 않습니다. 다시 한 번 더 입력해주세요.";
			url = "/login.do";
			model.addAttribute("msg", msg);
			model.addAttribute("url", url);
			return "/alert";
		}
		else
		{
			session.setAttribute("usrNo", uDTO2.getUsrNo());
			session.setAttribute("usrName", uDTO2.getUsrName());
			session.setAttribute("usrID", uDTO2.getUsrID());
			session.setAttribute("usrPW", uDTO2.getUsrPW());
			session.setAttribute("usrEmail", uDTO2.getUsrEmail());
			session.setAttribute("usrHPNum", uDTO2.getUsrHPNum());
			session.setAttribute("usrAdmin", uDTO2.getUsrAdmin());
			session.setAttribute("usrIntro", uDTO2.getUsrIntro());
			log.info(uDTO2.getUsrAdmin());
		}
		return "redirect:/home.do";
	}
	
	@RequestMapping(value="logout")
	public String logout(HttpServletRequest request, HttpServletResponse response, Model model, HttpSession session) throws Exception{
		log.info("로그아웃");
		session.invalidate();

		return "redirect:/home.do";
	}
	@RequestMapping(value="idChk") 
	@ResponseBody
	public void idChk(HttpServletRequest request, HttpServletResponse response, Model model, HttpSession session) throws Exception{
		log.info("중복체크 시도");
		String usrID = request.getParameter("usrID");
		log.info(usrID);
		
		int count = usrService.idChk(usrID);
		log.info("넘어옴");
		response.getWriter().println(count);
		
	}
	
}
