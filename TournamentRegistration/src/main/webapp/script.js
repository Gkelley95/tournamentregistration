
var result = false;

function validateInfo(){
	var count = 0;
	var teamError = "";
	var leaderError = "";
	var passwordError = "";
	var numOfMembersError = "";
	
	var teamName = document.forms["entryform"]["teamname"].value;
	if (teamName.length < 3){
		teamError = "Error: Team Name requires at least 3 Characters.";
		count--;
	}
	
	var leader = document.forms["entryform"]["leader"].value;
	if (!/^[a-zA-Z]+$/.test(leader)){
		leaderError = "Error: Leader requires only characters.";
		count--;
	}
	
	var password = document.forms["entryform"]["password"].value;
	if (password.length < 5){
		passwordError = "Error: Password needs at least five characters.";
		count--;
	}
	
	var numOfMembers = document.forms["entryform"]["numOfMembers"].value;
	if (!/^\d+$/.test(numOfMembers) || numOfMembers <= 0){
		numOfMembersError = "Error: Number Of Members requires only numbers and at least one member.";
		count--;
	}
	
	if (count == 0){
		result = true;
	} else {
		var ErrorMessage = teamError + "\n" + leaderError + "\n" + passwordError + "\n" + numOfMembersError;
		alert(ErrorMessage);
	}
	
	return result;
}