# generate-areas.ps1
param(
  [string]$SiteUrl = "https://repairqelectronics.com"
)

. "c:\Users\Home\OneDrive\Desktop\repairq\generate-pages.ps1"

function New-AreaPage {
    param(
        [string]$SubDir,
        [string]$Title,
        [string]$Description,
        [string]$CanonicalPath,
        [string]$AreaName,
        [string]$HeroH1,
        [string]$HeroLead,
        [string]$GeoAnswer,
        [hashtable]$LogisticsFacts,
        [string]$IndustriesHtml,
        [string]$LogisticsTableHtml,
        [string]$ServicesSummaryHtml,
        [string]$HindiSummary,
        [array]$Faqs
    )

    $canonicalUrl = "$SiteUrl$CanonicalPath"

    # Breadcrumbs Schema
    $breadcrumbsJson = @"
      {
        "@type": "BreadcrumbList",
        "itemListElement": [
          { "@type": "ListItem", "position": 1, "name": "Home", "item": "$SiteUrl/" },
          { "@type": "ListItem", "position": 2, "name": "Service Areas", "item": "$SiteUrl/areas/industrial-electronics-repair-delhi/" },
          { "@type": "ListItem", "position": 3, "name": "$AreaName", "item": "$canonicalUrl" }
        ]
      }
"@

    # LocalBusiness / Service Area Schema
    $serviceAreaJson = @"
      {
        "@type": "ElectronicsRepairShop",
        "name": "Repair Q Electronics - Serving $AreaName",
        "telephone": "+918307193825",
        "address": {
          "@type": "PostalAddress",
          "streetAddress": "Near Yadav Dharamshala, Circular Road",
          "addressLocality": "Jhajjar",
          "addressRegion": "Haryana",
          "postalCode": "124103",
          "addressCountry": "IN"
        },
        "areaServed": {
          "@type": "City",
          "name": "$AreaName"
        },
        "description": "$Description"
      }
"@

    # FAQ Schema
    $faqItemsJson = @()
    $faqItemsHtml = @()
    foreach ($f in $Faqs) {
        $q = $f.Q
        $a = $f.A
        $faqItemsJson += @"
          {
            "@type": "Question",
            "name": "$q",
            "acceptedAnswer": {
              "@type": "Answer",
              "text": "$a"
            }
          }
"@
        $faqItemsHtml += @"
          <div class="faq-item">
            <h3 style="margin-top:0;">$q</h3>
            <p>$a</p>
          </div>
"@
    }
    $faqsCombinedJson = $faqItemsJson -join ",`n"
    $faqsCombinedHtml = $faqItemsHtml -join "`n"

    $faqSchemaBlock = @"
      {
        "@type": "FAQPage",
        "mainEntity": [
$faqsCombinedJson
        ]
      }
"@

    $logisticsHtml = @"
      <div class="key-facts-grid">
        <div class="key-fact-item">
          <div class="key-fact-label">Lab Location</div>
          <div class="key-fact-value">Jhajjar (Near Yadav Dharamshala)</div>
        </div>
        <div class="key-fact-item">
          <div class="key-fact-label">Transit from Jhajjar</div>
          <div class="key-fact-value">$($LogisticsFacts.Transit)</div>
        </div>
        <div class="key-fact-item">
          <div class="key-fact-label">Service Mode</div>
          <div class="key-fact-value">Factory Pickup, Courier &amp; On-Site</div>
        </div>
        <div class="key-fact-item">
          <div class="key-fact-label">On-Site Visiting Fee</div>
          <div class="key-fact-value">?0 (No Visiting Fee)</div>
        </div>
        <div class="key-fact-item">
          <div class="key-fact-label">Lab Turnaround</div>
          <div class="key-fact-value">24–48h Rush / 48–72h Std</div>
        </div>
        <div class="key-fact-item">
          <div class="key-fact-label">Direct Technician</div>
          <div class="key-fact-value">Ajay: 8307193825</div>
        </div>
      </div>
"@

    $pageHtml = @"
<!DOCTYPE html>
<html lang="en-IN">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover">
  <meta name="theme-color" content="#3f6212">
  <title>$Title</title>
  <meta name="description" content="$Description">
  <link rel="canonical" href="$canonicalUrl">
  <meta property="og:type" content="article">
  <meta property="og:locale" content="en_IN">
  <meta property="og:site_name" content="Repair Q Electronics">
  <meta property="og:url" content="$canonicalUrl">
  <meta property="og:title" content="$Title">
  <meta property="og:description" content="$Description">
  <meta property="og:image" content="$SiteUrl/logo.jpg">
  <link rel="icon" type="image/jpeg" href="/logo.jpg">
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Host+Grotesk:wght@400;500;600;700;800&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="/styles.css">

  <script type="application/ld+json">
  {
    "@context": "https://schema.org",
    "@graph": [
$breadcrumbsJson,
$serviceAreaJson,
$faqSchemaBlock
    ]
  }
  </script>
</head>
<body>
$(Get-HeaderHtml $SubDir)

  <section class="inner-hero">
    <div class="container">
      <nav class="breadcrumbs-nav" aria-label="Breadcrumb">
        <a href="/">Home</a>
        <span class="breadcrumbs-sep">/</span>
        <a href="/areas/industrial-electronics-repair-delhi/">Service Areas</a>
        <span class="breadcrumbs-sep">/</span>
        <span>$AreaName</span>
      </nav>

      <div class="section-tag">
        <span class="section-tag-dot"></span>
        Industrial Service Coverage Area
      </div>

      <h1 class="inner-hero-h1">$HeroH1</h1>
      <p class="inner-hero-lead">$HeroLead</p>

      <div class="geo-answer-card">
        <div class="geo-answer-title">
          <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5"><polyline points="20 6 9 17 4 12"></polyline></svg>
          Direct Summary: How Service Works for $AreaName Factories
        </div>
        <p class="geo-answer-text">$GeoAnswer</p>
      </div>

$logisticsHtml
    </div>
  </section>

  <section class="tech-content-section">
    <div class="container content-layout">
      <div class="content-body">
        <h2>Key Industries &amp; Equipment Running in $AreaName</h2>
        $IndustriesHtml

        <h2>Service Logistics &amp; Turnaround from Jhajjar Lab</h2>
        $LogisticsTableHtml

        <h2>Component-Level Repairs We Provide for $AreaName</h2>
        $ServicesSummaryHtml

        <div class="hindi-section">
          <div class="hindi-title">?? $AreaName Se Equipment Kaise Bhejein? (Hindi/Hinglish Service Guide)</div>
          <p class="hindi-text">$HindiSummary</p>
        </div>

        <h2>Frequently Asked Questions ($AreaName)</h2>
        <div class="faq-accordion">
$faqsCombinedHtml
        </div>
      </div>

      <aside class="content-sidebar">
        <div class="sidebar-cta-card">
          <h3 class="sidebar-cta-title">Breakdown in $AreaName?</h3>
          <p class="sidebar-cta-desc">
            Connect directly with Ajay. Schedule on-site emergency inspection (Zero Visiting Charge) or book equipment pickup for bench repair.
          </p>
          <a href="tel:8307193825" class="btn btn-primary" data-track="area_phone">Call Ajay: 8307193825</a>
          <a href="https://wa.me/918307193825?text=Hello%20Ajay,%20I%20have%20an%20automation%20breakdown%20in%20$([uri]::EscapeDataString($AreaName))" target="_blank" rel="noopener" class="btn btn-secondary" data-track="area_whatsapp">WhatsApp Breakdown Details</a>
          <a href="#quote" class="btn btn-secondary open-quote-modal" data-track="area_quote">Request Repair Quote</a>

          <div style="margin-top: 24px; padding-top: 20px; border-top: 1px solid var(--hairline); font-size: 13px; color: var(--muted-text); line-height: 1.5;">
            ?? <strong>Workshop Base:</strong> Near Yadav Dharamshala, Circular Road, Jhajjar - 124103 (Haryana)<br>
            ? <strong>Hours:</strong> Open Mon–Sun, 9:00 AM – 8:00 PM<br>
            ?? <strong>Warranty:</strong> 1-Month Protection Included
          </div>
        </div>
      </aside>
    </div>
  </section>

$(Get-FooterHtml)
</body>
</html>
"@

    $destPath = Join-Path $ROOT_DIR "$SubDir\index.html"
    $pageHtml | Set-Content -Path $destPath -Encoding UTF8
    Write-Host "Created: $destPath"
}

