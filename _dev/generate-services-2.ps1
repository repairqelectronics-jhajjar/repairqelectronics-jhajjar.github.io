# generate-services-2.ps1
param(
  [string]$SiteUrl = "https://repairqelectronics.com"
)

. "c:\Users\Home\OneDrive\Desktop\repairq\generate-pages.ps1"
. "c:\Users\Home\OneDrive\Desktop\repairq\generate-services.ps1"

# Service 2: Soft Starters
New-ServicePage `
  -SubDir "services\soft-starter-repair" `
  -Title "Industrial Soft Starter Repair Jhajjar | ABB, Siemens, Schneider" `
  -Description "Component-level industrial soft starter repair in Jhajjar, Haryana. SCR thyristor replacement, bypass contactor rebuilds, gate firing circuits. 1-mo warranty." `
  -CanonicalPath "/services/soft-starter-repair/" `
  -ServiceName "Industrial Soft Starter Repair" `
  -HeroH1 "Industrial Soft Starter &amp; Motor Controller Repair" `
  -HeroLead "Component-level bench troubleshooting for heavy motor starters. SCR thyristor testing, firing pulse angle balancing, and bypass contactor diagnostic rebuilds." `
  -GeoAnswer "Repair Q Electronics provides specialist component-level soft starter repair for manufacturing plants across Delhi NCR and Haryana. Operating from our Jhajjar lab, lead engineer Ajay tests anti-parallel SCR thyristors, restores gate firing control circuits, and services internal bypass contactors with a 1-month warranty and 48–72h turnaround, saving 60%–70% over purchasing new units." `
  -KeyFacts @{
      Type = "SCR &amp; Soft Starter Repair"
      Turnaround = "48 to 72 Hours"
      Rush = "24-Hour Emergency"
  } `
  -SupportedBrandsHtml @"
<p>We service all major industrial soft starter ranges used in pumping stations, compressors, crushers, conveyors, and blowers:</p>
<ul>
  <li><strong>ABB:</strong> PSTX heavy-duty series, PSE compact range, PSR compact soft starters</li>
  <li><strong>Siemens:</strong> SIRIUS 3RW30, 3RW40, 3RW44 high-feature starters, 3RW52 / 3RW55 advanced controllers</li>
  <li><strong>Schneider Electric:</strong> Altistart ATS01, ATS22, ATS48, ATS480 soft start-soft stop units</li>
  <li><strong>Danfoss:</strong> VLT Soft Starter MCD 201, MCD 202, MCD 500, MCD 600 series</li>
  <li><strong>Eaton &amp; Allen-Bradley:</strong> SMC-3, SMC Flex, SMC-50 solid-state motor controllers</li>
</ul>
"@ `
  -FaultsTableHtml @"
<div class="tech-table-wrap">
  <table class="tech-table">
    <thead>
      <tr>
        <th>Fault Symptom</th>
        <th>Probable Cause</th>
        <th>Component-Level Fix</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><strong>Phase Short Circuit / Blown Thyristor</strong></td>
        <td>Heavy inrush surge, lightning transient, thermal breakdown of SCR junction.</td>
        <td>Replace anti-parallel SCR module, verify snubber network RC circuit.</td>
      </tr>
      <tr>
        <td><strong>Bypass Contactor Failure / Contact Welding</strong></td>
        <td>High motor start duty cycle, arcing contacts, stuck mechanical linkage.</td>
        <td>Rebuild auxiliary bypass contact assembly or replace contactor driver relay.</td>
      </tr>
      <tr>
        <td><strong>Gate Firing Missing / Motor Won't Ramp</strong></td>
        <td>Pulse transformer degradation, blown gate drive opto-triac or transistor.</td>
        <td>Rebuild firing pulse train circuit, verify gate voltage and rise time on scope.</td>
      </tr>
      <tr>
        <td><strong>Thermal Overload Trip During Startup</strong></td>
        <td>Internal thermistor drift, cooling fan failure, heatsink thermal paste drying.</td>
        <td>Re-paste power stack with thermal compound, replace fan &amp; calibrate PTC thermistor.</td>
      </tr>
    </tbody>
  </table>
</div>
"@ `
  -ProcessStepsHtml @"
<ol>
  <li><strong>High-Voltage Isolation &amp; SCR Static Test:</strong> Measurement of forward blocking voltage, reverse leakage current, and gate-to-cathode resistance across all 6 SCRs.</li>
  <li><strong>Gate Pulse Firing Scope Analysis:</strong> Verification of firing pulse angle (35° to 180°), firing symmetry, and gate trigger current across all three phases.</li>
  <li><strong>Bypass Mechanism &amp; Snubber Circuit Overhaul:</strong> Cleaning, testing, and calibrating internal bypass contactors and replacing worn metal oxide varistors (MOVs).</li>
  <li><strong>Ramp-Up &amp; Current Limit Testing:</strong> Verification of soft start voltage ramp, current limit thresholds, and soft stop deceleration profiles under controlled load.</li>
