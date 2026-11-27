# generate-pages.ps1
# Generates multi-page architecture for Repair Q Electronics
# Production URL: https://repairqelectronics.com

$SITE_URL = "https://repairqelectronics.com"
$ROOT_DIR = "c:\Users\Home\OneDrive\Desktop\repairq"

function Get-HeaderHtml($activePage) {
    return @"
  <!-- Site Header -->
  <header class="site-header" role="banner">
    <div class="container header-inner">
      <a href="/" class="brand-link" aria-label="Repair Q Electronics Home">
        <div class="brand-icon-box" aria-hidden="true">
          <img src="/logo.jpg" alt="Repair Q Electronics Emblem Logo" class="brand-logo-img">
        </div>
        <div class="brand-title-group">
          <div class="brand-name">Repair<span>Q</span> Electronics</div>
          <div class="brand-sub">Automation &amp; Electronics Lab</div>
        </div>
      </a>

      <!-- Desktop Navigation Links -->
      <nav class="nav-desktop" aria-label="Main Navigation">
        <a href="/#services">What We Repair</a>
        <a href="/services/vfd-repair-jhajjar/">VFD Drives</a>
        <a href="/services/press-brake-cnc-controller-repair/">CNC &amp; Press Brake</a>
        <a href="/areas/industrial-electronics-repair-delhi/">Service Areas</a>
        <a href="/#process">Testing Lab</a>
        <a href="/#faq">FAQs</a>
      </nav>

      <!-- Header Actions -->
      <div class="header-right">
        <a href="tel:8307193825" class="header-phone-badge" aria-label="Call Ajay">
          <svg width="15" height="15" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5"><path d="M22 16.92v3a2 2 0 0 1-2.18 2 19.79 19.79 0 0 1-8.63-3.07 19.5 19.5 0 0 1-6-6 19.79 19.79 0 0 1-3.07-8.67A2 2 0 0 1 4.11 2h3a2 2 0 0 1 2 1.72 12.84 12.84 0 0 0 .7 2.81 2 2 0 0 1-.45 2.11L8.09 9.91a16 16 0 0 0 6 6l1.27-1.27a2 2 0 0 1 2.11-.45 12.84 12.84 0 0 0 2.81.7A2 2 0 0 1 22 16.92z"></path></svg>
          Ajay: 8307193825
        </a>
        <a href="#quote" class="btn btn-primary open-quote-modal">Get Quote</a>

        <!-- Mobile Menu Toggle Button -->
        <button id="menuToggle" class="menu-toggle-btn" aria-label="Open mobile navigation" aria-expanded="false" aria-controls="mobileNavPanel">
          <svg width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
            <line x1="3" y1="12" x2="21" y2="12"></line>
            <line x1="3" y1="6" x2="21" y2="6"></line>
            <line x1="3" y1="18" x2="21" y2="18"></line>
          </svg>
        </button>
      </div>
    </div>
  </header>

  <!-- Mobile Navigation Drawer -->
  <div id="mobileNavOverlay" class="mobile-nav-overlay" aria-hidden="true"></div>
  <aside id="mobileNavPanel" class="mobile-nav-panel" aria-label="Mobile Navigation" aria-hidden="true">
    <div class="mobile-nav-header">
      <div class="brand-link">
        <div class="brand-icon-box" style="width: 32px; height: 32px;">
          <img src="/logo.jpg" alt="Repair Q Electronics Logo" class="brand-logo-img">
        </div>
        <div class="brand-name">Repair<span>Q</span></div>
      </div>
      <button id="closeMenuBtn" class="drawer-close-btn" aria-label="Close navigation">
        <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><line x1="18" y1="6" x2="6" y2="18"></line><line x1="6" y1="6" x2="18" y2="18"></line></svg>
      </button>
    </div>
    
    <div class="mobile-nav-body">
      <ul class="mobile-nav-links">
        <li><a href="/">Home</a></li>
        <li><a href="/services/vfd-repair-jhajjar/">VFD &amp; Servo Drive Repair</a></li>
        <li><a href="/services/soft-starter-repair/">Soft Starter Repair</a></li>
        <li><a href="/services/hmi-touchscreen-repair/">HMI Touchscreen Repair</a></li>
        <li><a href="/services/plc-repair/">PLC System Repair</a></li>
        <li><a href="/services/injection-moulding-card-repair/">Injection Moulding Cards</a></li>
        <li><a href="/services/hvac-chiller-motherboard-repair/">HVAC &amp; Chiller Boards</a></li>
        <li><a href="/services/press-brake-cnc-controller-repair/">CNC &amp; Press Brake Controllers</a></li>
        <li><a href="/services/on-site-industrial-electronics-service/">On-Site Factory Service</a></li>
        <li><a href="/areas/industrial-electronics-repair-delhi/">Delhi NCR Service Areas</a></li>
      </ul>

      <div class="mobile-drawer-contact">
        <div class="drawer-contact-title">Direct Technician Line</div>
        <a href="tel:8307193825" class="drawer-phone-link">
          <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M22 16.92v3a2 2 0 0 1-2.18 2 19.79 19.79 0 0 1-8.63-3.07 19.5 19.5 0 0 1-6-6 19.79 19.79 0 0 1-3.07-8.67A2 2 0 0 1 4.11 2h3a2 2 0 0 1 2 1.72 12.84 12.84 0 0 0 .7 2.81 2 2 0 0 1-.45 2.11L8.09 9.91a16 16 0 0 0 6 6l1.27-1.27a2 2 0 0 1 2.11-.45 12.84 12.84 0 0 0 2.81.7A2 2 0 0 1 22 16.92z"></path></svg>
          Ajay: +91 8307193825
        </a>
        <a href="mailto:repairqelectronics@gmail.com" class="drawer-email-link">
          <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M4 4h16c1.1 0 2 .9 2 2v12c0 1.1-.9 2-2 2H4c-1.1 0-2-.9-2-2V6c0-1.1.9-2 2-2z"></path><polyline points="22,6 12,13 2,6"></polyline></svg>
          repairqelectronics@gmail.com
        </a>
        <div class="drawer-location">
          ?? Near Yadav Dharamshala, Circular Road, Jhajjar - 124103 (Haryana)
        </div>
      </div>
      <a href="#quote" class="btn btn-primary open-quote-modal" style="width: 100%; margin-top: 16px;">Request a Repair Quote</a>
    </div>
  </aside>
"@
}