# 1. Delhi Area Page
New-AreaPage `
  -SubDir "areas\industrial-electronics-repair-delhi" `
  -Title "Industrial Electronics &amp; VFD Repair Delhi | Bawana, Narela, Okhla" `
  -Description "Component-level repair of VFDs, PLCs, HMIs, and CNC controllers for Delhi factories in Bawana, Narela, Okhla, Mayapuri &amp; Mundka. Workshop in Jhajjar." `
  -CanonicalPath "/areas/industrial-electronics-repair-delhi/" `
  -AreaName "Delhi Industrial Belts" `
  -HeroH1 "Industrial Electronics &amp; VFD Repair Serving Delhi Factories" `
  -HeroLead "Component-level repair for VFD drives, PLCs, HMIs, injection moulding cards, and CNC press brake controllers. Serving manufacturing clusters in Bawana, Narela, Okhla, Mayapuri, and Mundka from our dedicated Jhajjar electronics laboratory." `
  -GeoAnswer "Repair Q Electronics serves manufacturing facilities throughout Delhi (including Bawana, Narela, Okhla, Mayapuri, and Mundka industrial areas). We are physically located in Jhajjar, Haryana (45–65 km from West/North Delhi via Western Peripheral Expressway and Rohtak Road). We offer door-to-door courier pickup, direct drop-off, and zero visiting fee on-site inspection for critical factory shutdowns, backed by a 1-month warranty and 60%–70% savings vs OEM replacement." `
  -LogisticsFacts @{
      Transit = "45–65 km (~1–1.5 hrs via KMP / Rohtak Rd)"
  } `
  -IndustriesHtml @"
