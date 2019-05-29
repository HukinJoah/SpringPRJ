package poly.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import poly.dto.UsrDTO;
import poly.persistance.mapper.UsrMapper;
import poly.service.IUsrService;

@Service("UsrService")
public class UsrService implements IUsrService{
	
	@Resource(name="UsrMapper")
	private UsrMapper usrMapper;

	@Override
	public int usrRegProc(UsrDTO uDTO) throws Exception {
		// TODO Auto-generated method stub
		return usrMapper.usrRegProc(uDTO);
	}

	@Override
	public UsrDTO loginProc(UsrDTO uDTO) throws Exception {
		// TODO Auto-generated method stub
		return usrMapper.loginProc(uDTO);
	}

	@Override
	public int deleteUsr(UsrDTO uDTO) throws Exception {
		// TODO Auto-generated method stub
		return usrMapper.deleteUsr(uDTO);
	}

	@Override
	public List<UsrDTO> getusrList() throws Exception {
		// TODO Auto-generated method stub
		return usrMapper.getusrList();
	}

	@Override
	public UsrDTO getusrProfile(UsrDTO uDTO) throws Exception {
		// TODO Auto-generated method stub
		return usrMapper.getusrProfile(uDTO);
	}

	@Override
	public int idChk(String usrID) throws Exception {
		// TODO Auto-generated method stub
		return usrMapper.idChk(usrID);
	}


	
}
