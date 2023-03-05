<h2>Line coding technique</h2>
<b>NRZ_L:</b><br>
0 -> 1<br>
1 -> -1<br>
<br><br>
<b>NRZ_I:<b><br>
0 -> state<br>
1 -> -state(state change)<br>
<br><br>
<b>AMI:</b><br>
0 -> 0<br>
1 -> oposite of last non zero state<br>
<br><br>

<b>MLT-3:</b><br>
0 -> state<br>
1 ->  if(data==0)->opposite of last non zero<br>
	else -> zero<br>
<br><br>
<b><big>Middle of the transition</big></b><br><br>
<b>RZ:</b><br>
0 -> -1 to 0<br>
1 -> 1 to 0<br>

<b>Manchester:</b><br>
0 -> -1 to +1<br>
1 -> 1 to -1<br>
<br><br>
<b>Diff Manchester:</b><br>
0 -> starting & ending state same<br>
1 -> starting & ending state different<br>
	





