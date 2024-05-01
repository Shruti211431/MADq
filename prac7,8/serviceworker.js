let deferredPrompt;
window.addEventListener('beforeinstallprompt',(event)=>{
event.preventDefault();
deferredPrompt = event;
showAddToHomeScreenButton();
});

function showAddToHomeScreenButton(){
const addToHomeScreenButton = document.getElementById('add-to-home-screen-button');
addToHomeScreenButton.style.display='block';
addToHomeScreenButton.addEventListener('click',()=>{
deferredPrompt.prompt();
deferredPrompt.userChoice.then((choiceResult)=>{
if(choiceResult.outcome==='accepted'){
console.log('User accepted A2HS');
}
else{
console.log('User rejected A2HS');
}
deferredPrompt = null;
});
});
}