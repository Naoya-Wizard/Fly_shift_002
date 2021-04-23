var select = document.getElementById( 'month-category' );
select.onchange = function(){
    document.getElementById("template").hidden = false;
    document.getElementById("speak_shift").hidden = false;
    document.getElementById("speak_shift").textContent = `シフトを1つずつ入力し、追加してください!`;
    document.getElementById("shift_list").innerHTML = '<input type="text" name="name" id="list_input" placeholder="例）日勤"><button id="add_button" onclick="buttonClick()">追加</button>'
    document.getElementById("shift_list").insertAdjacentHTML('beforeEnd', ` <button class="button" id="button" onclick="calender()">終了</button>`);
};

