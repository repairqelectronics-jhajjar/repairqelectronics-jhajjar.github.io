# generate-supporting.ps1
param(
  [string]$SiteUrl = "https://repairqelectronics.com"
)

. "c:\Users\Home\OneDrive\Desktop\repairq\generate-pages.ps1"

# 1. About Page
$aboutHtml = @"
<!DOCTYPE html>
<html lang="en-IN">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover">
  <meta name="theme-color" content="#3f6212">
  <title>About Repair Q Electronics | Lead Engineer Ajay &amp; Jhajjar Lab</title>
  <meta name="description" content="Learn about Repair Q Electronics, Jhajjar. 5+ years of component-level industrial electronics repair, dynamic motor test rigs, and multi-brand expertise.">
  <link rel="canonical" href="$SiteUrl/about/">
  <meta property="og:type" content="website">
  <meta property="og:locale" content="en_IN">
  <meta property="og:site_name" content="Repair Q Electronics">
  <meta property="og:url" content="$SiteUrl/about/">
  <meta property="og:title" content="About Repair Q Electronics | Lead Engineer Ajay &amp; Jhajjar Lab">
  <meta property="og:description" content="Learn about Repair Q Electronics, Jhajjar. 5+ years of component-level industrial electronics repair, dynamic motor test rigs, and multi-brand expertise.">
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
      {
        "@type": "BreadcrumbList",
        "itemListElement": [
          { "@type": "ListItem", "position": 1, "name": "Home", "item": "$SiteUrl/" },
          { "@type": "ListItem", "position": 2, "name": "About", "item": "$SiteUrl/about/" }
        ]
      },
      {
        "@type": "AboutPage",
        "name": "About Repair Q Electronics",
        "description": "Background, technical credentials, and testing infrastructure of Repair Q Electronics in Jhajjar, Haryana.",
        "mainEntity": {
          "@type": "Person",
          "name": "Ajay",
          "jobTitle": "Lead Electronics Repair Engineer & Proprietor",
          "worksFor": {
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
          }
        }
      }
    ]
  }
  </script>
