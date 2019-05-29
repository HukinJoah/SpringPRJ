package poly.persistance.mapper;

import java.util.List;

import config.Mapper;
import poly.dto.UsrDTO;

@Mapper("UsrMapper")
public interface UsrMapper {

	int usrRegProc(UsrDTO uDTO) throws Exception;

	UsrDTO loginProc(UsrDTO uDTO) throws Exception;

	int deleteUsr(UsrDTO uDTO) throws Exception;

	List<UsrDTO> getusrList() throws Exception;

	UsrDTO getusrProfile(UsrDTO uDTO) throws Exception;

	int idChk(String usrID) throws Exception;

	
}
