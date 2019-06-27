<!DOCTYPE html>
<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title> Paysafe for membership</title>
  
  
  <link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>
<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css'>

      <link rel="stylesheet" href="resource/css/paysafe.css">

  
</head>

<body>

  <div class="container">
    <div class="row">
        <div class="col-xs-12 col-md-4">
            <!-- CREDIT CARD FORM STARTS HERE -->
            <div class="panel panel-default credit-card-box">
                <div class="panel-heading display-table" >
                    <div class="row display-tr" >
                        <h3 class="panel-title display-td" >Payment Details</h3>
                        <div class="display-td" >                            
                            <img class="img-responsive pull-right" src="img/creditcards.png">
                        </div>
                    </div>                    
                </div>
                <div class="panel-body">
                    <form role="form" id="payment-form" method="POST" action="javascript:void(0);">
                        <div class="row">
                            <div class="col-xs-12">
                                <div class="form-group">
                                    <label for="cardNumber">CARD NUMBER</label>
                                    <div class="input-group">
                                        <div 
                                            class="form-control"
                                            id="cardNumber"
                                        > </div>
                                        <span class="input-group-addon"><i class="fa fa-credit-card"></i></span>
                                    </div>
                                </div>                            
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-7 col-md-7">
                                <div class="form-group">
                                    <label for="cardExpiry"><span class="hidden-xs">EXPIRATION</span><span class="visible-xs-inline">EXP</span> DATE</label>
                                    <div 
                                        class="form-control" 
                                        id="cardExpiry"
                                    ></div>
                                </div>
                            </div>
                            <div class="col-xs-5 col-md-5 pull-right">
                                <div class="form-group">
                                    <label for="cardCVC">CV CODE</label>
                                    <div 
                                        class="form-control"
                                        id="cardCVC"
                                    ></div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <button class="pay btn btn-success btn-lg btn-block" type="button">Pay</button>
                            </div>
                        </div>
                        <div class="row" style="display:none;">
                            <div class="col-xs-12">
                                <p class="payment-errors"></p>
                            </div>
                        </div>
                    </form>
                </div>
            </div>            
            <!-- CREDIT CARD FORM ENDS HERE -->
            
            
        </div>            
        
      <!--   <div class="col-xs-12 col-md-8" style="font-size: 12pt; line-height: 2em;">
            <p><h1>Features:</h1>
                <ul>
                    <li>As-you-type, input formatting</li>
                    <li>Form field validation</li>
                    <li>Graceful error feedback for declined card, etc</li>
                    <li>Card brand recognition</li>
                    <li>Simulates AJAX processing delay with visual feedback</li>
                    <li>Creates a Paysafe credit card token</li>
                </ul>
            </p>
            <p>Be sure to replace the dummy API key with a valid Paysafe API key.</p>
            
            <p>Built upon: Bootstrap, jQuery,
                and <a href="https://developer.paysafe.com/en/sdks/paysafejs/overview/">paysafe.js</a>
            </p>
        </div>
        --> 
    </div>
</div>
  <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.15.0/jquery.validate.min.js'></script>
<script src='https://hosted.test.paysafe.com/js/v1/latest/paysafe.min.js'></script>

  

    <script  src="resource/js/paysafe.js"></script>




</body>

</html>