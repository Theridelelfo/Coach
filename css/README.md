Documentazione CSS - Progetto Coach
Questo documento descrive in dettaglio tutte le regole e le classi presenti in style.css. Serve come guida per capire cosa fa ogni sezione e come applicarla correttamente.

Variabili globali (:root)
--primary-color: #0056b3 Colore blu scuro, usato per evidenziare elementi principali (header, link).

--secondary-color: #e9ecef Grigio chiaro, sfondo delle card.

--background-light: #f8f9fa Sfondo generale della pagina.

--text-dark: #343a40 Colore del testo principale.

Base del documento
body Font: Segoe UI / Tahoma / Geneva / Verdana. Line-height: 1.6 per leggibilità. Sfondo chiaro e testo scuro. Margini e padding azzerati.

Layout principale
.container Wrapper centrale. Larghezza max: 800px. Margine auto per centratura. Adattamento responsive: su schermi >600px diventa più ampio (90%).

Header
header Sfondo blu (primary-color). Testo bianco. Padding verticale 20px. Ombra leggera sotto (box-shadow).

header h1, header p Testo bianco, centrato.

Griglia link (Launchpad Cards)
.grid Layout flessibile. Mobile: colonna singola (flex-direction: column). Desktop: griglia a più colonne (flex-wrap + justify-content). Gap tra elementi: 15px.

.link-card Card cliccabile (link). Sfondo grigio chiaro (secondary-color). Bordo arrotondato, ombra leggera. Testo centrato, bold, blu (primary-color). Hover: sfondo più scuro, bordo blu, leggera animazione (translateY -2px). Responsive: max 400px, due colonne su desktop.

Pulsanti (Launchpad)
.container-pulsanti Layout a griglia per pulsanti. Desktop: 2 colonne (grid-template-columns: 1fr 1fr). Mobile: 1 colonna (@media max-width: 600px). Gap: 10px. Max-width: 600px, centrato.

.container-pulsanti button Larghezza 100%. Padding 12px. Font-size 16px. Adattati automaticamente alla griglia.

Footer
footer Testo centrato. Padding 20px. Font-size 0.9em. Bordo superiore grigio chiaro. Padding laterale aggiunto (10px).

Responsività
Mobile (<600px) .grid → colonna singola. .container-pulsanti → una colonna.

Desktop (>600px) .grid → layout a più colonne. .container-pulsanti → due colonne.

Note di utilizzo
Usa <main class="container"> per il contenuto principale.

Per pulsanti multipli, racchiudili in <main class="container container-pulsanti">.

Per link importanti, usa <a class="link-card">.

Mantieni header e footer per coerenza visiva.

