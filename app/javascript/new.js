var select = document.getElementById( 'month-category' );
select.onchange = function(){
    document.getElementById("speak_shift").textContent = `リストを作成してください!`;
    document.getElementById("shift_list").innerHTML = '<input type="text" name="name" id="list_input"><button id="add_button" onclick="buttonClick()">追加</button>'
    document.getElementById("shift_list").insertAdjacentHTML('beforeEnd', ` <button class="button" id="button" onclick="calender()">終了</button>`);
};

window.addEventListener("load", console.log("hello"));