</head>
<body>
$(Get-HeaderHtml "about")

  <section class="inner-hero">
    <div class="container">
      <nav class="breadcrumbs-nav" aria-label="Breadcrumb">
        <a href="/">Home</a>
        <span class="breadcrumbs-sep">/</span>
        <span>About Us</span>
      </nav>

      <div class="section-tag">
        <span class="section-tag-dot"></span>
        Technical Leadership &amp; Facility
      </div>

      <h1 class="inner-hero-h1">About Repair Q Electronics</h1>
      <p class="inner-hero-lead">
        Founded and led by industrial electronics engineer Ajay, Repair Q Electronics is an independent laboratory dedicated to micro-soldering, IGBT/SCR module rebuilds, and dynamic load testing for factory automation in Haryana and Delhi NCR.
      </p>

      <div class="geo-answer-card">
        <div class="geo-answer-title">
          <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5"><polyline points="20 6 9 17 4 12"></polyline></svg>
          Direct Summary: Who We Are
        </div>
        <p class="geo-answer-text">
          Repair Q Electronics is an independent industrial automation electronics laboratory based in Jhajjar, Haryana. With over 5 years of specialized bench repair experience, proprietor Ajay repairs VFDs (0.5–500 HP), PLCs, HMIs, CNC controllers, and HVAC chiller boards at the component level. Operating 7 days a week (9 AM – 8 PM) with zero visiting fees in primary service zones, we provide 60%–70% cost savings over OEM replacement, backed by a 1-month warranty.
        </p>
      </div>

      <div class="key-facts-grid">
        <div class="key-fact-item">
          <div class="key-fact-label">Proprietor &amp; Lead Engineer</div>
          <div class="key-fact-value">Ajay (5+ Years Experience)</div>
        </div>
        <div class="key-fact-item">
          <div class="key-fact-label">Physical Workshop</div>
          <div class="key-fact-value">Circular Road, Jhajjar, Haryana</div>
        </div>
        <div class="key-fact-item">
          <div class="key-fact-label">Operating Schedule</div>
          <div class="key-fact-value">Monday to Sunday (9 AM – 8 PM)</div>
        </div>
        <div class="key-fact-item">
          <div class="key-fact-label">Standard Warranty</div>
          <div class="key-fact-value">1-Month Lab Guarantee</div>
        </div>
      </div>
    </div>
  </section>

  <section class="tech-content-section">
    <div class="container content-layout">
      <div class="content-body">
        <h2>Our Engineering Philosophy: True Component-Level Repair</h2>
        <p>
          When an industrial VFD or automation card fails, OEM service representatives typically recommend replacing the entire complete unit. This creates astronomical costs, import delays of 4 to 8 weeks, and unnecessary electronic waste.
        </p>
        <p>
          At <strong>Repair Q Electronics</strong>, we isolate the exact micro-components that have failed — such as shorted IGBT modules, degraded gate optocouplers, dry electrolytic capacitor banks, blown switching power supply ICs, or damaged RS-485 transceiver chips. By replacing only the damaged components with high-grade equivalents, we restore the original drive to factory operating parameters at a fraction of the cost.
        </p>

        <h2>Laboratory Bench Diagnostic Infrastructure</h2>
        <p>Our workshop in Jhajjar is equipped with specialized instruments specifically designed for high-power electronics troubleshooting:</p>
        <ul>
          <li><strong>Digital Storage Oscilloscopes (DSO):</strong> Used for checking high-frequency PWM switching symmetry across upper and lower gate driver circuits.</li>
          <li><strong>Dynamic Motor Load Test Rig:</strong> A dedicated bench testing motor loaded dynamically to verify torque stability, current draw, and thermal performance under realistic operating stress.</li>
          <li><strong>Infrared Thermal Imaging:</strong> Locating microscopic circuit hot-spots, leaking SMD ceramic capacitors, and uneven IGBT thermal transfer.</li>
          <li><strong>Micro-Soldering &amp; Hot-Air Rework Stations:</strong> Precision desoldering of multi-pin surface-mount devices (SMD), QFP microprocessors, and high-current PCB copper busbars.</li>
          <li><strong>Insulation &amp; ESR Testers:</strong> High-voltage Megger insulation resistance testing and in-circuit equivalent series resistance (ESR) capacitor health analysis.</li>
        </ul>

        <h2>Commitment to Transparency &amp; No-Risk Service</h2>
        <ul>
          <li><strong>Zero Visiting Fee:</strong> We charge ?0 visiting fees for factory breakdowns across our primary service zones (Jhajjar, Bahadurgarh, Rohtak, Gurugram, Manesar, Kharkhoda).</li>
          <li><strong>No-Fix, No-Fee Guarantee:</strong> If an unserviceable condition prevents a reliable repair, you pay nothing for diagnostics.</li>
          <li><strong>1-Month Lab Warranty:</strong> Every repaired unit is sealed with our lab warranty mark and covered for 30 days.</li>
        </ul>
      </div>

      <aside class="content-sidebar">
        <div class="sidebar-cta-card">
          <h3 class="sidebar-cta-title">Consult Lead Engineer Ajay</h3>
          <p class="sidebar-cta-desc">
            Discuss your equipment fault, error code, or plant breakdown directly with Ajay.
          </p>
          <a href="tel:8307193825" class="btn btn-primary" data-track="about_phone">Call Ajay: 8307193825</a>
          <a href="https://wa.me/918307193825?text=Hello%20Ajay,%20I%20would%20like%20to%20consult%20regarding%20an%20industrial%20repair" target="_blank" rel="noopener" class="btn btn-secondary" data-track="about_whatsapp">WhatsApp Ajay</a>
          <a href="/contact/" class="btn btn-secondary">Workshop Directions</a>
        </div>
      </aside>
    </div>
  </section>

