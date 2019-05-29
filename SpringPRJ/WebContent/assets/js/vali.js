/**
 * 
 */	

const tagSelect = {
		usrID : document.getElementById("usrID"),
		idChk :  document.getElementById("idChk")
}

		var blank = /[\s]/gi;
		var special = /[.`~!@\#$%<>^&*\()\-=+_\’:;]/gi;
		var korean = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힝]/gi;
	
		const valiError = {
				blank : function() {
					alert("공백은 사용할 수 없습니다.")
					return false;
				},
				special : function() {
					alert("특수문자는 사용할 수 없습니다.")
					return false;
				},
				korean : function() {
					alert("한글은 사용할 수 없습니다.")
					return false;
				},
				
		}
		
		const check = {
				valiCheck : function(param) {
					usrID = tagSelect.usrID.value;
				check.idCheckProc(usrID);
		},
			idCheckProc : function(usrID) {
			if(blank.test(usrID) == true)
			{
				tagSelect.usrID.value = "";
				valiError.blank()
			}
			
			if(special.test(usrID) == true)
			{
				tagSelect.usrID.value = "";
				valiError.special()
			}
			
			if(korean.test(usrID) == true)
			{
				tagSelect.usrID.value = "";
				valiError.korean()
			}
		}
		}
		
		
