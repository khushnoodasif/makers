function calculateDays() {
  var name = document.getElementById("name").value;
  var today = new Date();
  var bday = new Date(document.getElementById("bday").value); 
  var age = today.getFullYear() - bday.getFullYear();
  var month = today.getMonth() - bday.getMonth();

  if (month > 0 || (month === 0 && today.getDate() > bday.getDate())) {
    age++;
  }
  
  var upcomingBday = new Date(today.getFullYear(), bday.getMonth(), bday.getDate());
  
  if(today > upcomingBday) {
    upcomingBday.setFullYear(today.getFullYear()+1);
  }
  
  var one_day = 24 * 60 * 60 * 1000;
  
  var daysLeft = Math.ceil((upcomingBday.getTime() - today.getTime()) / (one_day));
  
  if (daysLeft && age < 200) {
    document.getElementById("days-left").innerText = name + ` In ${daysLeft} day(s), you will be ${age}!`; 
  } else {
    document.getElementById("days-left").innerText = "Please enter a valid birtday.";
  }
}