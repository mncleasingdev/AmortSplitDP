<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Mortgage.aspx.cs" Inherits="AmortSplitDP.Mortgage" %>

<!DOCTYPE html>

<html>
<head>
    <link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
    <script src="js/jquery.js"></script>
    <style>
        body {
            padding-top: 60px; /* 60px to make the container go all the way to the bottom of the topbar */
        }

        input {
            height: 30px !important;
        }

        tr {
            border: solid black 1px;
        }

        td {
            padding: 0 20px !important;
            text-align: right !important;
        }

        label {
            padding: 10px 0 0;
        }

        th {
            background-color: grey;
            padding: 0 20px !important;
            text-align: right !important;
        }

        #months-field {
            display: none;
        }

        #years-field {
            display: none;
        }
    </style>
</head>
<body>
    <div class="navbar navbar-inverse navbar-fixed-top">
        <div class="navbar-inner">
            <div class="container">
                <%--<a class="brand" href="http://joelvasallo.com">Joel Vasallo</a>--%>
                <div class="nav-collapse collapse">
                    <%--<ul class="nav">
            	<li><a href="/">Home</a></li>
                    <li class="active"><a href="/mortgage.html">Mortgage Calculator</a></li>
                    <li><a href="/scicalc.html">Scientific Calculator</a></li>
                    <li><a href="/taxcalc.html">1040EZ Tax Calculator</a></li>
							<li><a href="https://jvasallo.pythonanywhere.com/storefront/default/storefront">StoreFront</a></li>
                </ul>--%>
                </div>
                <!--/.nav-collapse -->
            </div>
        </div>
    </div>

    <div class="container">
        <%--      <div class="hero-unit">
      	<h1>Mortgage Calculator</h1>
        <p>Fill in the form below to figure out your mortgage!</p>
      </div>--%>

        <legend>
            <h3>SIMULASI PROGRAM SPLIT DP & SUBSIDI</h3>
        </legend>
        <div class="row-fluid">
            <div class="span4">
                <div id="mortgage-calc">
                    <form id="mortgageForm">
                        <label><strong>Select the start date: </strong></label>
                        <select class="span3" id="month">
                            <option label="Jan" value="1" selected="selected">Jan</option>
                            <option label="Feb" value="2">Feb</option>
                            <option label="Mar" value="3">Mar</option>
                            <option label="Apr" value="4">Apr</option>
                            <option label="May" value="5">May</option>
                            <option label="Jun" value="6">Jun</option>
                            <option label="Jul" value="7">Jul</option>
                            <option label="Aug" value="8">Aug</option>
                            <option label="Sep" value="9">Sep</option>
                            <option label="Oct" value="10">Oct</option>
                            <option label="Nov" value="11">Nov</option>
                            <option label="Dec" value="12">Dec</option>
                        </select>
                        <select class="span3" id="year">
                            <option label="1990" value="1990">1990</option>
                            <option label="1991" value="1991">1991</option>
                            <option label="1992" value="1992">1992</option>
                            <option label="1993" value="1993">1993</option>
                            <option label="1994" value="1994">1994</option>
                            <option label="1995" value="1995">1995</option>
                            <option label="1996" value="1996">1996</option>
                            <option label="1997" value="1997">1997</option>
                            <option label="1998" value="1998">1998</option>
                            <option label="1999" value="1999">1999</option>
                            <option label="2000" value="2000">2000</option>
                            <option label="2001" value="2001">2001</option>
                            <option label="2002" value="2002">2002</option>
                            <option label="2003" value="2003">2003</option>
                            <option label="2004" value="2004">2004</option>
                            <option label="2005" value="2005">2005</option>
                            <option label="2006" value="2006">2006</option>
                            <option label="2007" value="2007">2007</option>
                            <option label="2008" value="2008">2008</option>
                            <option label="2009" value="2009">2009</option>
                            <option label="2010" value="2010">2010</option>
                            <option label="2011" value="2011">2011</option>
                            <option label="2012" value="2012">2012</option>
                            <option label="2013" value="2013">2013</option>
                            <option label="2014" value="2014">2014</option>
                            <option label="2015" value="2015">2015</option>
                            <option label="2016" value="2016">2016</option>
                            <option label="2017" value="2017">2017</option>
                            <option label="2018" value="2018">2018</option>
                            <option label="2019" value="2019">2019</option>
                            <option label="2020" value="2020">2020</option>
                            <option label="2021" value="2021">2021</option>
                            <option label="2022" value="2022" selected="selected">2022</option>
                            <option label="2023" value="2023">2023</option>
                            <option label="2024" value="2024">2024</option>
                            <option label="2025" value="2025">2025</option>
                            <option label="2026" value="2026">2026</option>
                            <option label="2027" value="2027">2027</option>
                            <option label="2028" value="2028">2028</option>
                            <option label="2029" value="2029">2029</option>
                            <option label="2030" value="2030">2030</option>
                        </select>
                        <label><strong>Total Harga: </strong></label>
                        <div class="input-prepend">
                            <span class="add-on">Rp</span>
                            <input class="span5" id="amount" type="text" placeholder="0">
                        </div>

                        <label><strong>Uang Muka:</strong></label>
                        <div class="input-prepend">
                            <input class="span5" id="downp" type="text">
                            <span class="add-on">%</span>
                        </div>

                        <label><strong>TargetDP:</strong></label>
                        <div class="input-prepend">
                            <input class="span5" id="targetdp" type="text">
                            <span class="add-on">%</span>
                        </div>

                        <label><strong>Suku Bunga Efektif:</strong></label>
                        <div class="input-append">
                            <input class="span5" id="interest" type="text" placeholder="Interest Rate">
                            <span class="add-on">%</span>
                        </div>

                        <label>Calculate based on months or years?</label>
                        <select class="span5" id="monthly-yearly">
                            <option label="select.." value="0" selected="selected" disabled>Select...</option>
                            <option label="years" value="years">Years</option>
                            <option label="months" value="months">Months</option>
                        </select>
                        <div id="years-field">
                            <label>Enter the term years of the loan:</label>
                            <div class="input-append">
                                <input class="span5" id="term-years" type="text" placeholder="Term">
                                <span class="add-on">Years</span>
                            </div>
                        </div>
                        <div id="months-field">
                            <label>Enter the term months of the loan:</label>
                            <div class="input-append">
                                <input class="span5" id="term-months" type="text" placeholder="Term">
                                <span class="add-on">Months</span>
                            </div>
                        </div>
                    </form>
                </div>
            </div>

            <div class="span4">
                <label><strong>Advance / Arrear </strong></label>
                <select class="span5" id="advarr2">
                    <option label="ADVANCE" value="0" selected="selected"></option>
                    <option label="ARREAR" value="1"></option>
                </select>

                <label><strong>Pokok Hutang: </strong></label>
                <div class="input-prepend">
                    <span class="add-on">Rp</span>
                    <input class="span5" id="pokokhutang" value="0" readonly>
                </div>

                <label><strong>Total DP:</strong></label>
                <div class="input-prepend">
                    <span class="add-on">Rp</span>
                    <input class="span5" id="totaldp" value="0" readonly>
                </div>

                <label><strong>Target Interest:</strong></label>
                <div class="input-prepend">
                    <input class="span5" id="targetinterest" type="text">
                    <span class="add-on">%</span>
                </div>

                <div id="subsidi">
                    <label>Subsidi Split?</label>
                    <input class="span5" id="subsidisplit" type="checkbox">
                </div>

                <label><strong>Bulan Program DP </strong></label>
                <select class="span5" id="prgdp">
                    <option label="0" value="0" selected="selected"></option>
                    <option label="4" value="4"></option>
                    <option label="6" value="6"></option>
                    <option label="12" value="12"></option>
                </select>

            </div>

            <div class="span4">
                <h5>Monthly Payment</h5>
                <div class="input-prepend">
                    <span class="add-on">Rp</span>
                    <input class="span5" id="total" readonly>
                </div>

                <h5>Interest Paid</h5>
                <div class="input-prepend">
                    <span class="add-on">Rp</span>
                    <input class="span5" id="total_interest" readonly>
                </div>

                <label><strong>Nilai Subsidi Split: </strong></label>
                <div class="input-prepend">
                    <span class="add-on">Rp</span>
                    <input class="span5" id="nilaisubsidisplit" type="text" value="0" readonly>
                </div>

                <label><strong>Subsidi Bunga: </strong></label>
                <div class="input-prepend">
                    <span class="add-on">Rp</span>
                    <input class="span5" id="subsidibunga" type="text" value="0" readonly>
                </div>

                <div id="precision-field">
                    <label>Disable Rounding ?</label>
                    <input class="span5" id="precision" type="checkbox">
                </div>
            </div>
        </div>

        <div id="results">
            <h3 id="amortization-header"></h3>
            <table id="amortization"></table>
        </div>

        <footer>
            <hr>
            <div class="container">
                <%--<p>Written by <a href="http://joelvasallo.com/">Joel Vasallo</a></p>--%>
            </div>
        </footer>
    </div>