<p>Delhi's diverse manufacturing pockets rely on industrial electronics across multiple sectors:</p>
<ul>
  <li><strong>Bawana &amp; Narela:</strong> Plastic injection moulding machines (Techmation boards, HRTC cards, servo hydraulic VFDs), blow moulding, packaging lines, and wire drawing machines.</li>
  <li><strong>Mayapuri &amp; Wazirpur:</strong> Metal stamping, sheet metal press brakes (Cybelec, Delem controllers), steel rolling mills, and CNC machine shops.</li>
  <li><strong>Okhla Industrial Area (Phases I, II, III):</strong> Pharmaceutical packaging, FMCG processing, commercial printing presses, and commercial building HVAC chillers (Carrier, Trane, York).</li>
  <li><strong>Mundka &amp; Nangloi:</strong> Footwear manufacturing, corrugated box production, and conveyor drive automation.</li>
</ul>
"@ `
  -LogisticsTableHtml @"
<div class="tech-table-wrap">
  <table class="tech-table">
    <thead>
      <tr>
        <th>Delhi Industrial Cluster</th>
        <th>Distance from Jhajjar Lab</th>
        <th>Recommended Transit Mode</th>
        <th>Turnaround</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><strong>Bawana Industrial Area</strong></td>
        <td>~52 km via KMP Expressway</td>
        <td>Direct Factory Pickup / Courier</td>
        <td>24h Rush / 48h Std</td>
      </tr>
      <tr>
        <td><strong>Narela Industrial Complex</strong></td>
        <td>~60 km via KMP Expressway</td>
        <td>Direct Factory Pickup / Courier</td>
        <td>24h Rush / 48h Std</td>
      </tr>
      <tr>
        <td><strong>Mundka &amp; Nangloi</strong></td>
        <td>~42 km via Rohtak Road (NH-10)</td>
        <td>Same-Day Pickup or Walk-In Drop</td>
        <td>24h Rush / 48h Std</td>
      </tr>
      <tr>
        <td><strong>Mayapuri &amp; Naraina</strong></td>
        <td>~55 km via Najafgarh / Ring Rd</td>
        <td>Courier (DTDC, BlueDart) or Pickup</td>
        <td>48h Standard</td>
      </tr>
      <tr>
        <td><strong>Okhla Industrial Area</strong></td>
        <td>~68 km via KMP / Gurugram Rd</td>
        <td>Direct Courier or Plant Pickup</td>
        <td>48h Standard</td>
      </tr>
    </tbody>
  </table>
</div>
"@ `
  -ServicesSummaryHtml @"
<p>We provide full component-level diagnostics for Delhi industrial plants:</p>
<ul>
  <li><strong>VFD &amp; AC Drives:</strong> 0.5 HP to 500 HP drives (Danfoss, Siemens, ABB, Delta, Schneider, Yaskawa) with IGBT replacements and dynamic motor load tests.</li>
  <li><strong>Press Brake &amp; CNC Units:</strong> Cybelec DNC, Delem DA series, and ESA controllers for Mayapuri and Bawana sheet metal plants.</li>
  <li><strong>Moulding Controller Cards:</strong> Techmation AK series, HRTC temperature cards, and Rexroth proportional valve amplifier cards for Bawana and Narela plastics units.</li>
  <li><strong>Commercial HVAC Chiller Boards:</strong> Carrier ISM, Trane, and York control cards for commercial facilities and packaging factories.</li>
