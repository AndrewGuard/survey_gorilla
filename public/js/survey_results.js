var d1 = [[0, 3], [1, 3], [2, 5]];

// data = somemagichere

data = JSON.parse(data);

$(document).ready(function () {
    $.plot($("#placeholder"), [
        {
            data: d1,
            bars: {
                show: true
            }
        }
    ]);
});