</body>
<script>

    // Digits to round to
    var ROUND_DIGITS = true;
    var DIGIT_PRECISION = 2;

    // Display formatting function to change from spaces to commas
    // x: Value to apply seperator/grouping on.
    // sep (String): Seperator to use, if not specified, defaults to ','
    // grp (int): Grouping of numbers, if not specified, defaults to 3
    function localeString(x, sep, grp) {
        var sx = ('' + x).split('.'), s = '', i, j;
        sep || (sep = ','); // default seperator
        grp || grp === 0 || (grp = 3); // default grouping
        i = sx[0].length;
        while (i > grp) {
            j = i - grp;
            s = sep + sx[0].slice(j, i) + s;
            i = j;
        }
        s = sx[0].slice(0, i) + s;
        sx[0] = s;
        return sx.join('.')
    }

    function convert_month(month) {
        if (month == 1) { month = "January"; }
        else if (month == 2) { month = "February"; }
        else if (month == 3) { month = "March"; }
        else if (month == 4) { month = "April"; }
        else if (month == 5) { month = "May"; }
        else if (month == 6) { month = "June"; }
        else if (month == 7) { month = "July"; }
        else if (month == 8) { month = "August"; }
        else if (month == 9) { month = "September"; }
        else if (month == 10) { month = "October"; }
        else if (month == 11) { month = "November"; }
        else if (month == 12) { month = "December"; }
        return month;
    }

    function calculate_monthly_payment() {
        // setting these as local variables...easier to read vs huge parse float equations.
        var loan_amount = parseFloat(jQuery('#amount').val());
        var interest_rate = parseFloat(jQuery('#interest').val()) / 100;
        var monthly_interest_rate = interest_rate / 12;
        var length_of_mortgage = parseInt(jQuery('#term-years').val()) * 12;

        if (jQuery('select[id=monthly-yearly]').val() == 'months') {
            length_of_mortgage = parseInt(jQuery('#term-months').val());
        };

        // begin the formula for calculate the fixed monthly payment
        // REFERENCE: P = L[c(1 + c)n]/[(1 + c)n - 1]
        var top_val = monthly_interest_rate * Math.pow((1 + monthly_interest_rate), length_of_mortgage);
        var bot_val = Math.pow((1 + monthly_interest_rate), (length_of_mortgage)) - 1;
        if (ROUND_DIGITS) {
            var monthly_mortgage = parseFloat(loan_amount * (top_val / bot_val)).toFixed(DIGIT_PRECISION);
        } else {
            var monthly_mortgage = parseFloat(loan_amount * (top_val / bot_val));
       } 

        calculate_amortization(loan_amount, monthly_mortgage, monthly_interest_rate, length_of_mortgage);
        jQuery('#total').val(localeString(monthly_mortgage));

        var loan_amount = parseFloat(jQuery('#amount').val());
        var dp = parseFloat(jQuery('#downp').val()) / 100;

        var pkkht = parseFloat(jQuery('#pokokhutang').val());

        // Initializing the empty totals
        var totaldp = parseFloat(0);

        var downpaymentcalc = loan_amount * dp;

        var pkkhtcalc = loan_amount - (loan_amount * dp);
        //console.log("ekaa", downpaymentcalc);
        jQuery('#totaldp').val(localeString(downpaymentcalc));

        jQuery('#pokokhutang').val(localeString(pkkhtcalc));
    }

    function calculateDP() {

    }

    function calculate_amortization(loan_amount, monthly_mortgage, monthly_interest_rate, length_of_mortgage) {
        var month = parseInt(jQuery('#month').val());
        var year = parseInt(jQuery('#year').val());

        var tableData = "<tr> \
							<th>Month</th> \
							<th>Outstanding</th> \
							<th>Angsuran</th> \
							<th>Pokok</th> \
							<th>Bunga</th> \
							</tr>";

        // Initializing the empty totals
        var total_mortgage = parseFloat(0);
        var total_principal = parseFloat(0);
        var total_interest = parseFloat(0);

        for (i = length_of_mortgage; i > 0; i--) {
            var monthly_interest = parseFloat(loan_amount * monthly_interest_rate).toFixed(DIGIT_PRECISION);
            var monthly_principal = parseFloat(monthly_mortgage - monthly_interest).toFixed(DIGIT_PRECISION);
            total_mortgage = parseFloat(total_mortgage) + parseFloat(monthly_mortgage);
            total_principal = parseFloat(total_principal) + parseFloat(monthly_principal);
            total_interest = parseFloat(total_interest) + parseFloat(monthly_interest);
            var monthStr = convert_month(month);
            var tablerow = "<tr> \
					<td>" + monthStr + " " + year + "</td> \
					<td>" + localeString(parseFloat(loan_amount).toFixed(DIGIT_PRECISION)) + "</td> \
					<td>" + localeString(monthly_mortgage) + "</td> \
					<td>" + localeString(monthly_principal) + "</td> \
					<td>" + localeString(monthly_interest) + "</td> \
					</tr>";

            tableData = tableData + tablerow;

            if (month == 12) {
                month = 1;
                year++;
            }
            else {
                month++;
            };

            loan_amount = parseFloat(loan_amount - monthly_principal).toFixed(DIGIT_PRECISION);
        };

        tablerow = "<tr> \
					<td></td> \
					<td></td> \
					<td><strong>" + localeString(parseFloat(total_mortgage).toFixed(DIGIT_PRECISION)) + "</strong></td> \
					<td><strong>" + localeString(parseFloat(total_principal).toFixed(DIGIT_PRECISION)) + "</strong></td> \
					<td><strong>" + localeString(parseFloat(total_interest).toFixed(DIGIT_PRECISION)) + "</strong></td> \
					</tr>";
        tableData = tableData + tablerow;
        jQuery('h3#amortization-header').html('Amortization Schedule');
        if (ROUND_DIGITS) {
            jQuery('#total_interest').val(localeString(parseFloat(total_interest).toFixed(DIGIT_PRECISION)));
        } else {
            jQuery('#total_interest').val(localeString(parseFloat(total_interest)));
        }
        jQuery('table#amortization').html(tableData);
    }

    function calculate_tanggunga(nloan_amount, monthly_mortgage, monthly_interest_rate, length_of_mortgage) {

        var tableData = "<tr> \
							<th>Bulan</th> \
							<th>Tanggunan Supplier</th> \
							</tr>";

        // Initializing the empty totals
        var total_mortgage = parseFloat(0);
        var total_principal = parseFloat(0);
        var total_interest = parseFloat(0);

        for (i = length_of_mortgage; i > 0; i--) {
            var monthly_interest = parseFloat(loan_amount * monthly_interest_rate).toFixed(DIGIT_PRECISION);
            var monthly_principal = parseFloat(monthly_mortgage - monthly_interest).toFixed(DIGIT_PRECISION);
            total_mortgage = parseFloat(total_mortgage) + parseFloat(monthly_mortgage);
            total_principal = parseFloat(total_principal) + parseFloat(monthly_principal);
            total_interest = parseFloat(total_interest) + parseFloat(monthly_interest);
            var monthStr = convert_month(month);
            var tablerow = "<tr> \
					<td>" + monthStr + "</td> \
					<td>" + localeString(parseFloat(loan_amount).toFixed(DIGIT_PRECISION)) + "</td> \
					</tr>";

            tableData = tableData + tablerow;

            if (month == 12) {
                month = 1;
                year++;
            }
            else {
                month++;
            };

            loan_amount = parseFloat(loan_amount - monthly_principal).toFixed(DIGIT_PRECISION);
        };

        tablerow = "<tr>\
					<td></td>\
					<td></td>\
					<td><strong>" + localeString(parseFloat(total_mortgage).toFixed(DIGIT_PRECISION)) + "</strong></td> \
					<td><strong>" + localeString(parseFloat(total_principal).toFixed(DIGIT_PRECISION)) + "</strong></td>\
					<td><strong>" + localeString(parseFloat(total_interest).toFixed(DIGIT_PRECISION)) + "</strong></td>\
					</tr>";
        tableData = tableData + tablerow;
        jQuery('h3#amortization-header').html('Amortization Schedule');
        if (ROUND_DIGITS) {
            jQuery('#total_interest').val(localeString(parseFloat(total_interest).toFixed(DIGIT_PRECISION)));
        } else {
            jQuery('#total_interest').val(localeString(parseFloat(total_interest)));
        }
        jQuery('table#amortization').html(tableData);
    }

    jQuery('select[id=monthly-yearly]').change(function () {
        //jQuery("#term-months").val("");
        //jQuery("#term-years").val("");

        if ($(this).val() == 'months') {
            jQuery('#years-field').hide();
            jQuery('#months-field').show();
        }
        else {
            jQuery('#months-field').hide();
            jQuery('#years-field').show();
        };
    });

    jQuery('#start-date, #amount, #interest, #term-years, #term-months').keyup(calculate_monthly_payment);
    jQuery('#amount', 'downp').keyup(calculateDP);
    jQuery('#mortgageForm :checkbox').change(function () {
        if ($(this).is(':checked')) {
            ROUND_DIGITS = false;
            calculate_monthly_payment();
        } else {
            ROUND_DIGITS = true;
            calculate_monthly_payment();
        }
    });
	</script>
</html>
