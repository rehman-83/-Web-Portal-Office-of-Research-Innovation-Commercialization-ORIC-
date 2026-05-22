<%@ Page Language="C#" AutoEventWireup="true" %>
    <!DOCTYPE html>
    <html lang="en">

    <head runat="server">
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0" />
        <title>Partial Research Support Proposal Form – ORIC UAF</title>
        <style>
            /* ============================================================
   RESET & BASE
   Font: Cambria 11pt (22 half-points) exactly as in the docx
   Page: US Letter 12240×15840 twips, margins L/R 702 twips ≈ 0.49in
   ============================================================ */
            *,
            *::before,
            *::after {
                box-sizing: border-box;
                margin: 0;
                padding: 0
            }

            html {
                -webkit-text-size-adjust: 100%
            }

            body {
                font-family: Cambria, 'Times New Roman', serif;
                font-size: 11pt;
                /* 22 half-pts = 11pt */
                line-height: 1.35;
                color: #000;
                background: #e8e8e8;
            }

            /* ── Paper ── */
            .sheet {
                max-width: 760px;
                /* ≈ letter width at 96dpi */
                margin: 18px auto 32px;
                background: #fff;
                padding: 36px 34px 28px;
                /* top 1in, L/R ≈ 0.49in */
                box-shadow: 0 2px 14px rgba(0, 0, 0, .18);
            }

            /* ── Logo row ── */
            .logo-row {
                display: flex;
                align-items: center;
                justify-content: space-between;
                margin-bottom: 6px;
            }

            .logo-row img {
                display: block;
                object-fit: contain
            }

            .logo-uaf {
                height: 62px;
                width: auto;
                max-width: 150px
            }

            .logo-oric {
                height: 34px;
                width: auto;
                max-width: 130px
            }

            /* ── Form title ── */
            .form-title {
                text-align: center;
                font-size: 28pt;
                /* 56 half-pts */
                font-family: Cambria, serif;
                font-weight: normal;
                line-height: 1.1;
                margin-bottom: 10px;
                letter-spacing: -.5px;
            }

            /* ── Progress (UI only, not printed) ── */
            .prog-bar-wrap {
                margin: 0 0 8px;
                display: flex;
                align-items: center;
                gap: 8px
            }

            .prog-bar {
                flex: 1;
                height: 5px;
                background: #ddd;
                border-radius: 10px;
                overflow: hidden
            }

            .prog-fill {
                height: 100%;
                background: #1a4a2e;
                border-radius: 10px;
                width: 0%;
                transition: width .3s
            }

            .prog-pct {
                font-size: 8.5pt;
                color: #555;
                white-space: nowrap;
                min-width: 28px;
                text-align: right
            }

            /* ── Inline text rows (labels + underline fields) ── */
            /* The docx uses one long paragraph per section, all inline.
   We replicate that with flex-wrap. */
            .para {
                display: flex;
                flex-wrap: wrap;
                align-items: baseline;
                margin-bottom: 0;
                line-height: 1.65;
                /* generous to give room for the underline */
            }

            .para>.fi-ta {
                flex-basis: 100%;
                margin-bottom: 6px;
            }

            .para+.para {
                margin-top: 1px;
            }

            /* Text label spans */
            .b {
                font-weight: bold;
                font-size: 11pt;
                white-space: nowrap;
            }

            .n {
                font-weight: normal;
                font-size: 11pt;
                white-space: nowrap;
            }

            /* Underlined inputs – replicate the ____ look */
            .fi {
                border: none;
                border-bottom: 1px solid #000;
                outline: none;
                font-family: Cambria, serif;
                font-size: 11pt;
                background: transparent;
                padding: 0 2px;
                flex: 1;
                min-width: 40px;
                line-height: 1.3;
                -webkit-appearance: none;
            }

            .fi:focus {
                background: rgba(26, 74, 46, .07)
            }

            /* Textarea fields – expanded for longer content */
            .fi-ta {
                border: 1px solid #000;
                outline: none;
                font-family: Cambria, serif;
                font-size: 11pt;
                background: transparent;
                padding: 4px 6px;
                width: 100%;
                min-height: 80px;
                line-height: 1.4;
                resize: vertical;
                -webkit-appearance: none;
                box-sizing: border-box;
                margin-top: 2px;
            }

            .fi-ta:focus {
                background: rgba(26, 74, 46, .07);
                border: 1px solid #1a4a2e
            }

            .fi-ta.err {
                border: 2px solid #c0392b !important;
                background: #fff0f0
            }

            /* Fixed-width variants */
            .fi-xs {
                flex: 0 0 auto;
                width: 70px;
            }

            .fi-sm {
                flex: 0 0 auto;
                width: 100px;
            }

            .fi-md {
                flex: 0 0 auto;
                width: 140px;
            }

            .fi-gap {
                flex: 0 0 auto;
                width: 70px;
                font-weight: bold;
                color: #1a4a2e
            }

            /* ☐ Checkbox + label pair */
            .cbl {
                display: inline-flex;
                align-items: center;
                gap: 3px;
                white-space: nowrap;
                font-size: 11pt;
                cursor: pointer;
                margin-right: 4px;
            }

            .cbl input[type=checkbox] {
                width: 12px;
                height: 12px;
                flex-shrink: 0;
                cursor: pointer;
                accent-color: #000;
                position: relative;
                top: 1px;
            }

            /* The objectives block: 4 lines each starting with bold number */
            .obj-line {
                display: flex;
                align-items: flex-start;
                gap: 3px;
                margin-bottom: 8px;
                flex-wrap: wrap;
            }

            .obj-num {
                font-weight: bold;
                font-size: 11pt;
                width: 13px;
                flex-shrink: 0;
                padding-top: 4px;
            }

            .obj-line .fi-ta {
                flex: 1;
                min-width: 200px;
            }

            /* Section spacer (small gap between sections as in docx) */
            .gap2 {
                margin-top: 4px;
            }

            .gap3 {
                margin-top: 6px;
            }

            .gap5 {
                margin-top: 10px;
            }

            /* ── Supervisor certification block ── */
            .cert-intro {
                font-size: 11pt;
                margin: 3px 0 4px 0
            }

            .cert-indent {
                padding-left: 26px
            }

            .cert-row {
                display: flex;
                align-items: flex-start;
                gap: 5px;
                margin-bottom: 4px;
                font-size: 11pt
            }

            .cert-row input[type=checkbox] {
                width: 12px;
                height: 12px;
                flex-shrink: 0;
                cursor: pointer;
                margin-top: 2px;
                accent-color: #000
            }

            /* ── Bottom note (centered, as in docx) ── */
            .bottom-note {
                text-align: center;
                font-size: 11pt;
                margin-top: 14px;
                padding-top: 3px;
            }

            /* ── Error / validation ── */
            .fi.err {
                border-bottom: 2px solid #c0392b !important;
                background: #fff0f0
            }

            #err-banner {
                display: none;
                background: #fff0f0;
                border: 1px solid #c0392b;
                color: #c0392b;
                font-size: 9.5pt;
                padding: 7px 12px;
                border-radius: 3px;
                margin-bottom: 8px;
            }

            /* ── Buttons (UI only) ── */
            .btn-row {
                display: flex;
                justify-content: center;
                gap: 10px;
                flex-wrap: wrap;
                margin-top: 18px;
            }

            .btn-dl {
                background: #1a4a2e;
                color: #fff;
                border: none;
                padding: 10px 30px;
                font-size: 11pt;
                font-family: Cambria, serif;
                font-weight: bold;
                border-radius: 4px;
                cursor: pointer;
                transition: background .15s;
            }

            .btn-dl:hover {
                background: #103220
            }

            .btn-rst {
                background: #fff;
                color: #333;
                border: 1.5px solid #bbb;
                padding: 9px 20px;
                font-size: 11pt;
                font-family: Cambria, serif;
                border-radius: 4px;
                cursor: pointer;
            }

            .btn-rst:hover {
                background: #f5f5f5
            }

            /* ── RESPONSIVE ── */
            @media(max-width:620px) {
                .sheet {
                    padding: 22px 18px 22px;
                    margin: 10px auto 20px
                }

                body,
                .b,
                .n,
                .fi,
                .cbl,
                .obj-num,
                .cert-row,
                .cert-intro,
                .bottom-note,
                .form-title {
                    font-size: 10pt
                }

                .form-title {
                    font-size: 20pt
                }

                .logo-uaf {
                    height: 48px
                }

                .logo-oric {
                    height: 27px
                }

                .fi-xs {
                    width: 55px
                }

                .fi-sm {
                    width: 80px
                }

                .fi-md {
                    width: 110px
                }

                .fi-gap {
                    width: 55px
                }

                .btn-dl,
                .btn-rst {
                    font-size: 10pt;
                    padding: 8px 18px
                }

                .fi-ta {
                    min-height: 60px;
                    font-size: 10pt
                }
            }

            @media(max-width:400px) {
                .sheet {
                    padding: 14px 12px 18px;
                    margin: 6px
                }

                body,
                .b,
                .n,
                .fi,
                .cbl,
                .cert-row,
                .form-title {
                    font-size: 9.5pt
                }

                .form-title {
                    font-size: 17pt
                }

                .logo-uaf {
                    height: 38px
                }

                .logo-oric {
                    height: 22px
                }
            }

            /* ── PRINT ── */
            @media print {
                body {
                    background: #fff
                }

                .sheet {
                    margin: 0;
                    padding: 36px 28px 20px;
                    box-shadow: none
                }

                .prog-bar-wrap,
                .btn-row,
                #err-banner {
                    display: none !important
                }

                .fi:focus {
                    background: transparent
                }
            }
        </style>
    </head>

    <body>
        <form id="mainForm" runat="server">
            <div class="sheet">

                <!-- ══ LOGOS ══ -->
                <div class="logo-row">
                    <img class="logo-uaf" id="uafLogo" alt="UAF" />
                    <img class="logo-oric" id="oricLogo" alt="ORIC" />
                </div>

                <!-- ══ TITLE (28pt Cambria, centered, as in docx) ══ -->
                <div class="form-title">Partial Research Support Proposal Form</div>

                <!-- Progress bar (UI helper, hidden on print) -->
                <div class="prog-bar-wrap">
                    <div class="prog-bar">
                        <div class="prog-fill" id="progFill"></div>
                    </div>
                    <span class="prog-pct" id="progPct">0%</span>
                </div>

                <!-- Error banner -->
                <div id="err-banner">⚠ Please fill all highlighted fields before downloading.</div>

                <!-- ══════════════════════════════════════════════════════
       A. Basic Information  (docx: one paragraph, both-justified)
  ══════════════════════════════════════════════════════ -->
                <div class="para gap2">
                    <span class="b">A.&nbsp;Basic Information:&nbsp;</span>
                    <span class="n">Student Name:</span>
                    <span class="n">&nbsp;</span>
                    <input class="fi" id="studentName" type="text" autocomplete="name" />
                    <span class="n">&nbsp;&nbsp;Registration No:</span>
                    <span class="n">&nbsp;</span>
                    <input class="fi fi-md" id="regNo" type="text" />
                </div>

                <div class="para" style="margin-top:2px">
                    <span class="n">Degree:</span>
                    <span class="n">&nbsp;</span>
                    <label class="cbl"><input type="checkbox" id="degMS"
                            onchange="onlyOne(this,'degPhD')" />&nbsp;MS/MPhil</label>
                    <span class="n">&nbsp;&nbsp;&nbsp;</span>
                    <label class="cbl"><input type="checkbox" id="degPhD"
                            onchange="onlyOne(this,'degMS')" />&nbsp;PhD</label>
                    <span class="n">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
                    <span class="n">Department:</span>
                    <span class="n">&nbsp;</span>
                    <input class="fi" id="dept" type="text" />
                </div>

                <!-- ══════════════════════════════════════════════════════
       B. Research Summary  (one long paragraph continuing from A)
  ══════════════════════════════════════════════════════ -->
                <div class="para gap2">
                    <span class="b">B.&nbsp;Research Summary</span>
                    <span class="n">&nbsp;(Must attach approved SYNOPSIS):</span>
                    <span class="n">&nbsp;Title</span>
                    <textarea class="fi-ta" id="resTitle"
                        placeholder="Enter research title (multiline supported)"></textarea>
                </div>
                <!-- continuation underline line -->
                <div style="border-bottom:1px solid #000;margin-top:2px;margin-bottom:4px"></div>

                <!-- Objectives heading -->
                <div class="gap2" style="font-weight:bold;font-size:11pt;margin-bottom:3px">Objectives (2-4):</div>

                <!-- 4 objective lines (1-line each with bold number then underline) -->
                <div class="obj-line">
                    <span class="obj-num">1</span>
                    <textarea class="fi-ta" id="obj1" placeholder="Objective 1"></textarea>
                </div>
                <div class="obj-line">
                    <span class="obj-num">2</span>
                    <textarea class="fi-ta" id="obj2" placeholder="Objective 2"></textarea>
                </div>
                <div class="obj-line">
                    <span class="obj-num">3</span>
                    <textarea class="fi-ta" id="obj3" placeholder="Objective 3"></textarea>
                </div>
                <div class="obj-line">
                    <span class="obj-num">4</span>
                    <textarea class="fi-ta" id="obj4" placeholder="Objective 4"></textarea>
                </div>

                <!-- ══════════════════════════════════════════════════════
       C. Funding Gap  +  D. Limitation  (same paragraph in docx)
  ══════════════════════════════════════════════════════ -->
                <div class="para gap2">
                    <span class="b">C.&nbsp;Funding Gap Analysis</span>
                    <span class="n">&nbsp;(In Million PKR):</span>
                    <span class="n">&nbsp;Total</span>
                    <span class="n">&nbsp;</span>
                    <input class="fi fi-xs" id="totalCost" type="number" min="0" step="0.001" oninput="calcGap()" />
                    <span class="n">&nbsp;Available</span>
                    <span class="n">&nbsp;</span>
                    <input class="fi fi-xs" id="availRes" type="number" min="0" step="0.001" oninput="calcGap()" />
                    <span class="n">&nbsp;Funding Gap:</span>
                    <span class="n">&nbsp;</span>
                    <input class="fi fi-gap" id="fundGap" type="text" readonly tabindex="-1" />
                    <span class="n">&nbsp;&nbsp;</span>
                    <span class="b">D.&nbsp;Limitation</span>
                    <span class="n">&nbsp;(Tick &amp; Explain):</span>
                    <label class="cbl"><input type="checkbox" name="lim" value="Consumables" />&nbsp;Consumables</label>
                    <label class="cbl"><input type="checkbox" name="lim" value="Lab testing" />&nbsp;Lab testing</label>
                    <label class="cbl"><input type="checkbox" name="lim" value="Field work" />&nbsp;Field work</label>
                    <label class="cbl"><input type="checkbox" name="lim" value="Other" />&nbsp;Other.</label>
                    <span class="n">&nbsp;Explanation:</span>
                    <textarea class="fi-ta" id="limitExpl1"
                        placeholder="Explain the limitation (multiline supported)"></textarea>
                </div>

                <!-- ══════════════════════════════════════════════════════
       E. Efforts Made  +  F. Impact  (same paragraph in docx)
  ══════════════════════════════════════════════════════ -->
                <div class="para gap2">
                    <span class="b">E.&nbsp;Efforts Made:</span>
                    <label class="cbl"><input type="checkbox" name="eff" value="Supervisor support" />&nbsp;Supervisor
                        support</label>
                    <label class="cbl"><input type="checkbox" name="eff" value="Dept support" />&nbsp;Dept
                        support</label>
                    <label class="cbl"><input type="checkbox" name="eff" value="External attempt" />&nbsp;External
                        attempt.</label>
                    <span class="n">&nbsp;Details:</span>
                    <textarea class="fi-ta" id="effDet1"
                        placeholder="Describe efforts made (multiline supported)"></textarea>
                    <span class="b">F.&nbsp;Impact if Not Funded</span>
                    <label class="cbl" style="margin-left:4px"><input type="checkbox" name="imp"
                            value="Delay" />&nbsp;Delay</label>
                    <label class="cbl"><input type="checkbox" name="imp" value="Compromise" />&nbsp;Compromise</label>
                    <label class="cbl"><input type="checkbox" name="imp" value="Incomplete" />&nbsp;Incomplete.</label>
                    <span class="n">&nbsp;Explanation:</span>
                    <textarea class="fi-ta" id="impEx1"
                        placeholder="Explain the impact if not funded (multiline supported)"></textarea>
                </div>

                <!-- ══════════════════════════════════════════════════════
       G. Budget  (one paragraph)
  ══════════════════════════════════════════════════════ -->
                <div class="para gap2">
                    <span class="b">G.&nbsp;Budget</span>
                    <span class="n">&nbsp;(Consumables Only)&nbsp;</span>
                    <span class="n">Item:</span>
                    <span class="n">&nbsp;</span>
                    <input class="fi" id="budgetItem" type="text" />
                    <span class="n">&nbsp;&nbsp;Cost:</span>
                    <span class="n">&nbsp;</span>
                    <input class="fi fi-xs" id="budgetCost" type="number" min="0" />
                    <span class="n">&nbsp;</span>
                    <span class="n">Justification:</span>
                    <textarea class="fi-ta" id="budgetJust"
                        placeholder="Justify the budget item (multiline supported)"></textarea>
                </div>

                <!-- ══════════════════════════════════════════════════════
       H. Supervisor Certification
       docx: heading on its own line, then "I certify that:" line,
       then 4 checkbox items with tab-stop indentation
  ══════════════════════════════════════════════════════ -->
                <div class="gap5" style="font-weight:bold;font-size:11pt">H.&nbsp;Supervisor Certification:</div>

                <div class="cert-intro">I certify that:</div>

                <div class="cert-indent">
                    <div class="cert-row">
                        <input type="checkbox" id="cert1" />
                        <span>The student has no adequate financial support,</span>
                    </div>
                    <div class="cert-row">
                        <input type="checkbox" id="cert2" />
                        <span>Available resources have been reasonably utilized,</span>
                    </div>
                    <div class="cert-row">
                        <input type="checkbox" id="cert3" />
                        <span>The requested amount reflects a genuine funding gap</span>
                    </div>
                    <div class="cert-row">
                        <input type="checkbox" id="cert4" />
                        <span>The research is feasible upon support</span>
                    </div>
                </div>

                <!-- Supervisor Name + Signature row -->
                <div class="para gap3">
                    <span class="n">Supervisor Name:</span>
                    <span class="n">&nbsp;</span>
                    <input class="fi" id="supName" type="text" />
                    <span class="n">&nbsp;&nbsp;Signature:</span>
                    <span class="n">&nbsp;</span>
                    <input class="fi fi-md" id="supSig" type="text" />
                    <span class="n">&nbsp;&nbsp;Department &amp; Address</span>
                    <textarea class="fi-ta" id="supDept"
                        placeholder="Enter department and address (multiline supported)"></textarea>
                </div>

                <!-- ══ BOTTOM NOTE (centered, as in docx) ══ -->
                <div class="bottom-note">
                    [Note: Supervisor will act as Financial Focal Person and will NOT be counted as PI in SAR]
                </div>

                <!-- ══ BUTTONS ══ -->
                <div class="btn-row">
                    <button type="button" class="btn-dl" onclick="downloadPDF()">⬇&nbsp;Download PDF</button>
                    <button type="button" class="btn-rst" onclick="resetForm()">↺&nbsp;Reset</button>
                </div>

            </div><!-- /sheet -->
        </form>

        <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.5.1/jspdf.umd.min.js"></script>
        <script>
            // ── Embed logos ──
            var UAF_B64 = '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';
            var ORIC_B64 = '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';
            document.getElementById('uafLogo').src = 'data:image/png;base64,' + UAF_B64;
            document.getElementById('oricLogo').src = 'data:image/png;base64,' + ORIC_B64;

            // ── Degree: only one at a time ──
            function onlyOne(cb, other) { if (cb.checked) document.getElementById(other).checked = false; prog(); }

            // ── Funding gap ──
            function calcGap() {
                var tc = parseFloat(document.getElementById('totalCost').value) || 0;
                var ar = parseFloat(document.getElementById('availRes').value) || 0;
                document.getElementById('fundGap').value = (tc || ar) ? (tc - ar).toFixed(3) : '';
                prog();
            }

            // ── Progress ──
            var REQ = ['studentName', 'regNo', 'dept', 'resTitle', 'obj1', 'obj2',
                'totalCost', 'availRes', 'limitExpl1', 'effDet1', 'impEx1',
                'budgetItem', 'budgetCost', 'budgetJust', 'supName', 'supDept'];
            function prog() {
                var done = 0;
                REQ.forEach(function (id) { var e = document.getElementById(id); if (e && e.value.trim()) done++; });
                var p = Math.round(done / REQ.length * 100);
                document.getElementById('progFill').style.width = p + '%';
                document.getElementById('progPct').textContent = p + '%';
            }
            document.querySelectorAll('input[type=text],input[type=number],textarea').forEach(function (e) { e.addEventListener('input', prog); });

            // ── Validate ──
            function validate() {
                var ok = true;
                REQ.forEach(function (id) {
                    var e = document.getElementById(id);
                    if (!e) return;
                    if (!e.value.trim()) { e.classList.add('err'); ok = false; }
                    else e.classList.remove('err');
                });
                document.getElementById('err-banner').style.display = ok ? 'none' : 'block';
                if (!ok) { var f = document.querySelector('.err'); if (f) f.scrollIntoView({ behavior: 'smooth', block: 'center' }); }
                return ok;
            }

            // ── Reset ──
            function resetForm() {
                if (!confirm('Reset all fields?')) return;
                document.querySelectorAll('input[type=text],input[type=number],textarea').forEach(function (e) { e.value = ''; e.classList.remove('err'); });
                document.querySelectorAll('input[type=checkbox]').forEach(function (e) { e.checked = false; });
                document.getElementById('fundGap').value = '';
                document.getElementById('err-banner').style.display = 'none';
                prog();
            }

            // ── Helpers ──
            function v(id) { var e = document.getElementById(id); return e ? e.value.trim() : ''; }
            function checked(name) { return Array.from(document.querySelectorAll('input[name="' + name + '"]:checked')).map(function (c) { return c.value; }); }
            function deg() { return document.getElementById('degMS').checked ? 'MS/MPhil' : document.getElementById('degPhD').checked ? 'PhD' : ''; }

            // ══════════════════════════════════════════════════════════════
            //  PDF — exact replica of the docx layout
            //  Page: A4 (for web export), Cambria 11pt, margins ~12mm L/R
            // ══════════════════════════════════════════════════════════════
            function downloadPDF() {
                if (!validate()) { alert('Please fill all required fields (highlighted in red).'); return; }
                if (typeof window.jspdf === 'undefined') { alert('PDF library still loading – try again in a moment.'); return; }

                var jsPDF = window.jspdf.jsPDF;
                var doc = new jsPDF({ orientation: 'portrait', unit: 'mm', format: 'a4' });

                // Page metrics
                var PW = 210, PH = 297, ML = 12, MR = 12, CW = PW - ML - MR;
                var y = 8;

                // ── Safety: start new page if needed ──
                function chk(h) { if (y + (h || 6) > PH - 12) { doc.addPage(); y = 10; } }

                // ── Calculate text height ──
                function calcHeight(text, width) {
                    doc.setFont('times', 'normal'); doc.setFontSize(10);
                    if (!text) return 4.5;
                    var lines = doc.splitTextToSize(text.toString(), width - 1);
                    return Math.max(1, lines.length) * 4.5;
                }

                // ── Draw multi-line text (no borders) ──
                function uline(x, val, w, yy, bold) {
                    doc.setFont('times', bold ? 'bold' : 'normal');
                    doc.setFontSize(10);

                    var textLines = [];
                    if (val) {
                        textLines = doc.splitTextToSize(val.toString(), w - 1);
                    } else {
                        textLines = [''];
                    }

                    var lineHeight = 4.5;
                    var boxHeight = textLines.length * lineHeight + 1;

                    // Draw underline instead of box
                    doc.setDrawColor(0); doc.setLineWidth(0.2);
                    doc.line(x, yy + 0.5, x + w, yy + 0.5);

                    // Draw text
                    doc.setTextColor(0, 0, 0);
                    doc.text(textLines, x + 0.5, yy);

                    return { endX: x + w, boxHeight: boxHeight };
                }

                // ── Bold label, returns end x ──
                function bl(x, txt, yy, sz) {
                    sz = sz || 10.5;
                    doc.setFont('times', 'bold'); doc.setFontSize(sz); doc.setTextColor(0);
                    doc.text(txt, x, yy);
                    return x + doc.getTextWidth(txt);
                }

                // ── Normal label, returns end x ──
                function nl(x, txt, yy, sz) {
                    sz = sz || 10.5;
                    doc.setFont('times', 'normal'); doc.setFontSize(sz); doc.setTextColor(0);
                    doc.text(txt, x, yy);
                    return x + doc.getTextWidth(txt);
                }

                // ── Checkbox box + optional tick, returns end x ──
                function cb(x, ticked, yy) {
                    doc.setDrawColor(0); doc.setLineWidth(0.3);
                    doc.rect(x, yy - 3.2, 3.2, 3.2);
                    if (ticked) {
                        doc.setLineWidth(0.55);
                        doc.line(x + 0.4, yy - 1.6, x + 1.1, yy - 0.7);
                        doc.line(x + 1.1, yy - 0.7, x + 2.8, yy - 3.0);
                        doc.setLineWidth(0.3);
                    }
                    return x + 3.2;
                }

                // ── Checkbox + label, returns end x ──
                function cbl(x, ticked, lbl, yy) {
                    x = cb(x, ticked, yy) + 0.8;
                    x = nl(x, lbl, yy) + 1.5;
                    return x;
                }

                // ── Full-width rule ──
                function rule(yy) { doc.setDrawColor(0); doc.setLineWidth(0.2); doc.line(ML, yy, ML + CW, yy); }

                // ════════════ BUILD ════════════

                // ── Logos ──
                try { doc.addImage('data:image/png;base64,' + UAF_B64, 'PNG', ML, y, 17.5, 17.4); } catch (e) { }
                try { doc.addImage('data:image/png;base64,' + ORIC_B64, 'PNG', PW - MR - 17.7, y + 3, 17.7, 9.5); } catch (e) { }
                y += 22;

                // ── Title (28pt Cambria → use 18pt bold times) ──
                doc.setFont('times', 'bold'); doc.setFontSize(18);
                doc.setTextColor(0);
                doc.text('Partial Research Support Proposal Form', PW / 2, y, { align: 'center' });
                y += 9;

                // ════ A. Basic Information ════
                chk(15);
                var ax = ML;
                ax = bl(ax, 'A. Basic Information: ', y);
                ax = nl(ax, 'Student Name: ', y);
                var res1 = uline(ax, v('studentName'), 62, y); ax = res1.endX + 2;
                ax = nl(ax, 'Reg No: ', y);
                var res2 = uline(ax, v('regNo'), PW - MR - ax, y);
                y += Math.max(res1.boxHeight, res2.boxHeight) + 2;

                // ─── Degree ☐ MS/MPhil ☐ PhD … Department _____ ───
                chk(12);
                ax = ML;
                ax = nl(ax, 'Degree: ', y);
                ax = cbl(ax, document.getElementById('degMS').checked, 'MS/MPhil', y); ax += 4;
                ax = cbl(ax, document.getElementById('degPhD').checked, 'PhD', y); ax += 10;
                ax = nl(ax, 'Department: ', y);
                var res3 = uline(ax, v('dept'), PW - MR - ax, y);
                y += res3.boxHeight + 3;

                // ════ B. Research Summary ════
             chk(22);
ax = ML;
ax = bl(ax, 'B. Research Summary', y);
ax = nl(ax, ' (Must attach approved SYNOPSIS)', y);
y += 7;

ax = ML;
ax = nl(ax, 'Title: ', y);
var resTitleRes = uline(ax, v('resTitle'), PW - MR - ax, y);
y += resTitleRes.boxHeight + 12;

                // Objectives
                chk(30);
                doc.setFont('times', 'bold'); doc.setFontSize(10.5);
                doc.setTextColor(0);
                doc.text('Objectives (2-4):', ML, y);
                y += 5;

                ['obj1', 'obj2', 'obj3', 'obj4'].forEach(function (id, i) {
                    chk(14);
                    doc.setFont('times', 'bold'); doc.setFontSize(10);
                    doc.text('' + (i + 1), ML, y);
                    var objRes = uline(ML + 5, v(id), CW - 5, y);
                    y += objRes.boxHeight + 2;
                });
                y += 2;

                // ════ C. Funding Gap + D. Limitation ════
                               // ====================== C. Funding Gap Analysis ======================
                chk(20);
                ax = ML;
                ax = bl(ax, 'C. Funding Gap Analysis', y);
                ax = nl(ax, ' (In Million PKR)', y);
                y += 8;

                // Clean inline funding fields
                ax = ML;
                ax = nl(ax, 'Total Cost: ', y);
                uline(ax, v('totalCost'), 25, y); 
                ax += 32;

                ax = nl(ax, 'Available: ', y);
                uline(ax, v('availRes'), 25, y); 
                ax += 32;

                ax = nl(ax, 'Funding Gap: ', y);
                doc.setFont('times', 'bold');
                doc.setTextColor(192, 0, 0);
                uline(ax, v('fundGap'), 28, y, true);

                y += 14;   // Good spacing after funding row

                // ====================== D. Limitation ======================
                chk(22);
                ax = ML;
                ax = bl(ax, 'D. Limitation', y);
                ax = nl(ax, ' (Tick & Explain)', y);
                y += 8;

                // Checkboxes
                var limV = checked('lim');
                ax = ML + 4;

                ['Consumables', 'Lab testing', 'Field work', 'Other'].forEach(function (opt) {
                    var ticked = limV.some(function(val) {
                        return val.toLowerCase().includes(opt.toLowerCase());
                    });
                    ax = cbl(ax, ticked, opt, y) + 12;
                });

                // Explanation field
                y += 9;
                ax = ML;
                ax = nl(ax, 'Explanation: ', y);
                var limRes = uline(ax, v('limitExpl1'), PW - MR - ax, y);
                y += limRes.boxHeight + 12;
                // ════ E. Efforts Made + F. Impact ════
              

                // ════ G. Budget ════
                chk(14);
                ax = ML;
                ax = bl(ax, 'G. Budget', y);
                ax = nl(ax, ' (Consumables) Item: ', y);
                var budItemRes = uline(ax, v('budgetItem'), 50, y); ax = budItemRes.endX + 2;
                ax = nl(ax, 'Cost: ', y);
                uline(ax, v('budgetCost'), PW - MR - ax, y);
                y += Math.max(budItemRes.boxHeight, 4.5) + 3;
                // ====================== E. Efforts Made ======================
                chk(22);
                ax = ML;
                ax = bl(ax, 'E. Efforts Made', y);
                y += 8;

                // Checkboxes
                var effV = checked('eff');
                ax = ML + 5;
                ['Supervisor support', 'Dept support', 'External attempt'].forEach(function (opt) {
                    var ticked = effV.some(function(val) {
                        return val.toLowerCase().includes(opt.toLowerCase());
                    });
                    ax = cbl(ax, ticked, opt, y) + 12;
                });

                y += 10;

                // Details field
                ax = ML;
                ax = nl(ax, 'Details: ', y);
                var effRes = uline(ax, v('effDet1'), PW - MR - ax, y);
                y += effRes.boxHeight + 14;


                // ====================== F. Impact if Not Funded ======================
                chk(22);
                ax = ML;
                ax = bl(ax, 'F. Impact if Not Funded', y);
                y += 8;

                // Checkboxes
                var impV = checked('imp');
                ax = ML + 5;
                ['Delay', 'Compromise', 'Incomplete'].forEach(function (opt) {
                    var ticked = impV.some(function(val) {
                        return val.toLowerCase().includes(opt.toLowerCase());
                    });
                    ax = cbl(ax, ticked, opt, y) + 12;
                });

                y += 10;

                // Explanation field
                ax = ML;
                ax = nl(ax, 'Explanation: ', y);
                var impRes = uline(ax, v('impEx1'), PW - MR - ax, y);
                y += impRes.boxHeight + 14;
                chk(12);
                ax = ML;
                ax = nl(ax, 'Justification: ', y);
                var budJustRes = uline(ax, v('budgetJust'), PW - MR - ax, y);
                y += budJustRes.boxHeight + 4;

                // ════ H. Supervisor Certification ════
                chk(40);
                bl(ML, 'H. Supervisor Certification:', y);
                y += 5;
                nl(ML, 'I certify that:', y);
                y += 5;

                var certTxt = [
                    'The student has no adequate financial support,',
                    'Available resources have been reasonably utilized,',
                    'The requested amount reflects a genuine funding gap',
                    'The research is feasible upon support'
                ];
                var certIds = ['cert1', 'cert2', 'cert3', 'cert4'];
                var ind = ML + 5;
                certIds.forEach(function (id, i) {
                    chk(6);
                    var ticked = document.getElementById(id).checked;
                    cbl(ind, ticked, certTxt[i], y);
                    y += 5;
                });

                y += 2;
                chk(12);
                ax = ML;
                ax = nl(ax, 'Supervisor Name: ', y);
                var supNameRes = uline(ax, v('supName'), 60, y); ax = supNameRes.endX + 2;
                ax = nl(ax, 'Signature: ', y);
                var supSigRes = uline(ax, v('supSig'), PW - MR - ax, y);
                y += Math.max(supNameRes.boxHeight, supSigRes.boxHeight) + 3;

                chk(10);
                ax = ML;
                ax = nl(ax, 'Department & Address: ', y);
                var supDeptRes = uline(ax, v('supDept'), PW - MR - ax, y);
                y += supDeptRes.boxHeight + 4;

                // ── Bottom note ──
                chk(8);
                doc.setFont('times', 'normal'); doc.setFontSize(9); doc.setTextColor(0);
                doc.text('[Note: Supervisor will act as Financial Focal Person and will NOT be counted as PI]', PW / 2, y, { align: 'center' });

                // ── Save ──
                var fn = 'ORIC_Research_Proposal_' + (v('regNo') || 'Form').replace(/[^a-z0-9\-]/gi, '_') + '.pdf';
                doc.save(fn);
            }
        </script>
    </body>

    </html>