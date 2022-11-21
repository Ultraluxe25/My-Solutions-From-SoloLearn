function printTime() {
    let dateInfo = new Date();  // current time info
    
    let hours = dateInfo.getHours();
    let minutes = dateInfo.getMinutes();
    let seconds = dateInfo.getSeconds();
    
    console.log(hours + ":" + minutes + ":" + seconds);
}

setInterval(printTime, 10000);
