# generate-services.ps1
param(
  [string]$SiteUrl = "https://repairqelectronics.com"
)

. "c:\Users\Home\OneDrive\Desktop\repairq\generate-pages.ps1"

# Service Page 1: VFD & Servo Drives
$vfdHtml = @"
<!DOCTYPE html>
<html lang="en-IN">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover">
  <meta name="theme-color" content="#3f6212">
  <title>VFD &amp; Servo Drive Repair Jhajjar | AC Inverter Diagnostics Delhi NCR</title>
  <meta name="description" content="Component-level VFD repair (0.5HP–500HP) in Jhajjar, Haryana. Danfoss, Siemens, ABB, Delta, Yaskawa IGBT &amp; gate driver rebuilds with 1-month warranty.">
  <link rel="canonical" href="$SiteUrl/services/vfd-repair-jhajjar/">
  <meta property="og:type" content="article">
  <meta property="og:locale" content="en_IN">
  <meta property="og:site_name" content="Repair Q Electronics">
  <meta property="og:url" content="$SiteUrl/services/vfd-repair-jhajjar/">
  <meta property="og:title" content="VFD &amp; Servo Drive Repair Jhajjar | AC Inverter Diagnostics Delhi NCR">
  <meta property="og:description" content="Component-level VFD repair (0.5HP–500HP) in Jhajjar, Haryana. Danfoss, Siemens, ABB, Delta, Yaskawa IGBT &amp; gate driver rebuilds with 1-month warranty.">
  <meta property="og:image" content="$SiteUrl/vfd-drives.webp">
  <link rel="icon" type="image/jpeg" href="/logo.jpg">
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Host+Grotesk:wght@400;500;600;700;800&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="/styles.css">

  <script type="application/ld+json">
  {
    "@context": "https://schema.org",
    "@graph": [
      {
        "@type": "BreadcrumbList",
        "itemListElement": [
          { "@type": "ListItem", "position": 1, "name": "Home", "item": "$SiteUrl/" },
          { "@type": "ListItem", "position": 2, "name": "Services", "item": "$SiteUrl/#services" },
          { "@type": "ListItem", "position": 3, "name": "VFD & Servo Drive Repair", "item": "$SiteUrl/services/vfd-repair-jhajjar/" }
        ]
      },
      {
        "@type": "Service",
        "name": "VFD & AC Inverter Drive Repair",
        "serviceType": "Industrial Electronics Component-Level Repair",
        "provider": {
          "@type": "ElectronicsRepairShop",
          "name": "Repair Q Electronics",
          "telephone": "+918307193825",
          "address": {
            "@type": "PostalAddress",
            "streetAddress": "Near Yadav Dharamshala, Circular Road",
            "addressLocality": "Jhajjar",
            "addressRegion": "Haryana",
            "postalCode": "124103",
            "addressCountry": "IN"
          }
        },
        "areaServed": ["Jhajjar", "Bahadurgarh", "Gurugram", "Manesar", "Delhi", "Rohtak", "Kharkhoda"],
        "description": "Component-level bench diagnostics, IGBT replacement, gate driver balancing, capacitor bank testing, and dynamic motor load rig testing for VFDs from 0.5 HP to 500 HP."
      },
      {
        "@type": "FAQPage",
        "mainEntity": [
          {
            "@type": "Question",
            "name": "Can a blown IGBT module in a VFD be repaired without replacing the entire drive?",
            "acceptedAnswer": {
              "@type": "Answer",
              "text": "Yes. At Repair Q Electronics, we desolder the blown IGBT power pack, inspect and replace damaged high-speed gate driver optocouplers, rebuild the pre-charge circuit, and verify switching waveforms before load testing. This saves 60% to 70% compared to purchasing a new drive."
            }
          },
          {
            "@type": "Question",
            "name": "What size drives do you repair at your Jhajjar workshop?",
            "acceptedAnswer": {
              "@type": "Answer",
              "text": "We repair AC variable frequency drives and servo motor controllers ranging from 0.5 HP fractional drives up to heavy industrial 500 HP inverters."
            }
          },
          {
            "@type": "Question",
            "name": "Do you provide on-site inspection for VFD breakdowns in Delhi NCR?",
            "acceptedAnswer": {
              "@type": "Answer",
              "text": "Yes. We offer zero visiting fee on-site inspection across industrial areas in Jhajjar, Bahadurgarh, Manesar, Gurugram, and Rohtak for critical plant line breakdowns."
            }
          }
        ]
      }
    ]
  }
  </script>
