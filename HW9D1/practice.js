document.addEventListener("DOMContentLoaded", function(){
    const canvas = document.getElementById('mycanvas');
    const ctx = canvas.getContext('2d');
    canvas.width = 500;
    canvas.height = 500;
    ctx.fillStyle = 'green';
    ctx.fillRect(20, 10, 150, 100);

    // ctx.beginPath();
    // ctx.arc(200, 300, 50, 0, 2 * Math.PI, true);
    // ctx.strokeStyle = 'red';
    // ctx.lineWidth = 5;
    // ctx.stroke();
    ctx.beginPath();
    ctx.arc(250, 250, 90, 0, 2 * Math.PI, true);
    ctx.strokeStyle = "green";
    ctx.lineWidth = 5;
    ctx.stroke();
    ctx.fillStyle = "yellow";
    ctx.fill();

});
