/**
 * 
 */

const pageMove = {
	noitce:function(param){
		location.href="/notice/"+param+".do"
	},
	usr:function(param){
		location.href="/usr/"+param+".do"
		
	},
	single:function(param){
		location.href="/"+param+".do"
	},
	board:function(param){
		location.href="/board/"+param+".do"
	},
	singleUsrParam:function(url,param){
		location.href="/usr/"+url+".do?usrID="+param
	}
}