import 'bootstrap';
import * as Amber from 'amber';

window._ = {};
_.amber = function(){return Amber }

if(window.location.pathname==="/chat") {
    let socket = new Amber.Socket('/chat');
    let submit_chat = document.querySelector("#chatbox-form-submit")
    let message_chat = document.querySelector("#chatbox-message")

    socket.connect().then(function () {
        let channel = socket.channel('chat_room:hello');

        const pushMsgFun = function (event) {
            event.preventDefault()
            channel.push('message_new', {message: message_chat.value})
            message_chat.value=""
        }
        submit_chat.addEventListener("click",pushMsgFun)


        channel.join();

        channel.push('message_new', {
            message: "Hello Amber from WebSocket Client!"
        });

        channel.on('message_new', function (payload) {
            console.log("BC:", payload);
        });
    });

}