</ul>
"@ `
  -HindiSummary "Delhi ke Bawana, Narela, Mundka aur Okhla factories ke liye hum fast courier aur pickup service provide karte hain. Hamari workshop Jhajjar me hai, jahan se KMP expressway se aana behad aasaan hai. Agar line emergency me band hai toh Ajay on-site factory inspection bhi karte hain bina kisi visiting charge ke." `
  -Faqs @(
    @{ Q = "Do you have a physical workshop in Delhi?"; A = "No. Our physical repair laboratory is exclusively located in Jhajjar, Haryana. We serve Delhi factories through rapid door-to-door courier, scheduled factory pickup, and direct on-site factory visits." },
    @{ Q = "How do Delhi factories send heavy VFDs or machines cards to your Jhajjar lab?"; A = "For units under 25 kg, factories commonly use fast couriers (BlueDart, DTDC, Trackon). For bulky heavy-horsepower drives, we coordinate direct factory pickup or you can drop it off at our workshop near Yadav Dharamshala, Circular Road, Jhajjar." }
  )

# 2. Gurugram Area Page
New-AreaPage `
  -SubDir "areas\industrial-electronics-repair-gurugram" `
  -Title "Industrial Electronics &amp; VFD Repair Gurugram | Udyog Vihar, Sec 37" `
  -Description "Component-level repair of VFDs, PLCs, HMIs &amp; HVAC chiller boards for Gurugram factories. Udyog Vihar, Sector 37 &amp; Dundahera. Lab located in Jhajjar." `
  -CanonicalPath "/areas/industrial-electronics-repair-gurugram/" `
  -AreaName "Gurugram (Gurgaon)" `
  -HeroH1 "Industrial Electronics &amp; VFD Repair Serving Gurugram" `
  -HeroLead "Component-level electronics diagnostics for manufacturing units in Udyog Vihar (Phases I–V), Sector 37 Pace City, Dundahera, and Behrampur. Workshop in Jhajjar with zero visiting charge for plant visits." `
  -GeoAnswer "Repair Q Electronics provides rapid component-level automation repair for manufacturing plants in Gurugram (including Udyog Vihar, Sector 37 Pace City, and Dundahera). Located in Jhajjar, Haryana (45–50 km via Jhajjar-Gurugram Road), we provide zero visiting fee on-site diagnostics, direct equipment pickup, and emergency 24-hour bench turnaround with a 1-month warranty on all repaired VFDs, HMIs, and PLCs." `
  -LogisticsFacts @{
      Transit = "45–50 km (~1 hour via Jhajjar-Gurugram Road / Farrukhnagar)"
  } `
  -IndustriesHtml @"
<p>Gurugram's industrial zones house leading precision engineering, automotive, and electronics manufacturers:</p>
<ul>
  <li><strong>Udyog Vihar (Phases I to V):</strong> Automotive component suppliers, electronics manufacturing, garment exports with computerized embroidery, and corporate IT parks running massive central HVAC chillers.</li>
  <li><strong>Sector 37 Pace City I &amp; II:</strong> Precision machining, auto electrical assemblies, plastic moulding, and pharmaceutical packaging.</li>
  <li><strong>Dundahera &amp; Behrampur:</strong> Stamping presses, automated material handling conveyors, and CNC machining centers.</li>
</ul>
"@ `
  -LogisticsTableHtml @"
<div class="tech-table-wrap">
  <table class="tech-table">
    <thead>
      <tr>
        <th>Gurugram Industrial Hub</th>
        <th>Route from Jhajjar Workshop</th>
        <th>Transit Time</th>
        <th>Service Available</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><strong>Udyog Vihar (Phases I–V)</strong></td>
        <td>Via Farrukhnagar &amp; Dwarka Expressway</td>
        <td>~55 minutes</td>
        <td>On-Site Visit (?0 Fee) / Pickup</td>
      </tr>
      <tr>
        <td><strong>Sector 37 (Pace City I &amp; II)</strong></td>
        <td>Via Jhajjar-Gurugram Rd / Hero Honda Chowk</td>
        <td>~45 minutes</td>
        <td>On-Site Visit (?0 Fee) / Pickup</td>
      </tr>
      <tr>
        <td><strong>Dundahera &amp; Old Delhi Rd</strong></td>
        <td>Via Farrukhnagar &amp; Old Delhi Road</td>
        <td>~50 minutes</td>
        <td>Factory Pickup / Rapid Courier</td>
      </tr>
    </tbody>
  </table>
</div>
"@ `
  -ServicesSummaryHtml @"
<p>Core automation equipment repaired for Gurugram clients:</p>
<ul>
  <li><strong>Industrial VFDs:</strong> Siemens Sinamics, Danfoss FC302, Yaskawa A1000, and ABB ACS880 drives.</li>
  <li><strong>Chiller Motherboards:</strong> Carrier ISM, Trane Tracer, and York OptiView for cyber hubs, hospitals, and industrial cooling plants.</li>
  <li><strong>HMI Panels:</strong> Siemens KTP700/KTP1200, Schneider Magelis, and Mitsubishi touch digitizer glass replacements.</li>
