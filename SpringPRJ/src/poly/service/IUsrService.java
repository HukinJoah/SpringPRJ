package poly.service;

import java.util.List;

import poly.dto.UsrDTO;

public interface IUsrService {

	int usrRegProc(UsrDTO uDTO) throws Exception;

	UsrDTO loginProc(UsrDTO uDTO) throws Exception;

	int deleteUsr(UsrDTO uDTO) throws Exception;

	List<UsrDTO> getusrList() throws Exception;

	UsrDTO getusrProfile(UsrDTO uDTO) throws Exception;

	int idChk(String usrID) throws Exception;

}
