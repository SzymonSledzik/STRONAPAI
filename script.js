let bubbleSort = (inputArr) => {
    let len = inputArr.length;
    for (let i = 0; i < len; i++) {
        for (let j = 0; j < len; j++) {
            if (inputArr[j] > inputArr[j + 1]) {
                let tmp = inputArr[j];
                inputArr[j] = inputArr[j + 1];
                inputArr[j + 1] = tmp;
            }
        }
    }
    return inputArr;
};

function checkWynikKSMIT() {
    var k1 = document.getElementById("k1").value;
    var k2 = document.getElementById("k2").value;
    var k3 = document.getElementById("k3").value;
    var k4 = document.getElementById("k4").value;
    var k5 = document.getElementById("k5").value;
    var k6 = document.getElementById("k6").value;
    var k7 = document.getElementById("k7").value;
    var k8 = document.getElementById("k8").value;
    var k9 = document.getElementById("k9").value;
    var k10 = document.getElementById("k10").value;

    var k = 0;

    if (k1.checked == true) { k += 1; }
    if (k2.checked == true) { k += 1; }
    if (k3.checked == true) { k += 1; }
    if (k4.checked == true) { k += 1; }
    if (k5.checked == true) { k += 1; }
    if (k6.checked == true) { k += 1; }
    if (k7.checked == true) { k += 1; }
    if (k8.checked == true) { k += 1; }
    if (k9.checked == true) { k += 1; }
    if (k10.checked == true) { k += 1; }

    var s1 = document.getElementById("s1").value;
    var s2 = document.getElementById("s2").value;
    var s3 = document.getElementById("s3").value;
    var s4 = document.getElementById("s4").value;
    var s5 = document.getElementById("s5").value;
    var s6 = document.getElementById("s6").value;
    var s7 = document.getElementById("s7").value;
    var s8 = document.getElementById("s8").value;
    var s9 = document.getElementById("s9").value;
    var s10 = document.getElementById("s10").value;

    var s = 0;

    if (s1.checked == true) { s += 1; }
    if (s2.checked == true) { s += 1; }
    if (s3.checked == true) { s += 1; }
    if (s4.checked == true) { s += 1; }
    if (s5.checked == true) { s += 1; }
    if (s6.checked == true) { s += 1; }
    if (s7.checked == true) { s += 1; }
    if (s8.checked == true) { s += 1; }
    if (s9.checked == true) { s += 1; }
    if (s10.checked == true) { s += 1; }


    var i1 = document.getElementById("i1").value;
    var i2 = document.getElementById("i2").value;
    var i3 = document.getElementById("i3").value;
    var i4 = document.getElementById("i4").value;
    var i5 = document.getElementById("i5").value;
    var i6 = document.getElementById("i6").value;
    var i7 = document.getElementById("i7").value;
    var i8 = document.getElementById("i8").value;
    var i9 = document.getElementById("i9").value;
    var i10 = document.getElementById("i10").value;

    var i = 0;

    if (i1.checked == true) { i += 1; }
    if (i2.checked == true) { i += 1; }
    if (i3.checked == true) { i += 1; }
    if (i4.checked == true) { i += 1; }
    if (i5.checked == true) { i += 1; }
    if (i6.checked == true) { i += 1; }
    if (i7.checked == true) { i += 1; }
    if (i8.checked == true) { i += 1; }
    if (i9.checked == true) { i += 1; }
    if (i10.checked == true) { i += 1; }

    var m1 = document.getElementById("m1").value;
    var m2 = document.getElementById("m2").value;
    var m3 = document.getElementById("m3").value;
    var m4 = document.getElementById("m4").value;
    var m5 = document.getElementById("m5").value;
    var m6 = document.getElementById("m6").value;
    var m7 = document.getElementById("m7").value;
    var m8 = document.getElementById("m8").value;
    var m9 = document.getElementById("m9").value;
    var m10 = document.getElementById("m10").value;

    var m = 0;

    if (m1.checked == true) { m += 1; }
    if (m2.checked == true) { m += 1; }
    if (m3.checked == true) { m += 1; }
    if (m4.checked == true) { m += 1; }
    if (m5.checked == true) { m += 1; }
    if (m6.checked == true) { m += 1; }
    if (m7.checked == true) { m += 1; }
    if (m8.checked == true) { m += 1; }
    if (m9.checked == true) { m += 1; }
    if (m10.checked == true) { m += 1; }

    var t1 = document.getElementById("t1").value;
    var t2 = document.getElementById("t2").value;
    var t3 = document.getElementById("t3").value;
    var t4 = document.getElementById("t4").value;
    var t5 = document.getElementById("t5").value;
    var t6 = document.getElementById("t6").value;
    var t7 = document.getElementById("t7").value;
    var t8 = document.getElementById("t8").value;
    var t9 = document.getElementById("t9").value;
    var t10 = document.getElementById("t10").value;

    var t = 0;

    if (t1.checked == true) { t += 1; }
    if (t2.checked == true) { t += 1; }
    if (t3.checked == true) { t += 1; }
    if (t4.checked == true) { t += 1; }
    if (t5.checked == true) { t += 1; }
    if (t6.checked == true) { t += 1; }
    if (t7.checked == true) { t += 1; }
    if (t8.checked == true) { t += 1; }
    if (t9.checked == true) { t += 1; }
    if (t10.checked == true) { t += 1; }


    for (var x = 0; x <= 5; x++) {
        console.log(inputArr[x]);
    }

}
function checkWynik() {

    var k1 = document.getElementById("k1").value;
    var k2 = document.getElementById("k2").value;
    var k3 = document.getElementById("k3").value;
    var k4 = document.getElementById("k4").value;
    var k5 = document.getElementById("k5").value;
    var k6 = document.getElementById("k6").value;
    var k7 = document.getElementById("k7").value;
    var k8 = document.getElementById("k8").value;
    var k9 = document.getElementById("k9").value;
    var k10 = document.getElementById("k10").value;
    var k11 = document.getElementById("k11").value;
    var k12 = document.getElementById("k12").value;
    var k13 = document.getElementById("k13").value;
    var k14 = document.getElementById("k14").value;
    var k15 = document.getElementById("k15").value;
    var k16 = document.getElementById("k16").value;
    var k17 = document.getElementById("k17").value;
    var k18 = document.getElementById("k18").value;
    var k19 = document.getElementById("k19").value;
    var k20 = document.getElementById("k20").value;
    var k21 = document.getElementById("k21").value;
    var k22 = document.getElementById("k22").value;
    var k23 = document.getElementById("k23").value;
    var k24 = document.getElementById("k24").value;
    var k25 = document.getElementById("k25").value;
    var k26 = document.getElementById("k26").value;

    var sum = k1 + k2 + k3 + k4 + k5 + k6 + k7 + k8 + k9 + k10 + k11 + k12 + k13 + k14 + k16 + k15 + k17 + k18 + k19 + k20 + k21 + k22 + k23 + k24 + k25 + k26;

    if (sum >= 35) {
        alert(">35");
    }
    if (sum <= 34 && sum >= 17) {
        alert(">17");
    }
    if (sum <= 16) {
        alert("<17");
    }
}

