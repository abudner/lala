var sprzet_id = new Array();
var sprzet_cena = new Array();
var test = new Array();
var SprzetDoId = { "plyta" : 0,
				   "procesor" : 1,
				   "pamiec" : 2,
				   "pamiec2" : 3,
				   "karta_graf" : 4,
				   "dysk" : 5,
				   "dysk2" : 6,
				   "dysk3" : 7,
				   "obudowa" : 8,
				   "zasilacz" : 9,
				   "naped" : 10,
				   "karta_muz" : 11,
				   "mysz" : 12,
				   "klawiatura" : 13 };
var dysk_patt=new RegExp("^dysk[0-9]*$");
// 0 - Płyta  główna
// 1 - Procesor
// 2,3 - Pamiec
// 4 - Karta Graficzna
// 5,6,7 - Dysk
// 8 - Obudowa
// 9 - Zasilacz
// 10 - Napęd optyczny
// 11 - Karta muzyczna
// 12 - Mysz
// 13 - Klawiatura
for(i=0;i<=13;i++)
{
	sprzet_id[i] = new Array();
}
function sprzet(socket, co, per)
{
link = 'http://' + location.host + '/plyta.xml';
$.ajax({
type: "GET",
url: link,
dataType: "xml",
beforeSend: function(){
},
success: function(xml){
	var txt="";
	var i=0;
      $(xml).find('item').each(function(){
		if($(this).find('shop_count').text()>3)
		{
			txt+= '<option>' + $(this).find('name').text() + '</option>';
			sprzet_id[SprzetDoId[co]][i]=$(this).find('id').text();
			var id = $(this).find('id').text();
			sprzet_cena[id]=$(this).find('price_min').text();
			i++;
		}
		});
		if(per!=undefined) $("#" + per).html(txt);
		else $("#komp_" + co).html(txt);
      },
error :function(){
},
complete: function(){
if(per!=undefined) zmiana(0, 'per_cena', co);
else zmiana(0, co + '_cena', co);
},
error: function(oXMLHttpRequest, sTextStatus, oErrorThrown){alert(oErrorThrown.text());}
	  
});
}
function zmiana(index, where, co)
{
	$('#' + where).html(sprzet_cena[sprzet_id[SprzetDoId[co]][index]]);
	$('#suma').html($("[id$='cena']").sum());
}
function select_sock(socket)
{
	if(socket!='nie')
	{
		sprzet(socket, 'plyta');
		sprzet(socket, 'procesor');
		sprzet('', 'pamiec');
		sprzet('', 'pamiec2');
		$('.sock_depend').removeAttr("disabled"); 
	}
	else
	{
		$('.sock_depend').attr("disabled", true); 
		$(".sock_depend").html('<option> --- WYBIERZ SOCKET ! ---</option>');
		$(".sock_dep_price").html('');
	}
}
function select_per(per)
{
	if(per!='nie')
	{
		sprzet('', per, 'per');
		$('#per').removeAttr("disabled");
	}
	else
	{
		$('#per').attr("disabled", true);
		$('#per_cena').html('');
	}
}
$(document).ready(function() {
$('.sock_depend').attr("disabled", true); 
$.blockUI.defaults.message = "<img src='../assets/busy.gif'>";
$(document).ajaxStart($.blockUI).ajaxStop($.unblockUI);
sprzet('', 'karta_graf');
sprzet('', 'dysk');
sprzet('', 'dysk2');
sprzet('', 'dysk3');
sprzet('', 'obudowa');
sprzet('', 'zasilacz');
sprzet('', 'naped');
sprzet('', 'karta_muz');
sprzet('', 'klawiatura');
sprzet('', 'mysz');
$.Calculation.setDefaults({
	// a regular expression for detecting European-style formatted numbers
	reNumbers: /(-?\$?)(\d+(\.\d{3})*(,\d{1,})?|,\d{1,})/g
	// define a procedure to convert the string number into an actual usable number
	, cleanseNumber: function (v){
		// cleanse the number one more time to remove extra data (like commas and dollar signs)
		// use this for European numbers: v.replace(/[^0-9,\-]/g, "").replace(/,/g, ".")
		return v.replace(/[^0-9,\-]/g, "").replace(/,/g, ".");
	}
})

});