</head>
<body>
$(Get-HeaderHtml "vfd")

  <!-- Inner Hero -->
  <section class="inner-hero">
    <div class="container">
      <nav class="breadcrumbs-nav" aria-label="Breadcrumb">
        <a href="/">Home</a>
        <span class="breadcrumbs-sep">/</span>
        <a href="/#services">Services</a>
        <span class="breadcrumbs-sep">/</span>
        <span>VFD &amp; Servo Drive Repair</span>
      </nav>

      <div class="section-tag">
        <span class="section-tag-dot"></span>
        Component-Level AC &amp; Servo Inverter Service
      </div>

      <h1 class="inner-hero-h1">
        VFD &amp; Servo Drive Repair in Jhajjar &amp; Delhi NCR
      </h1>

      <p class="inner-hero-lead">
        Multi-brand component-level diagnostics, IGBT power module replacement, gate driver signal rebuilding, and full-load motor rig testing for 0.5 HP to 500 HP drives.
      </p>

      <!-- GEO / AI Direct Answer Card -->
      <div class="geo-answer-card">
        <div class="geo-answer-title">
          <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5"><polyline points="20 6 9 17 4 12"></polyline></svg>
          Direct Summary: How VFD Repair Works at Repair Q
        </div>
        <p class="geo-answer-text">
          Repair Q Electronics provides 24–48 hour rush component-level VFD repair in Jhajjar, Haryana, serving Delhi NCR factories. Rather than replacing expensive drive assemblies, lead technician Ajay rebuilds blown IGBT modules, high-speed gate driver optocouplers, DC bus capacitors, and switched-mode power supplies (SMPS) with a 1-month warranty, saving 60%–70% vs OEM replacement.
        </p>
      </div>

      <!-- Key Facts Grid -->
      <div class="key-facts-grid">
        <div class="key-fact-item">
          <div class="key-fact-label">Capacity Range</div>
          <div class="key-fact-value">0.5 HP to 500 HP</div>
        </div>
        <div class="key-fact-item">
          <div class="key-fact-label">Standard Turnaround</div>
          <div class="key-fact-value">48 to 72 Hours</div>
        </div>
        <div class="key-fact-item">
          <div class="key-fact-label">Emergency Rush</div>
          <div class="key-fact-value">24 Hours Priority</div>
        </div>
        <div class="key-fact-item">
          <div class="key-fact-label">Warranty</div>
          <div class="key-fact-value">1-Month Lab Warranty</div>
        </div>
        <div class="key-fact-item">
          <div class="key-fact-label">Visiting Charge</div>
          <div class="key-fact-value">?0 (Zero Visiting Fee)</div>
        </div>
        <div class="key-fact-item">
          <div class="key-fact-label">Direct Technician</div>
          <div class="key-fact-value">Ajay: 8307193825</div>
        </div>
      </div>
    </div>
  </section>

  <!-- Technical Content Section -->
  <section class="tech-content-section">
    <div class="container content-layout">
      <!-- Left Main Body -->
      <div class="content-body">
        <h2>Supported VFD &amp; Servo Drive Brands</h2>
        <p>
          We provide independent bench repairs for all global industrial inverter and servo controller brands used in manufacturing, textile, plastics, packaging, and CNC machinery:
        </p>
        <ul>
          <li><strong>Danfoss:</strong> VLT AutomationDrive FC301 / FC302, VLT 2800, Aqua Drive FC202, HVAC Drive FC102, Micro Drive FC51</li>
          <li><strong>Siemens:</strong> Sinamics G120, G120C, Micromaster 420 / 440, Simovert Masterdrives, Sinamics S120 servo drives</li>
          <li><strong>ABB:</strong> ACS355, ACS550, ACS580, ACS800, ACS880 heavy-duty industrial inverters</li>
          <li><strong>Delta:</strong> VFD-M, VFD-B, VFD-E, MS300, CP2000, ASDA-A2 / ASDA-B2 servo drives</li>
          <li><strong>Schneider Electric:</strong> Altivar ATV312, ATV610, ATV71, ATV630, ATV930 process drives</li>
          <li><strong>Yaskawa:</strong> A1000, V1000, GA700, J1000, Sigma-5 and Sigma-7 AC servo pack drives</li>
          <li><strong>Allen-Bradley:</strong> PowerFlex 525, PowerFlex 40, PowerFlex 753 / 755, Kinetix servo drives</li>
          <li><strong>Fuji Electric, Mitsubishi, Omron &amp; Inovance:</strong> Frenic-Mini/Multi, FR-D700 / FR-A800, 3G3MX2, MD series</li>
        </ul>

        <h2>Common VFD Faults &amp; Error Codes We Fix</h2>
        <p>
          Factory environments subject AC drives to heavy thermal cycles, voltage surges, conductive carbon dust, and phase imbalances. Our component-level diagnostics target the exact root causes of critical trips:
        </p>

        <div class="tech-table-wrap">
          <table class="tech-table">
            <thead>
              <tr>
                <th>Fault Code / Symptom</th>
                <th>Underlying Root Cause</th>
                <th>Component-Level Repair Solution</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td><strong>Overcurrent (OC / F0001 / AL01)</strong></td>
                <td>Punctured IGBT junction, shorted output phase, gate driver diode leakage.</td>
                <td>Replace IGBT bridge, rebuild 6-channel gate drive resistors and optocouplers.</td>
              </tr>
              <tr>
                <td><strong>Overvoltage (OV / DC Bus High)</strong></td>
                <td>Failed braking chopper transistor, defective DC bus voltage divider sensing circuit.</td>
                <td>Replace dynamic braking IGBT, calibrate high-precision voltage sensing op-amps.</td>
              </tr>
              <tr>
                <td><strong>Undervoltage (UV / Phase Loss)</strong></td>
                <td>Input bridge rectifier diode degradation, dry DC capacitor bank, open pre-charge relay.</td>
                <td>Replace 3-phase input rectifier module, test ESR of electrolytic capacitor bank.</td>
              </tr>
              <tr>
                <td><strong>Ground / Earth Fault (GF / EF)</strong></td>
                <td>Current sensor (Hall effect sensor) drift, insulation breakdown on output traces.</td>
                <td>Re-calibrate or replace Hall current sensors, apply conformal insulating coating.</td>
              </tr>
              <tr>
                <td><strong>No Display / Dead Power Supply</strong></td>
                <td>Blown primary SMPS switching IC (TOP/VIPer), shorted auxiliary transformer winding.</td>
                <td>Rebuild 24V/15V/5V SMPS control circuit, replace secondary filter capacitors.</td>
              </tr>
            </tbody>
          </table>
        </div>

        <h2>Our 4-Stage Precision VFD Repair Protocol</h2>
        <ol>
          <li><strong>Cold Circuit Safety &amp; Static Diagnostic:</strong> Comprehensive diode check on 3-phase input rectifier bridge and 6-pulse IGBT inverter stage. DC bus impedance analysis to prevent secondary short circuits upon power-up.</li>
          <li><strong>Micro-Soldering &amp; Component Replacement:</strong> High-temperature vacuum desoldering of damaged power modules. Replacement with OEM-grade IGBT modules, matched gate resistors, and isolated gate drivers (HCPL/TLP optocouplers).</li>
          <li><strong>Gate Waveform Balancing on Oscilloscope:</strong> Verification of symmetric PWM square waves across all upper and lower gate channels before applying high voltage to the DC link.</li>
          <li><strong>Dynamic Motor Load Rig Testing:</strong> Every drive is tested under continuous mechanical load coupled to our lab test motor. Current draw, thermal dissipation, ramp-up stability, and reverse torque are verified and documented.</li>
        </ol>

        <!-- Hindi/Hinglish Supporting Section -->
        <div class="hindi-section">
          <div class="hindi-title">?? VFD Drive Repair Kaise Hota Hai? (Hindi/Hinglish Summary)</div>
          <p class="hindi-text">
            Jab aapka VFD drive trip hota hai ya Overcurrent (OC), Overvoltage (OV), ya Dead Display dikhata hai, toh naya drive khareedne ki zaroorat nahi hai. Hum Jhajjar lab me drive ko kholkar multimeter aur oscilloscope par test karte hain. Blown IGBT module, gate driver circuit, aur DC bus capacitors ko replace karke dynamic motor load par chala kar test karte hain. 1 month ki complete warranty milti hai aur aapke 60% se 70% paise bachte hain.
          </p>
        </div>

        <h2>Frequently Asked Questions</h2>
        <div class="faq-accordion">
          <div class="faq-item">
            <h3 style="margin-top:0;">Can a blown IGBT module in a VFD be repaired without replacing the whole drive?</h3>
            <p>Yes. We desolder the damaged module, rebuild the gate driver resistors and isolation chips, and install a brand-new, thermally balanced power module. The drive operates with original factory performance at a fraction of the cost.</p>
          </div>
          <div class="faq-item">
            <h3>How do you test large horsepower drives?</h3>
            <p>We test drives up to 500 HP using our dynamic motor test rig, verifying current draw, thermal profile under infrared thermography, and regenerative braking chopper operation.</p>
          </div>
          <div class="faq-item">
            <h3>Do you offer pickup service from Gurgaon, Manesar, or Delhi?</h3>
            <p>Yes. For industrial customers in Gurugram, IMT Manesar, Rohtak, Bahadurgarh, and Delhi industrial belts, we offer direct pickup, drop-off, and zero visiting fee factory visits for critical line shutdowns.</p>
          </div>
        </div>
      </div>

      <!-- Right Sticky Sidebar -->
      <aside class="content-sidebar">
        <div class="sidebar-cta-card">
          <h3 class="sidebar-cta-title">VFD Down Right Now?</h3>
          <p class="sidebar-cta-desc">
            Speak directly with lead repair technician Ajay for instant fault diagnosis, turnaround timeline, and pick-up scheduling.
          </p>
          <a href="tel:8307193825" class="btn btn-primary" data-track="sidebar_phone">Call Ajay: 8307193825</a>
          <a href="https://wa.me/918307193825?text=Hello%20Ajay,%20I%20have%20a%20faulty%20VFD%20drive%20requiring%20repair" target="_blank" rel="noopener" class="btn btn-secondary" data-track="sidebar_whatsapp">WhatsApp Photo / Error Code</a>
          <a href="#quote" class="btn btn-secondary open-quote-modal" data-track="sidebar_quote">Request Formal Quote</a>

          <div style="margin-top: 24px; padding-top: 20px; border-top: 1px solid var(--hairline); font-size: 13px; color: var(--muted-text); line-height: 1.5;">
            ?? <strong>Workshop:</strong> Near Yadav Dharamshala, Circular Road, Jhajjar - 124103<br>
            ? <strong>Hours:</strong> Open Mon–Sun, 9:00 AM – 8:00 PM<br>
            ?? <strong>Protection:</strong> 1-Month Warranty Included
          </div>
        </div>
      </aside>
    </div>
  </section>

