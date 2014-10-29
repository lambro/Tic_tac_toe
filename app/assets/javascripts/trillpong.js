$(function(){
  canvas = document.getElementById('canvas');

  $(document).keydown(function(){
    if(event.keyCode == 39){
      rightDown = true;
    }else if(event.keyCode == 37){
      leftDown = true;
    }
  });

  $(document).keyup(function(){
    if(event.keyCode == 39){
      rightDown = false;
    }else if(event.keyCode == 37){
      leftDown = false;
    }
  });

  function init(){
    ctx = canvas.getContext("2d");
    WIDTH = canvas.width;
    HEIGHT = canvas.height;   

    // these are written in capitals as they are not going to change during the execution of the activity
    x = y = 150;
    dx = 2;
    dy = 4;
    radius = 10;
    rightDown = leftDown = false;

    // setting sizes here for the paddle

    paddlex = paddlexAI = (WIDTH/2);
    paddleh = 10;
    paddlew = 75;
    drawInterval = setInterval(draw, 10)
  }

  function circle(x, y, r){
    ctx.beginPath();
    ctx.arc(x, y, r, 0, (Math.PI*2));
    ctx.closePath();
    ctx.fillStyle = "rgba(51, 232, 237, 1.0)"
    ctx.fill();
  }
  // an attempt to make a background
  // function background(){
  //   ctx.beginPath();
  //   ctx.fillStyle = 'yellow';
  //   ctx.fillRect(0, 0, 720, 500);
  //   ctx.closePath();
  //   ctx.fill();
  // }


  function rect(x,y, w, h){
    ctx.beginPath();
    ctx.rect(x, y, w, h);
    ctx.closePath();
    ctx.fillStyle = "rgba(13, 89, 142, 1.0)"
    ctx.lineWidth = 3;
    ctx.strokeStyle = "rgba(51, 232, 237, 1.0)";
    ctx.stroke();
    ctx.fill();
  }

  function clear(){
    ctx.clearRect(0, 0, WIDTH, HEIGHT);
  }

  function followBallAI(){
      var delayReaction = Math.random();
      if(delayReaction >= 0.01){
        if(x > paddlexAI + paddlew){
          if(paddlexAI + paddlew + 5 <= WIDTH){
            paddlexAI += 5;
          }
        } else if(x < paddlexAI){
          if(paddlexAI - 5 >= 0){
            paddlexAI -= 5;
          }
        } else {
          var centerPaddle = Math.random();
          if(centerPaddle > 0.2) {

            // if ball is closer to the left side of the computer paddle
            if( Math.abs(x - paddlexAI) < Math.abs(x - paddlexAI - paddlew)){
              if(paddlexAI - 5 >= 0){
                paddlexAI -= 5;
              }
            } else{
              if(paddlexAI + paddlew + 5 <= WIDTH){
                paddlexAI +=5;
              }
            }
          }
        }  
      }
    }

  // function followBallAI(){
  //   var delayReaction = Math.random();
  //   if(delayReaction>= 0.25){
  //     if(x > paddlexAI + paddlew){
  //       if(paddlexAI + paddlew + 5 <= WIDTH){
  //         paddlexAI += 5;
  //       }
  //     } else if(x < paddleAI){
  //       if(paddlexAI - 5 >=0){
  //         paddlexAI -= 5;
  //       }
  //     } else {
  //       var centerPaddle = Math.random();
  //       if(centerPaddle > 0.2){
  //         //if the ball is closer to the left side of the computer paddle
  //         if( Math.abs(x - paddlexAI) < Math.abs(x - paddlexAI - paddlew)){
  //           if(paddlexAI - 5 >= 0){
  //             paddlexAI -= 5;
  //           }
  //         } else{
  //           if(paddlexAI + paddlew + 5 <= WIDTH){
  //             paddlexAI += 5;
  //           }
  //         }
  //       }
  //     }
  //   }
  // }

  function draw(){
    clear();
    // background();
    circle(x, y, radius);
    if(rightDown){
      if(paddlex + paddlew + 5 <= WIDTH){
        paddlex +=5
      }
    }else if(leftDown){
      if(paddlex - 5 >= 0){
        paddlex -= 5
      }
    }

    followBallAI();

      //our paddle
      rect(paddlex, HEIGHT - paddleh, paddlew, paddleh);

      //computer paddle
      rect(paddlexAI, 0, paddlew, paddleh);

      // bounce on the left and the right
      if((x + dx + radius) > WIDTH || (x + dx - radius) < 0){
        dx =- dx
      }

      // if the ball hits the top of the canvas the user wins the game

      if(y + dy - radius <= 0){
        if(x<= paddlexAI || x >=paddlexAI + paddlew){
          // if this condition is true that means that the user has won the game and there is nothing to animate anymore. the redrawing is stopped. Clear interval stops the method  draw.

          clearInterval(drawInterval);
          alert("You WIN! :D");

          //everything after alert is initialised after the pop up is closed. Because we have stopped the game with clear interval we have to re intialise it with init again.

          init();
        } else {
          //this is the case for when the ball hits the top where the paddle is.
          dy = -dy;
        }
      } else if(y + dy + radius > HEIGHT){
        //lower paddle
        if (x > paddlex && x < paddlex + paddlew){
          dx = 8 * ((x - (paddlex + paddlew / 2)) / paddlew)
          dy = -dy;
        } else {
          clearInterval(drawInterval);
          alert("You lose! >.<");
          init();
        }
      }


      x += dx;
      y += dy;
    }

    init();

  })