</ol>
"@ `
  -HindiSummary "Soft starter me SCR thyristor blast hona ya bypass contactor ka chipak jana aam problem hai. Hamari Jhajjar lab me SCR modules ko change karke firing pulse ko oscilloscope se check kiya jata hai. Naya starter lene ki tulna me 60-70% bachat hoti hai aur 1 month ki warranty di jaati hai." `
  -Faqs @(
    @{ Q = "Can shorted SCR thyristors in a soft starter be replaced?"; A = "Yes. We source original OEM-grade disc and module SCRs, calibrate the gate firing circuitry, and conduct load tests to ensure smooth motor ramp-up." },
    @{ Q = "What is the typical repair turnaround time for industrial soft starters?"; A = "Standard turnaround is 48 to 72 hours. For critical factory breakdowns, we offer 24-hour priority rush bench repair." }
  )

# Service 3: HMI Touchscreens
New-ServicePage `
  -SubDir "services\hmi-touchscreen-repair" `
  -Title "HMI Touchscreen &amp; Display Repair | Siemens, Delta, Pro-face Jhajjar" `
  -Description "Component-level HMI touchscreen repair in Jhajjar &amp; Delhi NCR. Digitizer glass replacement, backlight inverter repair, RS485/Ethernet communication IC fixes." `
  -CanonicalPath "/services/hmi-touchscreen-repair/" `
  -ServiceName "HMI Touchscreen &amp; Display Repair" `
  -HeroH1 "HMI Touchscreen, LCD &amp; Operator Terminal Repair" `
  -HeroLead "Industrial human-machine interface diagnostics. Resistive and capacitive touch digitizer glass replacement, LCD backlight restoration, and communication port micro-soldering." `
  -GeoAnswer "Repair Q Electronics delivers precision component-level HMI panel repair in Jhajjar, serving factories in Gurgaon, Manesar, Rohtak, and Delhi NCR. We replace cracked or unresponsive 4-wire and 8-wire resistive digitizers, restore dark CCFL and LED backlights, and replace damaged RS-485, Profibus, and Ethernet transceiver ICs with a 1-month warranty and 24–48h rush turnaround." `
  -KeyFacts @{
      Type = "HMI &amp; Touchscreen Repair"
      Turnaround = "48 Hours Standard"
      Rush = "24 Hours Rush"
  } `
  -SupportedBrandsHtml @"
<p>We repair operator interfaces, industrial panel PCs, and teach pendants across all automation manufacturers:</p>
<ul>
  <li><strong>Siemens SIMATIC:</strong> KTP400, KTP700, KTP900, KTP1200 Basic, TP177, MP277, MP377, Comfort Panels (KP400, TP700, TP1200 Comfort)</li>
  <li><strong>Schneider Electric:</strong> Magelis XBT, Harmony STO, STU, GTO, GTU modular touch panels</li>
  <li><strong>Mitsubishi Electric:</strong> GOT1000, GOT2000 series (GS2107, GT2308, GT2510, GT2712)</li>
  <li><strong>Pro-face (Digital):</strong> GP2000, GP3000, GP4000 series graphic operator panels</li>
  <li><strong>Delta Electronics:</strong> DOP-B, DOP-100 series touch operator interfaces</li>
  <li><strong>Omron, Weintek &amp; Kinco:</strong> NB5Q, NB7W, NS series, MT8000, eMT series</li>
</ul>
"@ `
  -FaultsTableHtml @"
<div class="tech-table-wrap">
  <table class="tech-table">
    <thead>
      <tr>
        <th>Fault Symptom</th>
        <th>Hardware Root Cause</th>
        <th>Component-Level Fix</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><strong>Touch Not Responding / Touch Drift</strong></td>
        <td>ITO coating micro-fracture, flex cable tear, capacitive controller drift.</td>
        <td>Replace digitizer touch glass, calibrate 4-wire resistive matrix controller IC.</td>
      </tr>
      <tr>
        <td><strong>Black / Dim Screen with Power ON</strong></td>
        <td>Burned LED backlight driver circuit, failed CCFL high-voltage inverter transformer.</td>
        <td>Replace backlight driver MOSFETs, rebuild high-voltage step-up transformer.</td>
      </tr>
      <tr>
        <td><strong>Communication Timeout / PLC Disconnect</strong></td>
        <td>Blown RS-485 transceiver IC (MAX485/SN65176) due to ground potential surge.</td>
        <td>Desolder blown transceiver chip, replace TVS transient protection diodes.</td>
      </tr>
      <tr>
        <td><strong>Stuck on Boot Screen / No Boot</strong></td>
        <td>Corrupted flash memory capacitor rail, dried filter capacitors in 24V supply.</td>
        <td>Recap internal power board, restore regulated 3.3V / 1.8V logic rails.</td>
      </tr>
    </tbody>
  </table>