$(Get-FooterHtml)
</body>
</html>
"@

$vfdPath = Join-Path $ROOT_DIR "services\vfd-repair-jhajjar\index.html"
$vfdHtml | Set-Content -Path $vfdPath -Encoding UTF8
Write-Host "Created: $vfdPath"
# Helper function to generate standardized Service Page
function New-ServicePage {
    param(
        [string]$SubDir,
        [string]$Title,
        [string]$Description,
        [string]$CanonicalPath,
        [string]$ServiceName,
        [string]$HeroH1,
        [string]$HeroLead,
        [string]$GeoAnswer,
        [hashtable]$KeyFacts,
        [string]$SupportedBrandsHtml,
        [string]$FaultsTableHtml,
        [string]$ProcessStepsHtml,
        [string]$HindiSummary,
        [array]$Faqs
    )

    $canonicalUrl = "$SiteUrl$CanonicalPath"

    # Build Breadcrumbs Schema
    $breadcrumbsJson = @"
      {
        "@type": "BreadcrumbList",
        "itemListElement": [
          { "@type": "ListItem", "position": 1, "name": "Home", "item": "$SiteUrl/" },
          { "@type": "ListItem", "position": 2, "name": "Services", "item": "$SiteUrl/#services" },
          { "@type": "ListItem", "position": 3, "name": "$ServiceName", "item": "$canonicalUrl" }
        ]
      }
"@

    # Build Service Schema
    $serviceJson = @"
      {
        "@type": "Service",
        "name": "$ServiceName",
        "serviceType": "Industrial Electronics Component-Level Repair",
        "provider": {
          "@type": "ElectronicsRepairShop",
          "name": "Repair Q Electronics",
          "telephone": "+918307193825",
          "address": {
            "@type": "PostalAddress",
            "streetAddress": "Near Yadav Dharamshala, Circular Road",
            "addressLocality": "Jhajjar",
            "addressRegion": "Haryana",
            "postalCode": "124103",
            "addressCountry": "IN"
          }
        },
        "areaServed": ["Jhajjar", "Bahadurgarh", "Gurugram", "Manesar", "Delhi", "Rohtak", "Kharkhoda"],
        "description": "$Description"
      }
"@

    # Build FAQ Schema
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

    $keyFactsHtml = @"
      <div class="key-facts-grid">
        <div class="key-fact-item">
          <div class="key-fact-label">Service Type</div>
          <div class="key-fact-value">$($KeyFacts.Type)</div>
        </div>
        <div class="key-fact-item">
          <div class="key-fact-label">Standard Turnaround</div>
          <div class="key-fact-value">$($KeyFacts.Turnaround)</div>
        </div>
        <div class="key-fact-item">
          <div class="key-fact-label">Emergency Rush</div>
          <div class="key-fact-value">$($KeyFacts.Rush)</div>
        </div>
        <div class="key-fact-item">
          <div class="key-fact-label">Warranty</div>
          <div class="key-fact-value">1-Month Lab Warranty</div>
        </div>
        <div class="key-fact-item">
          <div class="key-fact-label">Visiting Charge</div>
          <div class="key-fact-value">?0 (Zero Visiting Fee)</div>
        </div>
        <div class="key-fact-item">
          <div class="key-fact-label">Lead Technician</div>
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
$serviceJson,
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
        <a href="/#services">Services</a>
        <span class="breadcrumbs-sep">/</span>
        <span>$ServiceName</span>
      </nav>

      <div class="section-tag">
        <span class="section-tag-dot"></span>
        Component-Level Industrial Repair
      </div>

      <h1 class="inner-hero-h1">$HeroH1</h1>
      <p class="inner-hero-lead">$HeroLead</p>

      <div class="geo-answer-card">
        <div class="geo-answer-title">
          <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5"><polyline points="20 6 9 17 4 12"></polyline></svg>
          Direct Summary: Component-Level Repair at Repair Q
        </div>
        <p class="geo-answer-text">$GeoAnswer</p>
      </div>

$keyFactsHtml
    </div>
  </section>

  <section class="tech-content-section">
    <div class="container content-layout">
      <div class="content-body">
        <h2>Supported Makes &amp; Equipment Types</h2>
        $SupportedBrandsHtml

        <h2>Common Faults &amp; Micro-Diagnostic Solutions</h2>
        $FaultsTableHtml

        <h2>Our Bench Repair &amp; Rig Testing Procedure</h2>
        $ProcessStepsHtml

        <div class="hindi-section">
          <div class="hindi-title">?? $ServiceName Repair Kaise Hota Hai? (Hindi/Hinglish Summary)</div>
          <p class="hindi-text">$HindiSummary</p>
        </div>

        <h2>Frequently Asked Questions</h2>
        <div class="faq-accordion">
$faqsCombinedHtml
        </div>
      </div>

      <aside class="content-sidebar">
        <div class="sidebar-cta-card">
          <h3 class="sidebar-cta-title">Need Immediate Diagnostic?</h3>
          <p class="sidebar-cta-desc">
            Speak directly with Ajay at Repair Q Electronics. Get fast turnaround, clear repair estimates, and free pickup options across Delhi NCR.
          </p>
          <a href="tel:8307193825" class="btn btn-primary" data-track="sidebar_phone">Call Ajay: 8307193825</a>
          <a href="https://wa.me/918307193825?text=Hello%20Ajay,%20I%20need%20a%20repair%20quote%20for%20$([uri]::EscapeDataString($ServiceName))" target="_blank" rel="noopener" class="btn btn-secondary" data-track="sidebar_whatsapp">WhatsApp Fault Details</a>
          <a href="#quote" class="btn btn-secondary open-quote-modal" data-track="sidebar_quote">Request Formal Quote</a>

          <div style="margin-top: 24px; padding-top: 20px; border-top: 1px solid var(--hairline); font-size: 13px; color: var(--muted-text); line-height: 1.5;">
            ?? <strong>Workshop:</strong> Near Yadav Dharamshala, Circular Road, Jhajjar - 124103<br>
            ? <strong>Hours:</strong> Open Mon–Sun, 9:00 AM – 8:00 PM<br>
            ?? <strong>Protection:</strong> 1-Month Warranty Included
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