</ul>
"@ `
  -HindiSummary "Gurgaon ki Udyog Vihar aur Sector 37 factories ke liye Jhajjar workshop se travel time sirf 45–55 minutes hai. Agar aapki machine breakdown ho jaye, toh Ajay turant plant visit karte hain aur koi visiting charge nahi lagta. Faulty VFD ya card ko lab me test karke 1 month warranty ke saath diya jata hai." `
  -Faqs @(
    @{ Q = "How quickly can you attend an emergency breakdown in Udyog Vihar or Sector 37 Gurgaon?"; A = "Because our Jhajjar lab is connected via the Farrukhnagar corridor, we can arrive on-site within 60 to 90 minutes for urgent production-line shutdowns." },
    @{ Q = "Do you repair commercial HVAC chiller boards for Gurgaon corporate offices and malls?"; A = "Yes. We regularly repair Carrier ISM, Carrier IO boards, Trane Tracer cards, and York OptiView chiller control electronics." }
  )

# 3. IMT Manesar Area Page
New-AreaPage `
  -SubDir "areas\industrial-electronics-repair-manesar" `
  -Title "Industrial Electronics &amp; VFD Repair IMT Manesar | Automobile Hub" `
  -Description "Component-level repair of VFDs, servo drives, PLCs, and injection moulding cards for IMT Manesar auto-ancillary factories. Workshop in Jhajjar." `
  -CanonicalPath "/areas/industrial-electronics-repair-manesar/" `
  -AreaName "IMT Manesar" `
  -HeroH1 "Industrial Electronics &amp; VFD Repair Serving IMT Manesar" `
  -HeroLead "Component-level micro-soldering and bench diagnostics for auto-ancillary, tier-1/tier-2 suppliers, and plastics factories in IMT Manesar (Sectors 1 to 8). Workshop located in Jhajjar." `
  -GeoAnswer "Repair Q Electronics provides high-precision component-level electronics repair for auto-ancillary, stamping, and moulding factories across IMT Manesar, Haryana. Located approximately 40 km from Manesar via the Western Peripheral Expressway (KMP) and Farrukhnagar, we provide zero visiting fee factory visits, same-day pickup, and 24-hour rush bench turnaround with 1-month warranty on VFDs, servo pack drives, and Techmation machine cards." `
  -LogisticsFacts @{
      Transit = "40 km (~45 minutes via KMP Expressway / Farrukhnagar)"
  } `
  -IndustriesHtml @"
<p>IMT Manesar is one of India's premier automobile and manufacturing clusters:</p>
<ul>
  <li><strong>Automobile Assembly &amp; Tier-1/2 Suppliers:</strong> High-speed servo pack drives, robotic weld positioners, multi-axis motion controllers, and conveyor VFD systems.</li>
  <li><strong>Plastics &amp; Polymer Components:</strong> Hydraulic injection moulding machines with Techmation controllers, multi-zone HRTC temperature cards, and Rexroth proportional valve amplifier cards.</li>
  <li><strong>Sheet Metal &amp; Stamping:</strong> Heavy mechanical presses, hydraulic press brakes (Cybelec, Delem CNCs), and laser cutting machine power supplies.</li>
</ul>
"@ `
  -LogisticsTableHtml @"
<div class="tech-table-wrap">
  <table class="tech-table">
    <thead>
      <tr>
        <th>Manesar Sector</th>
        <th>Key Industries</th>
        <th>Response Time</th>
        <th>Available Services</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><strong>Sectors 1, 2 &amp; 3</strong></td>
        <td>Auto-ancillary &amp; Electronics</td>
        <td>~45 minutes</td>
        <td>On-Site Inspection (?0) / Pickup</td>
      </tr>
      <tr>
        <td><strong>Sectors 4 &amp; 5</strong></td>
        <td>Plastics &amp; Sheet Metal Fabrication</td>
        <td>~45 minutes</td>
        <td>On-Site Inspection (?0) / Pickup</td>
      </tr>
      <tr>
        <td><strong>Sectors 6, 7 &amp; 8</strong></td>
        <td>Heavy Engineering &amp; Logistics Hubs</td>
        <td>~50 minutes</td>
        <td>Emergency Breakdown Dispatch</td>
      </tr>
    </tbody>
  </table>
</div>
"@ `
  -ServicesSummaryHtml @"
<p>Specialized automation repairs for IMT Manesar plants:</p>
<ul>
  <li><strong>Servo Drives &amp; AC Inverters:</strong> Yaskawa Sigma-5/7, Delta ASDA, Siemens Sinamics, and Mitsubishi servo drives with motor load testing.</li>
  <li><strong>Injection Moulding Electronics:</strong> Techmation AK668/AK580, Haitian power cards, and HRTC hot runner controllers.</li>
  <li><strong>Press Brake CNCs:</strong> Cybelec DNC and Delem DA-52/DA-65W hydraulic bending synchronizers.</li>