</div>
"@ `
  -ProcessStepsHtml @"
<ol>
  <li><strong>Clean-Room Digitizer Separation:</strong> Careful mechanical dismantling of front bezel and digitizer glass without damaging the underlying TFT liquid crystal display.</li>
  <li><strong>Precision Optical Lamination:</strong> Installing fresh industrial-grade touch glass with matched optical transparency and anti-glare scratch resistance.</li>
  <li><strong>SMD Transceiver Micro-Soldering:</strong> Replacing failed communication chips, filter inductors, and electrostatic discharge (ESD) protection diodes.</li>
  <li><strong>Communication &amp; Touch Calibration:</strong> Testing on serial (RS-485 / RS-232), Profibus DP, and Industrial Ethernet protocols with PLC loopback simulation.</li>
</ol>
"@ `
  -HindiSummary "Agar aapke HMI panel ka touch kaam nahi kar raha, screen toot gayi hai ya PLC se communicate nahi ho raha, toh naya panel khareedkar program dobara upload karne ki zaroorat nahi. Hum digitizer glass replace karte hain aur port IC ko micro-solder karte hain. Program safe rehta hai aur 1 month warranty milti hai." `
  -Faqs @(
    @{ Q = "Will our internal HMI PLC program and screens be lost during repair?"; A = "No. Digitizer glass replacement, backlight repairs, and communication IC replacements do not alter non-volatile memory or screen recipes. Your program remains completely intact." },
    @{ Q = "How quickly can you replace a cracked Siemens KTP700 or Delta touchscreen?"; A = "We keep high-demand digitizers in stock. Standard replacement turnaround is 24 to 48 hours." }
  )

# Service 4: PLC Systems
New-ServicePage `
  -SubDir "services\plc-repair" `
  -Title "PLC Repair &amp; Modular I/O Troubleshooting | Jhajjar &amp; Delhi NCR" `
  -Description "Component-level PLC repair for Siemens S7, Allen-Bradley, Mitsubishi, Omron. Power supply modules, CPU boards, relay cards, optocoupler replacement." `
  -CanonicalPath "/services/plc-repair/" `
  -ServiceName "PLC Systems &amp; Modular I/O Repair" `
  -HeroH1 "PLC System &amp; Modular I/O Card Repair" `
  -HeroLead "Hardware-level diagnostic repair for programmable logic controllers. Internal power supply modules, digital/analog I/O cards, and industrial communication processors." `
  -GeoAnswer "Repair Q Electronics provides component-level PLC hardware repair in Jhajjar, Haryana, for factories across Delhi NCR. We repair blown 24VDC power supply rails, burned relay outputs, open optocoupler channels, and damaged analog ADC/DAC converters on Siemens, Allen-Bradley, and Mitsubishi PLCs, avoiding the heavy cost and program re-engineering of replacing obsolete PLC platforms." `
  -KeyFacts @{
      Type = "PLC Hardware Repair"
      Turnaround = "48 to 72 Hours"
      Rush = "24 Hours Rush"
  } `
  -SupportedBrandsHtml @"
<p>We troubleshoot and repair CPU racks, remote I/O drops, and power supplies from leading automation makers:</p>
<ul>
  <li><strong>Siemens:</strong> S7-1200 (CPU 1214C, 1215C), S7-1500, S7-300 (CPU 314, 315-2DP), S7-200 / Smart, ET200S / ET200SP I/O modules</li>
  <li><strong>Allen-Bradley / Rockwell:</strong> ControlLogix 1756, CompactLogix 1769, MicroLogix 1100 / 1400, SLC 500 rack power supplies and I/O</li>
  <li><strong>Mitsubishi Electric:</strong> MELSEC iQ-R, iQ-F, Q Series, FX3U, FX5U micro-PLCs</li>
  <li><strong>Schneider Electric:</strong> Modicon M221, M241, M251, Quantum series</li>
  <li><strong>Omron:</strong> CJ1, CJ2, CP1E, CP1H, CS1 modular architectures</li>
</ul>
"@ `
  -FaultsTableHtml @"
