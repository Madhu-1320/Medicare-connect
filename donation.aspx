<input type="number" id="amount" placeholder="Enter Donation Amount">

<select id="paymentMethod" onchange="showPaymentSection()">
    <option value="">Select Payment Method</option>
    <option value="upi">UPI</option>
    <option value="card">Card</option>
    <option value="cash">Cash</option>
</select>

<br><br>

<button type="button" onclick="proceedPayment()">Next</button>


<!-- UPI SECTION -->
<div id="qrSection" style="display:none; margin-top:20px;">

    <h3>Scan & Pay</h3>

    <img id="qrCode" width="250" height="250">

    <p>Scan the QR code using your UPI app.</p>

    <button type="button" onclick="paymentSuccess()">
        Payment Completed
    </button>

</div>


<!-- CARD SECTION -->
<div id="cardSection" style="display:none; margin-top:20px;">

    <h3>Card Payment</h3>

    <input type="text"
           id="cardName"
           placeholder="Card Holder Name">

    <br><br>

    <input type="text"
           id="cardNumber"
           placeholder="Card Number"
           maxlength="16">

    <br><br>

    <input type="text"
           id="expiry"
           placeholder="MM/YY"
           maxlength="5">

    <br><br>

    <input type="password"
           id="cvv"
           placeholder="CVV"
           maxlength="3">

    <br><br>

    <button type="button" onclick="cardPayment()">
        Pay Now
    </button>

</div>


<!-- CASH SECTION -->
<div id="cashSection" style="display:none; margin-top:20px;">

    <h3>Cash Donation</h3>

    <p>
        Please submit the donation amount in cash
        to the MediCareConnect donation coordinator.
    </p>

    <button type="button" onclick="cashPayment()">
        Confirm Cash Donation
    </button>

</div>


<!-- SUCCESS MESSAGE -->
<div id="successSection"
     style="display:none; margin-top:20px;">

    <h3>Donation Successful!</h3>

    <p id="successMessage"></p>

</div>


<script>

function showPaymentSection() {

    document.getElementById("qrSection").style.display = "none";
    document.getElementById("cardSection").style.display = "none";
    document.getElementById("cashSection").style.display = "none";

}


function proceedPayment() {

    const amount = document.getElementById("amount").value;
    const method = document.getElementById("paymentMethod").value;

    if (!amount || amount <= 0) {

        alert("Please enter donation amount");
        return;
    }

    if (!method) {

        alert("Please select payment method");
        return;
    }


    // UPI
    if (method === "upi") {

        const upiId = "yourupi@upi";

        const name = "Medical Donation";

        const upiLink =
            `upi://pay?pa=${upiId}&pn=${encodeURIComponent(name)}&am=${amount}&cu=INR`;

        const qrURL =
            "https://api.qrserver.com/v1/create-qr-code/?size=250x250&data="
            + encodeURIComponent(upiLink);

        document.getElementById("qrCode").src = qrURL;

        document.getElementById("qrSection").style.display = "block";
    }


    // CARD
    else if (method === "card") {

        document.getElementById("cardSection").style.display = "block";
    }


    // CASH
    else if (method === "cash") {

        document.getElementById("cashSection").style.display = "block";
    }

}


// UPI PAYMENT
function paymentSuccess() {

    const amount = document.getElementById("amount").value;

    document.getElementById("qrSection").style.display = "none";

    document.getElementById("successSection").style.display = "block";

    document.getElementById("successMessage").innerHTML =
        "Donation of ₹" + amount +
        " submitted successfully through UPI.";
}


// CARD PAYMENT
function cardPayment() {

    const amount = document.getElementById("amount").value;

    const name = document.getElementById("cardName").value;
    const cardNumber = document.getElementById("cardNumber").value;
    const expiry = document.getElementById("expiry").value;
    const cvv = document.getElementById("cvv").value;


    if (!name) {

        alert("Please enter card holder name");
        return;
    }

    if (cardNumber.length !== 16) {

        alert("Please enter a valid 16-digit card number");
        return;
    }

    if (!expiry) {

        alert("Please enter card expiry date");
        return;
    }

    if (cvv.length !== 3) {

        alert("Please enter valid CVV");
        return;
    }


    document.getElementById("cardSection").style.display = "none";

    document.getElementById("successSection").style.display = "block";

    document.getElementById("successMessage").innerHTML =
        "Donation of ₹" + amount +
        " submitted successfully through Card.";
}


// CASH PAYMENT
function cashPayment() {

    const amount = document.getElementById("amount").value;

    document.getElementById("cashSection").style.display = "none";

    document.getElementById("successSection").style.display = "block";

    document.getElementById("successMessage").innerHTML =
        "Cash donation of ₹" + amount +
        " recorded successfully.";
}

</script>