</ul>
"@ `
  -HindiSummary "IMT Manesar ke auto-parts aur moulding plants ke liye hamara Jhajjar lab KMP Expressway ke bilkul pass hai. Stoppage ke samay Ajay 45 minutes me factory pahunch kar on-site diagnosis karte hain bina kisi visiting charge ke. 1 month warranty ke sath 60–70% bachat hoti hai." `
  -Faqs @(
    @{ Q = "How far is your Jhajjar workshop from IMT Manesar?"; A = "Our workshop is approximately 40 km from IMT Manesar, reachable in about 45 minutes via the KMP Expressway or Farrukhnagar route." },
    @{ Q = "Can you repair Yaskawa and Delta servo drives used in Manesar auto lines?"; A = "Yes. We replace blown power output modules, optical feedback buffers, and gate circuits with dynamic motor coupling verification." }
  )

# 4. Rohtak Area Page
New-AreaPage `
  -SubDir "areas\industrial-electronics-repair-rohtak" `
  -Title "Industrial Electronics &amp; VFD Repair Rohtak | Industrial Area &amp; IMT" `
  -Description "Component-level repair of VFDs, soft starters, PLCs, and textile/fastener machinery electronics in Rohtak, Haryana. Workshop in nearby Jhajjar." `
  -CanonicalPath "/areas/industrial-electronics-repair-rohtak/" `
  -AreaName "Rohtak" `
  -HeroH1 "Industrial Electronics &amp; VFD Repair Serving Rohtak" `
  -HeroLead "Component-level repair for industrial drives, soft starters, and machine electronics serving Rohtak Industrial Area, IMT Rohtak, and Sunrise Industrial Estate from our Jhajjar laboratory." `
  -GeoAnswer "Repair Q Electronics provides expert component-level industrial electronics repair for manufacturing units in Rohtak, Haryana. Physically located in neighbouring Jhajjar (only 35 km away via NH-334B), we offer the fastest turnaround in the region: same-day pickup, zero visiting fee factory visits, and 24–48 hour rush bench service with a 1-month repair warranty." `
  -LogisticsFacts @{
      Transit = "35 km (~35–40 minutes via NH-334B / Jhajjar-Rohtak Road)"
  } `
  -IndustriesHtml @"
<p>Rohtak's manufacturing ecosystem includes heavy engineering, automotive, and consumer manufacturing:</p>
<ul>
  <li><strong>IMT Rohtak &amp; Industrial Area:</strong> Automotive parts, nut/bolt fastener manufacturers, cold heading machinery, and metal forging presses.</li>
  <li><strong>Textile &amp; Spinning Mills:</strong> High-speed ring frames, winding machines, and multi-motor synchronized VFD drive banks.</li>
  <li><strong>Food &amp; Packaging:</strong> Dairy processing plants, cold storage compressor soft starters, and automated bottling lines.</li>
</ul>
"@ `
  -LogisticsTableHtml @"
<div class="tech-table-wrap">
  <table class="tech-table">
    <thead>
      <tr>
        <th>Rohtak Industrial Pocket</th>
        <th>Distance from Jhajjar</th>
        <th>Transit Time</th>
        <th>Support Model</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><strong>Rohtak Industrial Area (Delhi Rd)</strong></td>
        <td>~33 km via NH-334B</td>
        <td>~35 minutes</td>
        <td>On-Site (?0 Fee) / Same-Day Pickup</td>
      </tr>
      <tr>
        <td><strong>IMT Rohtak</strong></td>
        <td>~38 km via NH-334B</td>
        <td>~40 minutes</td>
        <td>On-Site (?0 Fee) / Same-Day Pickup</td>
      </tr>
      <tr>
        <td><strong>Sunrise Industrial Estate</strong></td>
        <td>~36 km via NH-334B</td>
        <td>~38 minutes</td>
        <td>Direct Drop-Off / Rapid Pickup</td>
      </tr>
    </tbody>
  </table>
</div>
"@ `
  -ServicesSummaryHtml @"
<p>Specialized automation services for Rohtak plants:</p>
<ul>
  <li><strong>VFD Drive Inverters:</strong> Danfoss, Siemens, Schneider, and ABB drives with full motor load rig certification.</li>
  <li><strong>Industrial Soft Starters:</strong> ABB PSTX, Siemens 3RW, and Schneider Altistart for heavy compressors, crushers, and pumps.</li>
  <li><strong>PLC &amp; HMI Hardware:</strong> Micro-soldering on power supply rails, communication transceivers, and touch digitizer replacements.</li>