$(Get-FooterHtml)
</body>
</html>
"@

$aboutPath = Join-Path $ROOT_DIR "about\index.html"
$aboutHtml | Set-Content -Path $aboutPath -Encoding UTF8
Write-Host "Created: $aboutPath"

# 2. Contact Page
$contactHtml = @"
<!DOCTYPE html>
<html lang="en-IN">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover">
  <meta name="theme-color" content="#3f6212">
  <title>Contact Repair Q Electronics | Workshop in Jhajjar, Haryana</title>
  <meta name="description" content="Contact Repair Q Electronics in Jhajjar, Haryana. Phone: +91 8307193825. Open Mon–Sun 9 AM – 8 PM. Serving Delhi NCR with zero visiting fee on-site visits.">
  <link rel="canonical" href="$SiteUrl/contact/">
  <meta property="og:type" content="website">
  <meta property="og:locale" content="en_IN">
  <meta property="og:site_name" content="Repair Q Electronics">
  <meta property="og:url" content="$SiteUrl/contact/">
  <meta property="og:title" content="Contact Repair Q Electronics | Workshop in Jhajjar, Haryana">
  <meta property="og:description" content="Contact Repair Q Electronics in Jhajjar, Haryana. Phone: +91 8307193825. Open Mon–Sun 9 AM – 8 PM. Serving Delhi NCR with zero visiting fee on-site visits.">
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
      {
        "@type": "BreadcrumbList",
        "itemListElement": [
          { "@type": "ListItem", "position": 1, "name": "Home", "item": "$SiteUrl/" },
          { "@type": "ListItem", "position": 2, "name": "Contact", "item": "$SiteUrl/contact/" }
        ]
      },
      {
        "@type": "ContactPage",
        "name": "Contact Repair Q Electronics",
        "description": "Workshop address, phone, WhatsApp, and operating hours for Repair Q Electronics in Jhajjar, Haryana.",
        "mainEntity": {
          "@type": "ElectronicsRepairShop",
          "name": "Repair Q Electronics",
          "telephone": "+918307193825",
          "email": "repairqelectronics@gmail.com",
          "address": {
            "@type": "PostalAddress",
            "streetAddress": "Near Yadav Dharamshala, Circular Road",
            "addressLocality": "Jhajjar",
            "addressRegion": "Haryana",
            "postalCode": "124103",
            "addressCountry": "IN"
          },
          "geo": {
            "@type": "GeoCoordinates",
            "latitude": 28.6083,
            "longitude": 76.6570
          },
          "openingHours": "Mo-Su 09:00-20:00"
        }
      }
    ]
  }
  </script>
