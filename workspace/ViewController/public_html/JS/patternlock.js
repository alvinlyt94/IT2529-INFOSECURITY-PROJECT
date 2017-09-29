var patternlock = {
    autoInit : true, autoSubmit : true, isdrawing : false, from : "", to : "", inputbox : "", startbutton : 0, init : function () {
        if (this.autoInit) {
            var pw = document.getElementsByTagName("input");
            for (var i = 0;i < pw.length;i++) {
                if (pw[i].className == 'patternlock') {
                    this.generate(pw[i]);
                }
//                if ((pw[i].type == 'submit') && (this.autoSubmit)) {
//                    pw[i].style.display = 'none';
//                }
            }
        }
    },
    generate : function (el) {
        this.inputbox = el;
        //el.style.display = 'none';
        var pel = el.parentNode;

        var patternTag = document.createElement("div");
        patternTag.className = "patternlockcontainer";

        var linesTag = document.createElement("div");
        linesTag.className = "patternlocklineshorizontalcontainer";
        var elid = ["12", "23", "45", "56", "78", "89"];
        for (var i = 0;i < 6;i++) {
            var lineTag = document.createElement("div");
            lineTag.className = "patternlocklinehorizontal";
            lineTag.id = "line" + elid[i];
            linesTag.appendChild(lineTag);
        }
        patternTag.appendChild(linesTag);

        var linesTag = document.createElement("div");
        linesTag.className = "patternlocklinesverticalcontainer";
        var elid = ["14", "25", "36", "47", "58", "69"];
        for (var i = 0;i < 6;i++) {
            var lineTag = document.createElement("div");
            lineTag.className = "patternlocklinevertical";
            lineTag.id = "line" + elid[i];
            linesTag.appendChild(lineTag);
        }
        patternTag.appendChild(linesTag);

        var linesTag = document.createElement("div");
        linesTag.className = "patternlocklinesdiagonalcontainer";
        var elid = ["24", "35", "57", "68"];
        for (var i = 0;i < 4;i++) {
            var lineTag = document.createElement("div");
            lineTag.className = "patternlocklinediagonalforward";
            lineTag.id = "line" + elid[i];
            linesTag.appendChild(lineTag);
        }
        patternTag.appendChild(linesTag);
        var linesTag = document.createElement("div");
        var elid = ["15", "26", "48", "59"];
        linesTag.className = "patternlocklinesdiagonalcontainer";
        for (var i = 0;i < 4;i++) {
            var lineTag = document.createElement("div");
            lineTag.className = "patternlocklinediagonalbackwards";
            lineTag.id = "line" + elid[i];
            linesTag.appendChild(lineTag);
        }
        patternTag.appendChild(linesTag);

        var buttonsTag = document.createElement("div");
        buttonsTag.className = "patternlockbuttoncontainer";
        for (var i = 1;i < 10;i++) {
            var buttonTag = document.createElement("div");
            buttonTag.className = "patternlockbutton";
            buttonTag.id = "patternlockbutton" + i;
            buttonTag.onmousedown = function (e) {
                if (!e) {
                    var e = window.event;
                }
                else {
                    e.preventDefault();
                }
                patternlock.buttontouchstart(this)
            };
            buttonTag.ontouchstart = function (e) {
                if (!e)
                    var e = window.event;
                e.preventDefault();
                patternlock.buttontouchstart(this)
            };
            buttonTag.onmouseover = function () {
                patternlock.buttontouchover(this)
            };
            buttonTag.ontouchmove = patternlock.buttontouchmove;
            buttonTag.onmouseup = function () {
                patternlock.buttontouchend(this)
            };
            buttonTag.ontouchend = function () {
                patternlock.buttontouchend(this)
            };
            buttonsTag.appendChild(buttonTag);
        }
        patternTag.appendChild(buttonsTag);

        var imgTag = document.createElement("div");
        imgTag.style.display = 'none';
        imgTag.className = "patternlockbutton touched";
        patternTag.appendChild(imgTag);
        var imgTag = document.createElement("div");
        imgTag.style.display = 'none';
        imgTag.className = "patternlockbutton touched multiple";
        patternTag.appendChild(imgTag);

        pel.appendChild(patternTag);
    },
    buttontouchstart : function (b) {
        patternlock.isdrawing = true;
        b.className = "patternlockbutton touched";
        patternlock.from = "";
        patternlock.to = b.id.split("patternlockbutton").join("");
        this.inputbox.value = patternlock.to;
        this.startbutton = patternlock.to;
        return false;
    },
    buttontouchover : function (b) {
        if (patternlock.isdrawing) {
            var thisbutton = b.id.split("patternlockbutton").join("");

            if (thisbutton != patternlock.to) {
                var cn = b.className;
                if (cn.indexOf('touched') < 0) {
                    b.className = "patternlockbutton touched"
                }
                else {
                    b.className = "patternlockbutton touched multiple"
                }

                patternlock.from = patternlock.to;
                patternlock.to = thisbutton;

                this.inputbox.value += patternlock.to;

                var thisline = document.getElementById("line" + patternlock.from + patternlock.to);
                if (patternlock.to < patternlock.from) {
                    thisline = document.getElementById("line" + patternlock.to + patternlock.from);
                }
                if (thisline) {
                    thisline.style.visibility = 'visible';
                }

            }

        }
        return (false)
    },
    buttontouchmove : function (e) {
        if (e.touches.length == 1) {
            var touch = e.touches[0];

            var b1 = document.getElementById("patternlockbutton1");
            var b2 = document.getElementById("patternlockbutton2");
            var p = findPos(b1);
            var p2 = findPos(b2);
            var cox = parseInt(touch.pageX) - parseInt(p[0])
            var coy = parseInt(touch.pageY) - parseInt(p[1])
            var gridsize = p2[0] - p[0]

            var buttonnr = Math.min(2, Math.max(0, Math.floor(cox / gridsize))) + (Math.min(2, Math.max(0, Math.floor(coy / gridsize))) * 3) + 1;

            if (buttonnr != patternlock.to) {
                var distancex = (cox % gridsize);
                var distancey = (coy % gridsize);
                if ((distancex < (gridsize / 2)) && (distancey < (gridsize / 2))) {
                    var newbutton = document.getElementById("patternlockbutton" + buttonnr)
                    patternlock.buttontouchover(newbutton);
                }
            }
        }
    },
    buttontouchend : function (b) {
        if (patternlock.isdrawing) {
            patternlock.isdrawing = false;
            if (this.autoSubmit) {
                var dosubmit = true;
                if (document.forms[0].onsubmit) {
                    dosubmit = document.forms[0].onsubmit()
                }
                if (dosubmit) {
                    document.forms[0].submit();
                }
            }
        }
        return (false)

    },
    attach : function (target, functionref, tasktype) {
        var tasktype = (window.addEventListener) ? tasktype : "on" + tasktype
        if (target.addEventListener)
            target.addEventListener(tasktype, functionref, false)
        else if (target.attachEvent)
            target.attachEvent(tasktype, functionref)
    }
}

patternlock.attach(window, function () {
    patternlock.init()
},
"load");
patternlock.attach(document, function () {
    patternlock.buttontouchend()
},
"mouseup");

function findPos(obj) {
    var curleft = curtop = 0;
    if (obj.offsetParent) {
        do {
            curleft += obj.offsetLeft;
            curtop += obj.offsetTop;
        }
        while (obj = obj.offsetParent);
        return [curleft, curtop];
    }
}