</ul>
"@ `
  -HindiSummary "Rohtak ke udyogpatiyon ke liye Jhajjar sirf 35 km door hai NH-334B ke raste. Naya drive lene ki bajaye aap wahi component-level repair hamare paas 60–70% kam kharch me karwa sakte hain. Zero visiting fee ke sath Ajay Rohtak factories me visit karte hain." `
  -Faqs @(
    @{ Q = "How fast can you pick up equipment from Rohtak Industrial Area?"; A = "Because Rohtak is only 35 km from our Jhajjar lab, we provide same-day pickup within 2 to 3 hours of your call." },
    @{ Q = "Do you provide testing certificates with repaired drives?"; A = "Yes. Every repaired VFD and soft starter is tested on our dynamic motor test rig and dispatched with documented test parameters." }
  )

# 5. Kharkhoda Area Page
New-AreaPage `
  -SubDir "areas\industrial-electronics-repair-kharkhoda" `
  -Title "Industrial Electronics &amp; VFD Repair Kharkhoda | HSIIDC Industrial Area" `
  -Description "Component-level repair of VFDs, servo drives, PLCs &amp; CNC cards for Kharkhoda HSIIDC and Maruti Suzuki vendor ecosystem. Lab located in Jhajjar." `
  -CanonicalPath "/areas/industrial-electronics-repair-kharkhoda/" `
  -AreaName "Kharkhoda (HSIIDC)" `
  -HeroH1 "Industrial Electronics &amp; VFD Repair Serving Kharkhoda" `
  -HeroLead "Rapid component-level electronic troubleshooting for manufacturing units, supplier parks, and assembly facilities in HSIIDC Kharkhoda. Laboratory based in Jhajjar." `
  -GeoAnswer "Repair Q Electronics provides specialized component-level automation repair for factories in the rapidly expanding HSIIDC Kharkhoda industrial cluster. Located approximately 38 km away via the Western Peripheral Expressway (KMP), we offer zero visiting fee on-site inspection, scheduled pickup, and 24-hour rush bench diagnostics for VFD drives, servo controllers, and PLCs with a 1-month warranty." `
  -LogisticsFacts @{
      Transit = "38 km (~35–40 minutes via Western Peripheral Expressway / KMP)"
  } `
  -IndustriesHtml @"
<p>Kharkhoda is transforming into North India's largest automotive and engineering hub:</p>
<ul>
  <li><strong>Maruti Suzuki Plant &amp; Ancillary Ecosystem:</strong> Robotic manufacturing, automated press shops, body weld servo controllers, and paint shop ventilation drives.</li>
  <li><strong>Automotive Parts &amp; Battery Manufacturing:</strong> Electronic torque controllers, automated stamping feeds, and continuous conveyor inverters.</li>
  <li><strong>Warehousing &amp; Automated Logistics:</strong> Automated storage and retrieval systems (ASRS), motorized roller drives, and high-capacity freight elevator VFDs.</li>
</ul>
"@ `
  -LogisticsTableHtml @"
<div class="tech-table-wrap">
  <table class="tech-table">
    <thead>
      <tr>
        <th>Kharkhoda Sector / Hub</th>
        <th>Highway Route</th>
        <th>Transit Time</th>
        <th>Emergency Service</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><strong>HSIIDC Industrial Area Kharkhoda</strong></td>
        <td>Direct via KMP Expressway</td>
        <td>~35 minutes</td>
        <td>Zero Visiting Fee On-Site Dispatch</td>
      </tr>
      <tr>
        <td><strong>Maruti Suzuki Vendor Parks</strong></td>
        <td>Direct via KMP Expressway</td>
        <td>~40 minutes</td>
        <td>24h Rush Bench Diagnostics</td>
      </tr>
    </tbody>
  </table>
</div>
"@ `
  -ServicesSummaryHtml @"
<p>Key repair capabilities for Kharkhoda facilities:</p>
<ul>
  <li><strong>Heavy Horsepower VFDs:</strong> High-capacity inverters (up to 500 HP) with IGBT replacement and dynamic motor rig load testing.</li>
  <li><strong>Servo Drives &amp; Motion Cards:</strong> Micro-soldering of gate drivers, current sensors, and resolver/encoder feedback channels.</li>
  <li><strong>PLC Racks &amp; Remote I/O:</strong> Hardware component repairs on Siemens S7-1500/1200 and Allen-Bradley ControlLogix platforms.</li>