</head>
<body>
$(Get-HeaderHtml "contact")

  <section class="inner-hero">
    <div class="container">
      <nav class="breadcrumbs-nav" aria-label="Breadcrumb">
        <a href="/">Home</a>
        <span class="breadcrumbs-sep">/</span>
        <span>Contact</span>
      </nav>

      <div class="section-tag">
        <span class="section-tag-dot"></span>
        Direct Support &amp; Workshop Directions
      </div>

      <h1 class="inner-hero-h1">Contact Repair Q Electronics</h1>
      <p class="inner-hero-lead">
        Connect directly with lead technician Ajay. Schedule a zero-visiting-fee on-site inspection, request equipment pickup, or visit our laboratory workshop in Jhajjar.
      </p>

      <div class="geo-answer-card">
        <div class="geo-answer-title">
          <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5"><polyline points="20 6 9 17 4 12"></polyline></svg>
          Direct Contact Information
        </div>
        <p class="geo-answer-text">
          <strong>Proprietor &amp; Lead Engineer:</strong> Ajay &bull; <strong>Direct Phone / WhatsApp:</strong> +91 83071 93825 &bull; <strong>Email:</strong> repairqelectronics@gmail.com &bull; <strong>Workshop Address:</strong> Near Yadav Dharamshala, Circular Road, Jhajjar - 124103 (Haryana) &bull; <strong>Hours:</strong> Monday to Sunday, 9:00 AM to 8:00 PM IST.
        </p>
      </div>

      <div class="key-facts-grid">
        <div class="key-fact-item">
          <div class="key-fact-label">Phone &amp; WhatsApp</div>
          <div class="key-fact-value"><a href="tel:8307193825" style="color:var(--primary-text);text-decoration:none;">+91 83071 93825</a></div>
        </div>
        <div class="key-fact-item">
          <div class="key-fact-label">Email Support</div>
          <div class="key-fact-value"><a href="mailto:repairqelectronics@gmail.com" style="color:var(--primary-text);text-decoration:none;">repairqelectronics@gmail.com</a></div>
        </div>
        <div class="key-fact-item">
          <div class="key-fact-label">Operating Schedule</div>
          <div class="key-fact-value">Open All 7 Days (9 AM – 8 PM)</div>
        </div>
        <div class="key-fact-item">
          <div class="key-fact-label">On-Site Visiting Fee</div>
          <div class="key-fact-value">?0 (No Visiting Fee in Service Area)</div>
        </div>
      </div>
    </div>
  </section>

  <section class="tech-content-section">
    <div class="container content-layout">
      <div class="content-body">
        <h2>How to Reach Our Jhajjar Workshop</h2>
        <p>
          Our repair facility is centrally located on Circular Road in Jhajjar, offering easy arterial highway connectivity for factory transport and drop-offs:
        </p>
        <ul>
          <li><strong>From Delhi / Bahadurgarh:</strong> Take Rohtak Road (NH-10) to Bahadurgarh, then continue directly on the Jhajjar-Bahadurgarh Road (~28 km from Bahadurgarh).</li>
          <li><strong>From Gurugram / Manesar:</strong> Take the Western Peripheral Expressway (KMP) or follow the Jhajjar-Gurugram Road via Farrukhnagar (~45 km).</li>
          <li><strong>From Rohtak:</strong> Take NH-334B directly south to Jhajjar (~35 km, under 40 minutes).</li>
          <li><strong>Landmark:</strong> Near Yadav Dharamshala, Circular Road, Jhajjar, Haryana 124103.</li>
        </ul>

        <h2>Courier &amp; Transport Guidelines</h2>
        <p>If you are shipping equipment via courier from out-of-area plants:</p>
        <ul>
          <li><strong>Accepted Couriers:</strong> BlueDart, DTDC, Delhivery, Trackon, and local transport logistics.</li>
          <li><strong>Packaging Advice:</strong> Wrap electronic cards in anti-static ESD bubble wrap and pack securely with high-density foam cushioning.</li>
          <li><strong>Included Documentation:</strong> Please enclose a job sheet stating the observed error code, input voltage, and contact person phone number.</li>
        </ul>
      </div>

      <aside class="content-sidebar">
        <div class="sidebar-cta-card">
          <h3 class="sidebar-cta-title">Send a Direct Message</h3>
          <p class="sidebar-cta-desc">
            Immediate emergency response directly from Ajay for critical factory line stops.
          </p>
          <a href="tel:8307193825" class="btn btn-primary" data-track="contact_phone">Call +91 8307193825</a>
          <a href="https://wa.me/918307193825?text=Hello%20Ajay,%20I%20am%20contacting%20you%20regarding%20an%20equipment%20repair" target="_blank" rel="noopener" class="btn btn-secondary" data-track="contact_whatsapp">WhatsApp Us Directly</a>
          <a href="#quote" class="btn btn-secondary open-quote-modal" data-track="contact_quote">Submit Quote Form</a>
        </div>
      </aside>
    </div>
  </section>

$(Get-FooterHtml)
</body>
</html>
"@

$contactPath = Join-Path $ROOT_DIR "contact\index.html"
$contactHtml | Set-Content -Path $contactPath -Encoding UTF8
Write-Host "Created: $contactPath"