<div class="tech-table-wrap">
  <table class="tech-table">
    <thead>
      <tr>
        <th>Failure Symptom</th>
        <th>Hardware Failure Point</th>
        <th>Lab Restoration Method</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><strong>No 24VDC OK Light / Dead Rack</strong></td>
        <td>Blown primary flyback controller IC, open fuse, shorted Schottky rectifier.</td>
        <td>Rebuild SMPS power stage, replace low-ESR high-temp capacitors.</td>
      </tr>
      <tr>
        <td><strong>Input LED ON but CPU Reads LOW</strong></td>
        <td>Punctured input optocoupler phototransistor from external 24V spike.</td>
        <td>Desolder damaged optocoupler, install high-speed industrial isolators.</td>
      </tr>
      <tr>
        <td><strong>Output Relay Stuck ON or Open</strong></td>
        <td>Welded contacts from inductive coil back-EMF, broken flyback clamp diode.</td>
        <td>Replace sub-miniature sealed relays, install fresh freewheeling clamp diodes.</td>
      </tr>
      <tr>
        <td><strong>Analog Input Drift / Erratic Counts</strong></td>
        <td>Damaged operational amplifier input stage or 16-bit ADC reference chip.</td>
        <td>Replace precision op-amps, calibrate analog zero and span voltage ranges.</td>
      </tr>
    </tbody>
  </table>
</div>
"@ `
  -ProcessStepsHtml @"
<ol>
  <li><strong>DC Bus &amp; Logic Rail Inspection:</strong> Verification of 3.3V, 5V, and 24V rails with thermal camera to spot micro-shorts before logic board energization.</li>
  <li><strong>Micro-Component De-Soldering:</strong> Component-level replacement of surface-mount optocouplers, relay banks, and transceiver ICs using temperature-regulated hot-air stations.</li>
  <li><strong>Loop Simulation Testing:</strong> Forcing all inputs with precision signal generators and verifying output relay firing under inductive test loads.</li>
</ol>
"@ `
  -HindiSummary "Jab PLC ka power supply jal jata hai ya output relay chipak jaati hai, toh naya PLC lene par pura logic program dobara likhna padta hai. Hamari Jhajjar lab me hum hardware level par relay, optocoupler aur power IC change karte hain, jisse aapka pura program safe rehta hai." `
  -Faqs @(
    @{ Q = "Do you need our PLC logic program to repair the hardware?"; A = "No. We test PLCs at the physical component layer (power supplies, optocouplers, input signal filters, relay contacts) without needing your confidential ladder logic." },
    @{ Q = "Can you repair obsolete PLC cards that the manufacturer no longer supports?"; A = "Yes. Component-level repair is especially valuable for legacy series like Siemens S7-300 or Allen-Bradley SLC 500 where replacement cards are discontinued." }
  )

# Service 5: Injection Moulding Cards & PCBs
New-ServicePage `
  -SubDir "services\injection-moulding-card-repair" `
  -Title "Injection Moulding Machine Card &amp; PCB Repair Jhajjar | Techmation, HRTC" `
  -Description "Component-level repair of HRTC temperature controller cards, MTC cards, Techmation boards, Rexroth proportional valve pressure cards in Haryana &amp; Delhi NCR." `
  -CanonicalPath "/services/injection-moulding-card-repair/" `
  -ServiceName "Injection Moulding Cards &amp; Industrial PCBs" `
  -HeroH1 "Injection Moulding Machine Card &amp; Industrial PCB Repair" `
  -HeroLead "Micro-soldering and bench overhaul for plastic injection moulding cards, hot runner temperature controllers (HRTC), mould temperature controllers (MTC), Techmation boards, and Rexroth proportional valve amplifier cards." `
  -GeoAnswer "Repair Q Electronics specializes in component-level repair of plastic injection moulding electronic cards in Jhajjar, Haryana, serving plastic and polymer manufacturing clusters across IMT Manesar, Bawana, Narela, Rohtak, and Bahadurgarh. Lead technician Ajay restores Techmation motherboards, HRTC cards, and Rexroth proportional pressure cards with a 1-month warranty and 24–48h emergency turnaround." `
  -KeyFacts @{
      Type = "Moulding Card &amp; PCB Repair"
      Turnaround = "48 Hours Standard"
      Rush = "24 Hours Rush"
  } `
  -SupportedBrandsHtml @"
<p>We repair control cards and power boards across all injection moulding machinery systems:</p>
<ul>
  <li><strong>Techmation Control Systems:</strong> AK668, AK580, Q8, Q9, OP5000, OP5200 motherboard and I/O cards</li>
  <li><strong>Hot Runner Temperature Controllers (HRTC):</strong> Multi-zone PID temperature cards, solid-state relay (SSR) driver modules</li>
  <li><strong>Mould Temperature Controllers (MTC):</strong> Thermocouple sensing circuits, pump and heater control PCBs</li>
  <li><strong>Rexroth &amp; Moog Proportional Cards:</strong> VT series amplifier cards, linear transducer feedback cards, pressure control cards</li>
  <li><strong>Haitian, Toshiba, Ferromatik Milacron &amp; L&amp;T:</strong> Power supply cards, mould clamp safety logic cards</li>
</ul>
"@ `
  -FaultsTableHtml @"