</ul>
"@ `
  -HindiSummary "Kharkhoda HSIIDC industrial area ke liye Jhajjar lab KMP Expressway ke jariye seedha juda hua hai. Factory me VFD trip ho ya automation board kharab ho, Ajay 35–40 minutes me on-site pahunch kar fault identify karte hain. Koi visiting charge nahi liya jata." `
  -Faqs @(
    @{ Q = "What is the transit time from your Jhajjar workshop to HSIIDC Kharkhoda?"; A = "Via the KMP Expressway, the distance is approximately 38 km and takes about 35 to 40 minutes under normal traffic." },
    @{ Q = "Can you repair heavy conveyor and paint-shop drives on an emergency basis?"; A = "Yes. We offer 24-hour priority rush turnaround for line-critical manufacturing equipment." }
  )

# 6. Bahadurgarh Area Page
New-AreaPage `
  -SubDir "areas\industrial-electronics-repair-bahadurgarh" `
  -Title "Industrial Electronics &amp; VFD Repair Bahadurgarh | M.I.E. Cluster" `
  -Description "Component-level repair of VFDs, PLCs, and injection moulding cards for Bahadurgarh M.I.E. footwear and engineering units. Lab in Jhajjar (28 km)." `
  -CanonicalPath "/areas/industrial-electronics-repair-bahadurgarh/" `
  -AreaName "Bahadurgarh (M.I.E.)" `
  -HeroH1 "Industrial Electronics &amp; VFD Repair Serving Bahadurgarh" `
  -HeroLead "Fastest component-level repair for Modern Industrial Estate (M.I.E. Part A &amp; B) and footwear/light engineering units in Bahadurgarh from our nearby Jhajjar laboratory." `
  -GeoAnswer "Repair Q Electronics provides rapid component-level automation repair for manufacturing units in Bahadurgarh, Haryana. Located just 28 km away via the Jhajjar-Bahadurgarh Road (less than 35 minutes transit), we offer same-day factory pickup, zero visiting fee on-site diagnostics, and 24-hour rush bench repair on VFDs, injection moulding cards, and PLCs with a 1-month warranty." `
  -LogisticsFacts @{
      Transit = "28 km (~30–35 minutes via Jhajjar-Bahadurgarh Road)"
  } `
  -IndustriesHtml @"
<p>Bahadurgarh's industrial ecosystem is known for footwear, light engineering, and plastics:</p>
<ul>
  <li><strong>M.I.E. Footwear Cluster:</strong> EVA and polyurethane (PU) injection moulding machines, vulcanizing presses, conveyor heaters, and cutting machines.</li>
  <li><strong>Light Engineering &amp; Metal Fabrication:</strong> Press brakes (Cybelec, Delem), sheet shears, mechanical presses, and automated CNC lathes.</li>
  <li><strong>Plastics &amp; Packaging:</strong> Multi-zone HRTC temperature cards, Techmation boards, and extrusion blow moulding VFD drives.</li>
</ul>
"@ `
  -LogisticsTableHtml @"
<div class="tech-table-wrap">
  <table class="tech-table">
    <thead>
      <tr>
        <th>Bahadurgarh Industrial Zone</th>
        <th>Distance from Jhajjar Lab</th>
        <th>Transit Time</th>
        <th>Service Option</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><strong>M.I.E. Part A</strong></td>
        <td>~28 km via Jhajjar-Bahadurgarh Rd</td>
        <td>~30 minutes</td>
        <td>On-Site (?0 Fee) / Rapid Pickup</td>
      </tr>
      <tr>
        <td><strong>M.I.E. Part B</strong></td>
        <td>~29 km via Jhajjar-Bahadurgarh Rd</td>
        <td>~32 minutes</td>
        <td>On-Site (?0 Fee) / Rapid Pickup</td>
      </tr>
      <tr>
        <td><strong>Sector 16 &amp; 17 Industrial Pocket</strong></td>
        <td>~30 km via Jhajjar-Bahadurgarh Rd</td>
        <td>~35 minutes</td>
        <td>Same-Day Pickup or Walk-In Drop</td>
      </tr>
    </tbody>
  </table>
</div>
"@ `
  -ServicesSummaryHtml @"
<p>Comprehensive repair offerings for Bahadurgarh factories:</p>
<ul>
  <li><strong>Injection Moulding Machine Cards:</strong> Techmation controllers, HRTC temperature cards, and Rexroth proportional valve amplifiers.</li>
  <li><strong>VFDs &amp; AC Inverters:</strong> Danfoss, Delta, Schneider, and Siemens inverters with dynamic load motor test certification.</li>
  <li><strong>HMI Panels:</strong> Touchscreen digitizer glass and LCD backlight repairs for Delta, Siemens, and Pro-face interfaces.</li>
</ul>
"@ `
  -HindiSummary "Bahadurgarh ke M.I.E. industrial area se hamara Jhajjar workshop sirf 28 km door hai. Footwear aur plastics machines ke cards ya VFDs ke liye Ajay turant plant visit karte hain aur visiting fee bilkul zero hai. Same day pickup aur 24 hours me repair service uplabdh hai." `
  -Faqs @(
    @{ Q = "What is the transit time from Bahadurgarh to your Jhajjar workshop?"; A = "Transit takes only 30 to 35 minutes along the direct Jhajjar-Bahadurgarh Road." },
    @{ Q = "Can you repair PU and EVA footwear injection moulding machine electronics?"; A = "Yes. We regularly repair temperature controller cards, proportional hydraulic valves, and main PLC boards for footwear machinery in Bahadurgarh." }
  )

Write-Host "All 6 Geographic Area pages generated successfully!"