# 3. Resource Guide: Repair vs Replace VFD
$resourceHtml = @"
<!DOCTYPE html>
<html lang="en-IN">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover">
  <meta name="theme-color" content="#3f6212">
  <title>VFD Repair vs Replace Cost Guide | Industrial Electronics Analysis India</title>
  <meta name="description" content="Technical and economic comparison: Should you repair or replace a faulty industrial VFD drive? Save 60%–70% with component-level repair in India.">
  <link rel="canonical" href="$SiteUrl/resources/repair-vs-replace-vfd/">
  <meta property="og:type" content="article">
  <meta property="og:locale" content="en_IN">
  <meta property="og:site_name" content="Repair Q Electronics">
  <meta property="og:url" content="$SiteUrl/resources/repair-vs-replace-vfd/">
  <meta property="og:title" content="VFD Repair vs Replace Cost Guide | Industrial Electronics Analysis India">
  <meta property="og:description" content="Technical and economic comparison: Should you repair or replace a faulty industrial VFD drive? Save 60%–70% with component-level repair in India.">
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
          { "@type": "ListItem", "position": 2, "name": "Resources", "item": "$SiteUrl/resources/repair-vs-replace-vfd/" },
          { "@type": "ListItem", "position": 3, "name": "VFD Repair vs Replace Guide", "item": "$SiteUrl/resources/repair-vs-replace-vfd/" }
        ]
      },
      {
        "@type": "Article",
        "headline": "VFD Repair vs. Replace: A Plant Maintenance Guide for Indian Manufacturing",
        "author": {
          "@type": "Person",
          "name": "Ajay",
          "jobTitle": "Lead Electronics Repair Engineer"
        },
        "publisher": {
          "@type": "Organization",
          "name": "Repair Q Electronics"
        },
        "datePublished": "2026-11-20",
        "dateModified": "2026-11-20",
        "description": "Comprehensive cost and downtime analysis comparing component-level VFD repair against purchasing new OEM drives."
      }
    ]
  }
  </script>