<div class="tech-table-wrap">
  <table class="tech-table">
    <thead>
      <tr>
        <th>Failure Symptom</th>
        <th>Circuit Defect</th>
        <th>Component Fix</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><strong>Zone Temperature Runaway / Overheat</strong></td>
        <td>Punctured Triac / Solid State Relay (SSR) driver channel on HRTC card.</td>
        <td>Replace power triacs, test opto-triac gate trigger isolation.</td>
      </tr>
      <tr>
        <td><strong>Proportional Valve Pressure Fluctuation</strong></td>
        <td>Operational amplifier drift, dried filter capacitors in Rexroth card.</td>
        <td>Replace precision current-loop op-amps, calibrate 0–10V / 4–20mA outputs.</td>
      </tr>
      <tr>
        <td><strong>Clamping / Injection Axis Position Error</strong></td>
        <td>Failed linear scale optical encoder buffer IC, corrupted 5V reference.</td>
        <td>Replace line receiver chips, restore stable 5.00V reference rail.</td>
      </tr>
      <tr>
        <td><strong>Techmation Dead / Communication Error</strong></td>
        <td>SMPS rail voltage drop, burned RS-485 communication line chip.</td>
        <td>Rebuild auxiliary SMPS power section, replace transceiver ICs.</td>
      </tr>
    </tbody>
  </table>
</div>
"@ `
  -ProcessStepsHtml @"
<ol>
  <li><strong>Thermal Camera Heat Signature Analysis:</strong> Identifying hot spots, leaky SMD capacitors, and degraded power regulators under bench DC power.</li>
  <li><strong>Component-Level Replacement:</strong> Replacing burned power transistors, optocouplers, PID controller chips, and electrolytic capacitors.</li>
  <li><strong>Signal Simulator Validation:</strong> Simulating thermocouple J/K-type inputs, linear position transducer feedback, and proportional valve coil currents on the bench.</li>
</ol>
"@ `
  -HindiSummary "Injection moulding factory me jab HRTC temperature card ya Techmation board kharab hota hai, toh machine band pad jaati hai. Hum Jhajjar lab me cards ke triac, op-amp aur power ICs ko replace karke simulate karte hain. Manesar, Bawana aur Narela ke plastics units ko 24-48 hours me repair service dete hain." `
  -Faqs @(
    @{ Q = "Can you repair multi-zone HRTC hot runner temperature controller cards?"; A = "Yes. We repair blown triac outputs, thermocouple sensor drift, and PID controller chips across all 4-zone to 24-zone systems." },
    @{ Q = "How do you test Rexroth proportional amplifier cards?"; A = "We test proportional pressure and flow cards using electronic load simulators that measure coil current stability across the full 0–10V control command curve." }
  )

# Service 6: HVAC & Chiller Motherboards
New-ServicePage `
  -SubDir "services\hvac-chiller-motherboard-repair" `
  -Title "HVAC &amp; Chiller Motherboard Repair | Carrier, Trane, York, Daikin" `
  -Description "Component-level repair of commercial chiller motherboards in Delhi NCR &amp; Haryana. Carrier ISM, Carrier IO Board, ICVC, Trane Tracer, York, Daikin control cards." `
  -CanonicalPath "/services/hvac-chiller-motherboard-repair/" `
  -ServiceName "HVAC &amp; Chiller Motherboard Repair" `
  -HeroH1 "HVAC &amp; Commercial Chiller Motherboard Repair" `
  -HeroLead "Micro-electronic bench repair for central chiller plant control systems, compressor inverter drives, Carrier ISM/IO cards, ICVC displays, and Trane Tracer motherboards." `
  -GeoAnswer "Repair Q Electronics provides specialized component-level repair for commercial HVAC and water-cooled/air-cooled chiller boards in Jhajjar, serving facility managers, hospitals, data centers, and manufacturing plants across Delhi NCR. We repair Carrier ISM, Carrier IO boards, ICVC displays, and Trane chiller motherboards with a 1-month warranty, saving facility owners 60%–70% compared to new OEM replacements." `
  -KeyFacts @{
      Type = "Chiller Board Repair"
      Turnaround = "48 to 72 Hours"
      Rush = "24 Hours Rush"
  } `
  -SupportedBrandsHtml @"
<p>We provide bench repair for screw, centrifugal, and scroll chiller electronic control systems:</p>
<ul>
  <li><strong>Carrier:</strong> Integrated Service Module (ISM), Carrier IO Board, ICVC navigator display, 30XA / 30XW / 19XR control cards</li>
  <li><strong>Trane:</strong> Tracer CH530, AdaptiView, DynaView, Starter Module, Starter Interface Board (SIB)</li>
  <li><strong>York / Johnson Controls:</strong> OptiView control center, micro-computer control center (ISN), solid-state starter cards</li>
  <li><strong>Daikin / McQuay:</strong> MicroTech II, MicroTech III chiller controllers, inverter compressor drive PCBs</li>
</ul>
"@ `
  -FaultsTableHtml @"
