<garfield>
  <div class="container">
    <!-- Head  -->
    <div class="row">
      <div class="col">
        <h1> Pikachu! </h1>
      </div>
    </div>
    <!-- Image part -->
    <div class="row">
      <div class="col">
        <img src = {imgPikachu} alt="Pikachu" style="width:220px;height:245px;">
          <h4 show = {happy >= 100}> I'm the happiest cat!!! </h4>
          <h4 show = {annoyed >= 80}> I'm really annoyed!!! <h4>
          <h4 show = {weight <= 30}> Food!Food!I need FOOD!!!<h4>
          <h4 show = {weight >= 50}> Fat is the new sex among meow meow!
      </div>



    </div>
    <!-- Pikachu  States  -->
    <div class="row">
      <div class="col states">
        <ul>
          <li>Happy: {happy} <span id="happy"></span></li>
          <li>Weight: {weight} <span id="weight"></span></li>
          <li>Strength: {strength} <span id="strength"></span></li>
        </ul>
      </div>
    </div>
    <!-- Pikachu Reactions -->
    <div class="row">
      <div class="col reactions">
        <ul>
          <li>
            <button hide={happy == 100 | annoyed == 0} onclick={ pat }>Play</button>
          </li>
          <li>
            <button hide={happy == 100 | weight >= 55} onclick={ feed }>Feed</button>
          </li>
          <li>
            <button hide={annoyed == 100 | weight <= 10} onclick={ exercise }>Train</button>
          </li>
          <li>
            <button hide={happy == 100 } onclick={ sleep }>Rest</button>
          </li>
        </ul>
      </div>
    </div>
  </div>

  <script>
  // JAVASCRIPT
  let tag = this;
  this.imgPikachu = "https://media.giphy.com/media/13G7hmmFr9yuxG/giphy.gif"


  this.happy = 60
  this.annoyed = 40;
  this.weight = 40;



  pat(event) {
    let random = Math.random();
    if (random < 0.5) {
      this.annoyed +=1;
      this.happy -=1;
      this.imgPikachu = "https://pic.qqtn.com/file/2013/2014-7/2014073009041171712.gif"
    }
    else{
      this.happy +=1;
      this.annoyed -=1;
      this.imgPikachu = "https://pic.qqtn.com/file/2013/2014-7/2014073009040229074.gif"
    }

  }
  feed(event){
    this.happy +=1;
    this.annoyed -=1;
    this.weight +=0.5;
    this.imgPikachu = "https://pic.qqtn.com/file/2013/2014-7/2014073009040666296.gif"

  }

  exercise(event){
    this.happy -=1;
    this.annoyed +=1;
    this.weight -=0.5
    if (this.weight <= 40){
      this.imgPikachu = " https://media1.tenor.com/images/9efa7bc63705ab8471b0c027a7e126fb/tenor.gif?itemid=5952319"
    }
    else if (this.weight <= 45) {
      this.imgPikachu = "https://i.pinimg.com/originals/be/ea/25/beea2507bbd5e62eea833853b6c6d535.gif"

    }
    else {
      this.imgPikachu ="https://i.pinimg.com/originals/8a/fa/a3/8afaa3de9d8e1f5fcc23d54bf7b85d4b.gif"

    }

  }

  sleep(event){
    this.happy +=1;
    this.annoyed -=1
    let random = Math.random();
    if (random < 0.5) {
      this.imgPikachu = "https://pic.qqtn.com/file/2013/2014-7/2014073009041035161.gif"
    }
    else{
      this.imgPikachu = "https://pic.qqtn.com/file/2013/2014-7/2014073009041369482.gif"
    }

  }

</garfield>