</head>
<body>
$(Get-HeaderHtml "resources")

  <section class="inner-hero">
    <div class="container">
      <nav class="breadcrumbs-nav" aria-label="Breadcrumb">
        <a href="/">Home</a>
        <span class="breadcrumbs-sep">/</span>
        <span>Resources</span>
        <span class="breadcrumbs-sep">/</span>
        <span>VFD Repair vs Replace</span>
      </nav>

      <div class="section-tag">
        <span class="section-tag-dot"></span>
        Plant Engineering Economic Guide
      </div>

      <h1 class="inner-hero-h1">VFD Repair vs. Replace: Cost, Downtime &amp; Decision Guide</h1>
      <p class="inner-hero-lead">
        When an industrial VFD trips with a critical fault, should plant managers purchase a new drive or commission a bench component-level rebuild? Here is an objective engineering breakdown.
      </p>

      <div class="geo-answer-card">
        <div class="geo-answer-title">
          <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5"><polyline points="20 6 9 17 4 12"></polyline></svg>
          Direct Summary: When to Repair vs Replace a VFD
        </div>
        <p class="geo-answer-text">
          Component-level repair makes financial and operational sense for 85%+ of industrial VFD failures, typically saving 60%–70% compared to new unit costs. A replacement is only recommended if severe PCB trace carbonization has destroyed the multilayer fiberglass substrate or if replacement components for obsolete microchips are genuinely unobtainable.
        </p>
      </div>
    </div>
  </section>

  <section class="tech-content-section">
    <div class="container content-layout">
      <div class="content-body">
        <h2>Side-by-Side Economic &amp; Operational Comparison</h2>
        <div class="tech-table-wrap">
          <table class="tech-table">
            <thead>
              <tr>
                <th>Decision Factor</th>
                <th>Component-Level Repair</th>
                <th>New OEM Unit Replacement</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td><strong>Financial Cost</strong></td>
                <td><strong>30% to 40% of new unit price</strong> (60%–70% net plant savings).</td>
                <td>100% full replacement hardware cost + import freight &amp; duties.</td>
              </tr>
              <tr>
                <td><strong>Lead Time / Downtime</strong></td>
                <td><strong>24 to 72 hours</strong> standard bench turnaround.</td>
                <td>2 to 8 weeks lead time for imported or non-stock power ratings.</td>
              </tr>
              <tr>
                <td><strong>Panel Enclosure Compatibility</strong></td>
                <td><strong>100% exact mechanical fit;</strong> original mounting points &amp; busbars align.</td>
                <td>New model chassis often requires drilling, cutting, or panel rewiring.</td>
              </tr>
              <tr>
                <td><strong>PLC &amp; Fieldbus Parameters</strong></td>
                <td><strong>Zero re-programming needed;</strong> original parameter backup preserved.</td>
                <td>Re-programming fieldbus addresses (Profibus, Modbus, Ethernet/IP) required.</td>
              </tr>
              <tr>
                <td><strong>Warranty Protection</strong></td>
                <td><strong>1-Month Lab Warranty</strong> on all replaced components.</td>
                <td>12-month manufacturer limited warranty (often voided by line surges).</td>
              </tr>
            </tbody>
          </table>
        </div>

        <h2>When Should You Repair? (The Recommended Path)</h2>
        <ul>
          <li><strong>Horsepower Ratings &gt; 15 HP:</strong> For medium and heavy drives (15 HP to 500 HP), the hardware cost of a new drive is substantial. Repairing blown IGBT modules, gate drivers, and capacitors saves hundreds of thousands of rupees.</li>
          <li><strong>Discontinued or Obsolete Drive Models:</strong> Legacy series (e.g., Danfoss VLT 2800, Siemens Micromaster 440, ABB ACS550) are no longer manufactured. Repairing the existing drive avoids a costly redesign of the entire electrical cabinet.</li>
          <li><strong>Urgent Line Breakdown:</strong> When factory downtime costs thousands of rupees per hour, a 24-hour repair avoids weeks of waiting for OEM shipments.</li>
        </ul>

        <h2>When Should You Replace?</h2>
        <ul>
          <li><strong>Catastrophic PCB Carbonization:</strong> When high-energy flashover causes conductive carbon fire across the internal multilayer glass epoxy PCB layers, rebuilding the insulation is unviable.</li>
          <li><strong>Fractional Sub-0.5 HP Commodity Drives:</strong> For very small micro-drives where replacement cost is negligible, replacement can occasionally be faster than micro-bench labor.</li>
        </ul>
      </div>

      <aside class="content-sidebar">
        <div class="sidebar-cta-card">
          <h3 class="sidebar-cta-title">Get a Free Diagnostic Assessment</h3>
          <p class="sidebar-cta-desc">
            Let Ajay examine your drive before committing to a costly replacement. Free bench evaluation under our No-Fix, No-Fee policy.
          </p>
          <a href="tel:8307193825" class="btn btn-primary" data-track="resource_phone">Call Ajay: 8307193825</a>
          <a href="https://wa.me/918307193825?text=Hello%20Ajay,%20I%20have%20a%20faulty%20VFD%20and%20want%20to%20evaluate%20repair%20vs%20replace" target="_blank" rel="noopener" class="btn btn-secondary" data-track="resource_whatsapp">WhatsApp Drive Photo</a>
          <a href="#quote" class="btn btn-secondary open-quote-modal" data-track="resource_quote">Request Quote</a>
        </div>
      </aside>
    </div>
  </section>

$(Get-FooterHtml)
</body>
</html>
"@

$resourcePath = Join-Path $ROOT_DIR "resources\repair-vs-replace-vfd\index.html"
$resourceHtml | Set-Content -Path $resourcePath -Encoding UTF8
Write-Host "Created: $resourcePath"