<div class="tech-table-wrap">
  <table class="tech-table">
    <thead>
      <tr>
        <th>Failure Symptom</th>
        <th>Electronic Circuit Defect</th>
        <th>Component-Level Fix</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><strong>Carrier ISM Board Communication Loss (CCN Error)</strong></td>
        <td>Failed differential transceiver chip, surge damage on communication line.</td>
        <td>Replace RS-485 transceiver and isolated DC-DC converter.</td>
      </tr>
      <tr>
        <td><strong>Compressor Inverter Drive Trip / IGBT Fault</strong></td>
        <td>IGBT power module short, gate driver optocoupler timing skew.</td>
        <td>Replace IGBT module, re-balance gate drive circuit, apply fresh thermal paste.</td>
      </tr>
      <tr>
        <td><strong>Pressure / Temperature Sensor Reading Invalid</strong></td>
        <td>Burnt instrumentation amplifier on analog input channel.</td>
        <td>Replace precision analog multiplexers and op-amps.</td>
      </tr>
      <tr>
        <td><strong>No Display on ICVC / Trane AdaptiView</strong></td>
        <td>Dried power supply electrolytic capacitors, blown SMD fuse on 24V line.</td>
        <td>Rebuild switching power supply stage, replace failed power inductors.</td>
      </tr>
    </tbody>
  </table>
</div>
"@ `
  -ProcessStepsHtml @"
<ol>
  <li><strong>Diagnostic Voltage Mapping:</strong> Checking auxiliary 24V, 15V, 5V, and 3.3V logic rails for voltage ripple and power regulation stability.</li>
  <li><strong>Transceiver &amp; Relay Replacement:</strong> Precision desoldering of damaged microprocessor bus drivers, auxiliary contactor relays, and sensor interface chips.</li>
  <li><strong>Environmental Conformal Coating:</strong> Applying protective moisture-resistant coating to safeguard repaired boards against chiller plant humidity and vibration.</li>
</ol>
"@ `
  -HindiSummary "Chiller plant me Carrier ISM board ya Trane motherboard kharab hone par OEM se replacement lene me hafte lag jaate hain aur lakhon rupaye kharch hote hain. Hamari Jhajjar lab me hum motherboard ke power aur communication circuit ko 24 se 48 hours me repair kar dete hain." `
  -Faqs @(
    @{ Q = "Do you repair Carrier ISM and Carrier IO boards?"; A = "Yes. We regularly repair Carrier Integrated Service Modules (ISM) and IO expansion cards with communication faults, relay failures, or dead power supplies." },
    @{ Q = "What is the warranty on repaired commercial chiller motherboards?"; A = "Every repaired chiller motherboard carries a 1-month lab warranty covering all replaced electronic components and micro-soldering craftsmanship." }
  )

# Service 7: Press Brake & CNC Controllers
New-ServicePage `
  -SubDir "services\press-brake-cnc-controller-repair" `
  -Title "Press Brake &amp; CNC Controller Repair | Cybelec, Delem, ESA Jhajjar" `
  -Description "Component-level repair of CNC press brake controllers (Cybelec DNC, Delem DA, ESA). Encoder feedback, axis cards, display &amp; power boards. 1-mo warranty." `
  -CanonicalPath "/services/press-brake-cnc-controller-repair/" `
  -ServiceName "Press Brake &amp; CNC Controller Repair" `
  -HeroH1 "Press Brake &amp; CNC Controller Repair (Cybelec, Delem, ESA)" `
  -HeroLead "Component-level electronic restoration for hydraulic sheet bending press brake CNCs, backgauge axis cards, optical encoder feedback circuits, and operator console displays." `
  -GeoAnswer "Repair Q Electronics provides expert component-level repair for CNC press brake controllers in Jhajjar, Haryana, serving metal fabrication and auto-ancillary factories across Delhi NCR. Lead technician Ajay repairs Cybelec (DNC 60/80, CybTouch), Delem (DA-52/56/65W/66T), and ESA bending controllers, axis drive boards, and power supplies with a 1-month warranty and 24–48h rush turnaround." `
  -KeyFacts @{
      Type = "CNC &amp; Press Brake Repair"
      Turnaround = "48 to 72 Hours"
      Rush = "24-Hour Rush"
  } `
  -SupportedBrandsHtml @"
<p>We repair CNC bending controllers and industrial sheet metal machine electronics across all major makes:</p>
<ul>
  <li><strong>Cybelec:</strong> DNC 60, DNC 80, DNC 880S, DNC 1200, CybTouch 6, CybTouch 8, CybTouch 12</li>
  <li><strong>Delem:</strong> DA-41, DA-51, DA-52, DA-56, DA-65W, DA-66T, DA-69T graphical CNC units</li>
  <li><strong>ESA Automation:</strong> S500, S525, S530, S540, S550, S630 series bending controllers</li>
  <li><strong>Estun &amp; E21 / E200:</strong> Hydraulic press brake shear controllers, encoder counters</li>
  <li><strong>Axis Servo &amp; Proportional Valve Cards:</strong> Y1, Y2, X, R-axis servo drive boards and proportional hydraulic valve amplifiers</li>
</ul>
"@ `
  -FaultsTableHtml @"
