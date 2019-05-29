package poly.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.cglib.transform.impl.AddDelegateTransformer;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import poly.dto.UsrDTO;
import poly.service.IUsrService;
import poly.service.impl.UsrService;
import poly.util.CmmUtil;

/*
 * Controller 선언해야만 Spring 프레임워크에서 Controller인지 인식 가능
 * 자바 서블릿 역할 수행
 * */

@Controller
@RequestMapping("/usr")
public class UsrController {
	private Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name = "UsrService")
	private IUsrService usrService;
	
	@RequestMapping(value="/register")
	public String main(HttpServletRequest request, HttpServletResponse response, Model model, HttpSession session) throws Exception{
		
		log.info("회원가입");
		return "/user/register";
	}
	
	@RequestMapping(value="/regProc")
	public String usrRegProc(HttpServletRequest request, HttpServletResponse response, Model model, HttpSession session) throws Exception{		log.info("회원가입시도");
		log.info("회원가입 시도");
		String usrName = request.getParameter("usrName");
		log.info(usrName);
		String usrID = request.getParameter("usrID");
		log.info(usrID);
		String usrPW = request.getParameter("usrPW");
		String usrEmail = request.getParameter("usrEmail");
		String usrHPNum = request.getParameter("usrHPNum");
		
		UsrDTO uDTO = new UsrDTO();
		uDTO.setUsrName(usrName);
		uDTO.setUsrID(usrID);
		uDTO.setUsrPW(usrPW);
		uDTO.setUsrEmail(usrEmail);
		uDTO.setUsrHPNum(usrHPNum);
		
		int result = usrService.usrRegProc(uDTO);
		String msg = "";
		String url = "";
		if(result==1)
		{
			msg = "회원가입에 성공하였습니다.";
			url = "/login.do";
		}
		else
		{
			msg = "회원가입에 실패하였습니다.";
			url = "/usr/register.do";
		}
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		log.info("회원가입 종료");
		
		return "/alert";
	}
	
	
	
	
	@RequestMapping(value="/profile")
	public String usrProfile(HttpServletRequest request, HttpServletResponse response, Model model, HttpSession session) throws Exception{
		
		log.info("프로필");
		String usrID = request.getParameter("usrID");
		log.info(usrID);
		UsrDTO uDTO = new UsrDTO();
		uDTO.setUsrID(usrID);
		
		
		uDTO=usrService.getusrProfile(uDTO);
		
		log.info(uDTO.getUsrEmail());
		log.info(uDTO.getUsrIntro());
		
		model.addAttribute("uDTO", uDTO);
		
		
		return "/user/usrProfile";
	}
	
	@RequestMapping(value="/list")
	public String usrList(HttpServletRequest request, HttpServletResponse response, Model model, HttpSession session) throws Exception{
		
		List<UsrDTO> uList = new ArrayList<>();
		uList = usrService.getusrList();
		model.addAttribute("uList", uList);
		return "/user/usrList";
	}
	
	
	
	@RequestMapping(value="deleteUsr")
	public String deleteUsr(HttpServletRequest request, HttpServletResponse response, Model model, HttpSession session) throws Exception{
		
		log.info("회원탈퇴");
		String usrID = request.getParameter("usrID");
		log.info(usrID);
		
		UsrDTO uDTO = new UsrDTO();
		uDTO.setUsrID(usrID);
		
		int result = usrService.deleteUsr(uDTO);
		
		String msg = "";
		String url = "";
		
		if(result == 1)
		{
			msg = "탈퇴되었습니다.";
			url = "/home.do";
			model.addAttribute("msg", msg);
			model.addAttribute("url", url);
			session.invalidate();
		}
		else
		{
			msg = "탈퇴에 실패하였습니다.";
			url = "/usr/profile.do?usrID="+uDTO.getUsrID();
		}
		return "/alert";
	}
}