function Get-FooterHtml() {
    return @"
  <!-- Site Footer -->
  <footer class="site-footer" role="contentinfo">
    <div class="container footer-grid">
      <div class="footer-col brand-col">
        <div class="footer-brand">
          <div class="brand-icon-box" style="width: 44px; height: 44px;">
            <img src="/logo.jpg" alt="Repair Q Electronics Logo" class="brand-logo-img">
          </div>
          <div class="brand-title-group">
            <div class="brand-name">Repair<span>Q</span> Electronics</div>
            <div class="brand-sub">Component-Level Industrial Electronics Lab</div>
          </div>
        </div>
        <p class="footer-desc">
          Independent multi-brand electronic repair lab delivering precision micro-soldering, IGBT/SCR module rebuilds, and dynamic motor load rig testing for industrial automation equipment across Haryana and Delhi NCR.
        </p>
        <div class="footer-contact-info">
          <div class="footer-contact-item">
            <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M22 16.92v3a2 2 0 0 1-2.18 2 19.79 19.79 0 0 1-8.63-3.07 19.5 19.5 0 0 1-6-6 19.79 19.79 0 0 1-3.07-8.67A2 2 0 0 1 4.11 2h3a2 2 0 0 1 2 1.72 12.84 12.84 0 0 0 .7 2.81 2 2 0 0 1-.45 2.11L8.09 9.91a16 16 0 0 0 6 6l1.27-1.27a2 2 0 0 1 2.11-.45 12.84 12.84 0 0 0 2.81.7A2 2 0 0 1 22 16.92z"></path></svg>
            <span>Direct Lead Line: <a href="tel:8307193825"><strong>Ajay: +91 8307193825</strong></a></span>
          </div>
          <div class="footer-contact-item">
            <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M4 4h16c1.1 0 2 .9 2 2v12c0 1.1-.9 2-2 2H4c-1.1 0-2-.9-2-2V6c0-1.1.9-2 2-2z"></path><polyline points="22,6 12,13 2,6"></polyline></svg>
            <span>Email: <a href="mailto:repairqelectronics@gmail.com"><strong>repairqelectronics@gmail.com</strong></a></span>
          </div>
          <div class="footer-contact-item">
            <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M21 10c0 7-9 13-9 13s-9-6-9-13a9 9 0 0 1 18 0z"></path><circle cx="12" cy="10" r="3"></circle></svg>
            <span>Lab Workshop: Near Yadav Dharamshala, Circular Road, Jhajjar - 124103 (Haryana)</span>
          </div>
        </div>
      </div>

      <div class="footer-col">
        <h4 class="footer-heading">Services &amp; Repairs</h4>
        <ul class="footer-links">
          <li><a href="/services/vfd-repair-jhajjar/">VFD &amp; Servo Drive Repair</a></li>
          <li><a href="/services/soft-starter-repair/">Industrial Soft Starters</a></li>
          <li><a href="/services/hmi-touchscreen-repair/">HMI Panels &amp; Touchscreens</a></li>
          <li><a href="/services/plc-repair/">PLC Systems &amp; Modular I/O</a></li>
          <li><a href="/services/injection-moulding-card-repair/">Injection Moulding Cards</a></li>
          <li><a href="/services/hvac-chiller-motherboard-repair/">HVAC &amp; Chiller Boards</a></li>
          <li><a href="/services/press-brake-cnc-controller-repair/">Press Brake &amp; CNC Controllers</a></li>
          <li><a href="/services/on-site-industrial-electronics-service/">On-Site Factory Diagnostics</a></li>
        </ul>
      </div>

      <div class="footer-col">
        <h4 class="footer-heading">Service Coverage Areas</h4>
        <ul class="footer-links">
          <li><a href="/areas/industrial-electronics-repair-delhi/">Delhi Industrial Belts (Bawana, Narela, Okhla)</a></li>
          <li><a href="/areas/industrial-electronics-repair-gurugram/">Gurugram (Udyog Vihar, Sector 37)</a></li>
          <li><a href="/areas/industrial-electronics-repair-manesar/">IMT Manesar Auto Cluster</a></li>
          <li><a href="/areas/industrial-electronics-repair-rohtak/">Rohtak Industrial Area</a></li>
          <li><a href="/areas/industrial-electronics-repair-kharkhoda/">Kharkhoda HSIIDC Industrial Area</a></li>
          <li><a href="/areas/industrial-electronics-repair-bahadurgarh/">Bahadurgarh M.I.E. Cluster</a></li>
        </ul>
      </div>
    </div>

    <div class="footer-bottom">
      <div class="container footer-bottom-inner">
        <div class="footer-disclaimer">
          <strong>Independent Repair Facility Notice:</strong> Repair Q Electronics is an independent component-level repair laboratory. Brand names such as Danfoss, Siemens, ABB, Yaskawa, Schneider, Delta, Allen-Bradley, Carrier, Trane, Cybelec, and Delem are registered trademarks of their respective Original Equipment Manufacturers (OEMs) and are used strictly for identification purposes.
        </div>
        <div class="footer-copy">
          &copy; 2026 Repair Q Electronics. All rights reserved. &bull; Proprietor: Ajay &bull; Jhajjar, Haryana (124103)
        </div>
      </div>
    </div>
  </footer>

  <!-- Mobile Sticky Action Bar -->
  <aside class="mobile-sticky-action-bar" aria-label="Quick Contact Actions">
    <a href="tel:8307193825" class="mobile-action-btn phone" data-track="sticky_phone">
      <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M22 16.92v3a2 2 0 0 1-2.18 2 19.79 19.79 0 0 1-8.63-3.07 19.5 19.5 0 0 1-6-6 19.79 19.79 0 0 1-3.07-8.67A2 2 0 0 1 4.11 2h3a2 2 0 0 1 2 1.72 12.84 12.84 0 0 0 .7 2.81 2 2 0 0 1-.45 2.11L8.09 9.91a16 16 0 0 0 6 6l1.27-1.27a2 2 0 0 1 2.11-.45 12.84 12.84 0 0 0 2.81.7A2 2 0 0 1 22 16.92z"></path></svg>
      <span>Call Ajay</span>
    </a>
    <a href="#quote" class="mobile-action-btn quote open-quote-modal" data-track="sticky_quote">
      <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M14.7 6.3a1 1 0 0 0 0 1.4l1.6 1.6a1 1 0 0 0 1.4 0l3.77-3.77a6 6 0 0 1-7.94 7.94l-6.91 6.91a2.12 2.12 0 0 1-3-3l6.91-6.91a6 6 0 0 1 7.94-7.94l-3.76 3.76z"/></svg>
      <span>Request Quote</span>
    </a>
    <a href="https://wa.me/918307193825?text=Hello%20Ajay,%20I%20need%20a%20repair%20quote%20for%20my%20industrial%20automation%20equipment" target="_blank" rel="noopener" class="mobile-action-btn whatsapp" data-track="sticky_whatsapp" aria-label="WhatsApp Us">
      <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M21 11.5a8.38 8.38 0 0 1-.9 3.8 8.5 8.5 0 0 1-7.6 4.7 8.38 8.38 0 0 1-3.8-.9L3 21l1.9-5.7a8.38 8.38 0 0 1-.9-3.8 8.5 8.5 0 0 1 4.7-7.6 8.38 8.38 0 0 1 3.8-.9h.5a8.48 8.48 0 0 1 8 8v.5z"/></svg>
      <span>WhatsApp</span>
    </a>
  </aside>

  <!-- Quote Modal Dialog -->
  <div id="quoteModal" class="modal-backdrop" role="dialog" aria-modal="true" aria-labelledby="modalTitle">
    <div class="modal-dialog">
      <button id="modalCloseBtn" class="modal-close-btn" aria-label="Close modal">
        <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><line x1="18" y1="6" x2="6" y2="18"></line><line x1="6" y1="6" x2="18" y2="18"></line></svg>
      </button>

      <h3 id="modalTitle" class="form-title">Request a Repair Quote</h3>
      <p class="form-sub">Submit your equipment details below for a prompt diagnostic assessment and turnaround schedule directly from Ajay.</p>

      <form id="quoteForm">
        <div class="form-row-2">
          <div class="form-group">
            <label for="equipType" class="form-label">Equipment Category *</label>
            <select id="equipType" class="form-select" required>
              <option value="VFDs & Servo Drives">VFDs &amp; Servo Drives</option>
              <option value="Soft Starter (Motor Controller)">Soft Starters (Reduced-Voltage Motor Starters)</option>
              <option value="HMI Panel (Touchscreen / Display)">HMI Panels (Touchscreens, Displays &amp; Operator Terminals)</option>
              <option value="PLC System (Power Supply / I/O)">PLC Systems (Power Supplies &amp; Modular I/O Cards)</option>
              <option value="Injection Moulding Cards, Power Supplies & PCBs">Injection Moulding Cards, Power Supplies &amp; PCBs</option>
              <option value="HVAC & Chiller Motherboards">HVAC &amp; Chiller Motherboards</option>
              <option value="Press Brake & CNC Controllers (Cybelec, Delem, ESA)">Press Brake &amp; CNC Controllers (Cybelec, Delem, ESA)</option>
            </select>
          </div>
          <div class="form-group">
            <label for="equipBrand" class="form-label">Brand &amp; Model Number *</label>
            <input type="text" id="equipBrand" class="form-input" placeholder="e.g. Yaskawa A1000 / Siemens S7-1200 / ABB ACS550" required>
          </div>
        </div>

        <div class="form-group">
          <label for="faultDesc" class="form-label">Observed Fault / Error Code *</label>
          <textarea id="faultDesc" class="form-textarea" rows="3" placeholder="e.g., Overcurrent trip (OC), blown IGBT, display touch unresponsive, power supply no-boot, Modbus communication dropout..." required></textarea>
        </div>

        <div class="form-row-2">
          <div class="form-group">
            <label for="contactName" class="form-label">Your Name / Company *</label>
            <input type="text" id="contactName" class="form-input" placeholder="e.g., Rajesh - ABC Polymers" required>
          </div>
          <div class="form-group">
            <label for="contactPhone" class="form-label">Phone / WhatsApp Number *</label>
            <input type="tel" id="contactPhone" class="form-input" placeholder="e.g., 98XXXXXXXX" required>
          </div>
        </div>

        <button type="submit" class="btn btn-primary form-submit-btn">
          Send Repair Inquiry to Ajay
        </button>
      </form>
      <div id="formFeedback" class="form-feedback" role="alert"></div>
    </div>
  </div>

  <script src="/main.js"></script>
"@
}

Write-Host "Helper template functions initialized."