<div class="tech-table-wrap">
  <table class="tech-table">
    <thead>
      <tr>
        <th>Failure Symptom</th>
        <th>Electronic Circuit Cause</th>
        <th>Component Restoration</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><strong>Y1 / Y2 Synchronization Loss (Tilt Error)</strong></td>
        <td>Linear optical scale encoder receiver IC failure, analog feedback noise.</td>
        <td>Replace high-speed differential line receiver chips (AM26LS32), filter noise.</td>
      </tr>
      <tr>
        <td><strong>Backgauge X / R Axis Servo Error</strong></td>
        <td>Axis driver card output transistor breakdown, blown gate drive optocoupler.</td>
        <td>Rebuild axis amplifier power stage, replace optocouplers and snubber components.</td>
      </tr>
      <tr>
        <td><strong>Display Blank / Screen Flickering</strong></td>
        <td>Inverter board failure, dried capacitors on main motherboard 5V / 12V rails.</td>
        <td>Recap internal power board, restore regulated logic rails, service LCD backlight.</td>
      </tr>
      <tr>
        <td><strong>Proportional Valve Output Not Responding</strong></td>
        <td>Burned PWM amplifier MOSFET on hydraulic proportional drive circuit.</td>
        <td>Replace power MOSFETs and current feedback shunt sensing resistors.</td>
      </tr>
    </tbody>
  </table>
</div>
"@ `
  -ProcessStepsHtml @"
<ol>
  <li><strong>Encoder &amp; Transducer Loop Test:</strong> Injecting simulated optical scale encoder pulses to verify counter circuits, A/B/Z channel integrity, and axis feedback.</li>
  <li><strong>SMD &amp; Power Module Repair:</strong> Desoldering damaged surface-mount chips and replacing power transistors on axis control and valve drive boards.</li>
  <li><strong>Complete Calibration:</strong> Verifying proportional valve drive current, zero drift, and display responsiveness before final bench dispatch.</li>
