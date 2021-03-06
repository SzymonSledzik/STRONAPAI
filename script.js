function print_data() {
    $.getJSON("questions.json", function (data) {
        var holder = document.querySelector("#holder");

        //tablica z literami
        const array_with_char = ['K', 'S', 'M', 'I', 'T'];

        for (let i = 1; i <= 2; i++) {
            for (let z = 0; z < array_with_char.length; z++) {
                //create div
                let div = document.createElement("div");
                div.className = "div";
                holder.appendChild(div);

                //tworzenie paragrafu
                let p = document.createElement("p");
                //przypisywanie tekstu
                p.innerHTML = (data[array_with_char[z]][i]["Pytanie"]);
                //dodanie go do diva holder
                div.appendChild(p);



                //-------create checkboxs and labels-------

                //---true label---
                let true_label = document.createElement("label");
                //set for attr
                true_label.setAttribute("for", "true" + i + array_with_char[z]);
                //set innerHTML
                true_label.innerHTML = "Tak";
                //set className
                true_label.className = "label";
                //append label to div
                div.appendChild(true_label);

                //true checkbox
                let true_checkbox = document.createElement("input");
                //set id
                true_checkbox.id = "true" + i + array_with_char[z];
                //set attribute for checkbox
                true_checkbox.setAttribute("type", "radio");
                //set name
                true_checkbox.name = "checkbox" + i + array_with_char[z];
                //true_append checkbox into div
                div.appendChild(true_checkbox);


                //---false label---
                let false_label = document.createElement("label");
                //set for attr
                false_label.setAttribute("for", "false" + i + array_with_char[z]);
                //set innerHTML
                false_label.innerHTML = "Nie";
                //set className
                false_label.className = "label";
                //append label to div
                div.appendChild(false_label);

                //false checkbox
                let false_checkbox = document.createElement("input");
                //set id
                false_checkbox.id = "false" + i + array_with_char[z];
                //set attribute for checkbox
                false_checkbox.setAttribute("type", "radio");
                //set name
                false_checkbox.name = "checkbox" + i + array_with_char[z];
                //false_append checkbox into div
                div.appendChild(false_checkbox);
            }
        }

    });
}

function submit_data() {
    let points = {
        "K": 0,
        "S": 0,
        "M": 0,
        "I": 0,
        "T": 0
    };

    const array_with_char = ['K', 'S', 'M', 'I', 'T'];

    for (let i = 1; i <= 2; i++) {
        for (let z = 0; z < array_with_char.length; ++z) {
            if (document.querySelector("#true" + i + array_with_char[z]).checked) {
                points[array_with_char[z]] += 1;
            }
        }
    }

    console.log(points);
}


window.onload = function () {
    print_data();
}