</ol>
"@ `
  -HindiSummary "Sheet metal fabrication units me Cybelec ya Delem press brake controller kharab hone par bending machine ruk jaati hai. Hum Jhajjar lab me encoder receiver, axis amplifier card aur display power supply ko micro-solder karke theek karte hain. Manesar, Gurgaon aur Delhi ke fabrication plants ko 24-48 hours me service milti hai." `
  -Faqs @(
    @{ Q = "Can you fix synchronization errors between Y1 and Y2 cylinders on press brakes?"; A = "Yes. Synchronization loss is often caused by damaged differential line receiver ICs on the optical scale input card. We replace these components and verify signal waveforms on an oscilloscope." },
    @{ Q = "Do you repair both Cybelec and Delem CNC controllers?"; A = "Yes. We repair all common Cybelec (DNC 60/80, CybTouch) and Delem (DA-52, DA-56, DA-65W, DA-66T) models." }
  )

# Service 8: On-Site Industrial Electronics Service
New-ServicePage `
  -SubDir "services\on-site-industrial-electronics-service" `
  -Title "On-Site Industrial Electronics Service | Factory Visits Delhi NCR" `
  -Description "Zero visiting fee on-site factory breakdown diagnostics for VFDs, PLCs, HMIs in Jhajjar, Bahadurgarh, Gurugram, Manesar, Rohtak &amp; Kharkhoda." `
  -CanonicalPath "/services/on-site-industrial-electronics-service/" `
  -ServiceName "On-Site Factory Breakdown Service" `
  -HeroH1 "On-Site Factory Breakdown &amp; Electronics Service" `
  -HeroLead "Direct factory-floor troubleshooting for critical industrial automation shutdowns. Oscilloscope diagnostics, drive parameter verification, and zero visiting charges in our primary service zones." `
  -GeoAnswer "Repair Q Electronics provides rapid-response on-site industrial electronics service for factories in Jhajjar, Bahadurgarh, Gurugram, IMT Manesar, Rohtak, and Kharkhoda. Lead engineer Ajay conducts on-site fault analysis, oscilloscope wave checking, and drive parameter tuning with zero visiting charges in primary zones, removing faulty components to our Jhajjar lab for bench repair when needed." `
  -KeyFacts @{
      Type = "On-Site Factory Breakdown"
      Turnaround = "Same-Day / Next-Day"
      Rush = "Immediate Dispatch"
  } `
  -SupportedBrandsHtml @"
<p>We visit industrial plants to troubleshoot complete automation line stoppages:</p>
<ul>
  <li><strong>Plastic &amp; Moulding Plants:</strong> Techmation machines, servo hydraulic pumps, HRTC temperature issues</li>
  <li><strong>Automobile &amp; Auto-Ancillary:</strong> VFD conveyor lines, robotic welding drive faults, PLC I/O failures</li>
  <li><strong>Textile &amp; Packaging Units:</strong> High-speed winding drive synchronizations, multi-drive DC bus networks</li>
  <li><strong>Heavy Engineering &amp; Fabrication:</strong> Press brake CNC positioning, crane VFD slip ring conversions</li>
</ul>
"@ `
  -FaultsTableHtml @"
<div class="tech-table-wrap">
  <table class="tech-table">
    <thead>
      <tr>
        <th>Breakdown Scenario</th>
        <th>On-Site Investigation Method</th>
        <th>Action Taken</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><strong>New Drive Trips Instantly on Power-Up</strong></td>
        <td>Insulation resistance (Megger) test on motor windings, line harmonic check.</td>
        <td>Isolate motor winding defect or configure drive acceleration &amp; voltage boost.</td>
      </tr>
      <tr>
        <td><strong>Intermittent Communication Loss on Fieldbus</strong></td>
        <td>Oscilloscope check on RS-485 / Profibus lines for missing termination resistors.</td>
        <td>Install 120-ohm terminating resistors, replace damaged transceiver nodes.</td>
      </tr>
      <tr>
        <td><strong>Heavy Blown VFD / PLC Power Unit</strong></td>
        <td>Safe de-coupling of power cables, tag-out, and initial damage assessment.</td>
        <td>Carefully remove unit for precision bench repair at our Jhajjar laboratory.</td>
      </tr>
    </tbody>
  </table>
</div>
"@ `
  -ProcessStepsHtml @"
<ol>
  <li><strong>Immediate Technical Call:</strong> Call Ajay directly at 8307193825 to discuss error codes, machine type, and line stoppage urgency.</li>
  <li><strong>On-Site Factory Dispatch:</strong> We arrive at your plant equipped with digital oscilloscopes, insulation testers, multimeters, and parameter consoles.</li>
  <li><strong>Safe Disconnection &amp; Lab Bench Repair:</strong> If component replacement is needed, we safely extract the unit and transport it to our Jhajjar lab.</li>
  <li><strong>Re-Installation &amp; Commissioning:</strong> Re-mounting the repaired unit, reconnecting field wiring, and conducting a live motor load run.</li>
</ol>
"@ `
  -HindiSummary "Jab plant me production line achanak band ho jaye aur VFD ya PLC trip ho, toh Ajay personally factory visit karke fault diagnose karte hain. Primary industrial areas me hamara visiting charge bilkul ZERO hai. Agar card bench par repair hona ho toh safely dismantle karke lab laya jata hai." `
  -Faqs @(
    @{ Q = "Is there really no visiting charge for on-site inspection?"; A = "Yes. In our primary service zones (Jhajjar, Bahadurgarh, Rohtak, Gurugram, IMT Manesar, and Kharkhoda), we charge zero visiting fees for factory breakdown assessments." },
    @{ Q = "What if the unit cannot be repaired on the factory floor?"; A = "Component-level micro-soldering and dynamic load testing require laboratory equipment. We safely dismantle the unit, repair it at our Jhajjar workshop, and return it for live commissioning." }
  )

Write-Host "Services 2 through 8 generated successfully!"
