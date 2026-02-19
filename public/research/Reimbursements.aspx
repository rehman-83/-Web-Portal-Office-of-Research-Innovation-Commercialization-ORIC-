<%@ Page Language="C#" MasterPageFile="~/_includes/Site.master" AutoEventWireup="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Research Reimbursements - ORIC
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <section class="bg-gradient-to-r from-amber-600 to-orange-700 text-white py-16">
        <div class="container mx-auto px-4">
            <h1 class="text-4xl font-bold mb-4">Research Reimbursement Policies</h1>
            <p class="text-xl">Guidelines for Research-Related Expense Claims</p>
        </div>
    </section>
    
    <section class="py-16 bg-white">
        <div class="container mx-auto px-4 max-w-5xl">
            <div class="mb-12">
                <h2 class="text-3xl font-bold text-gray-900 mb-4">Overview</h2>
                <p class="text-lg text-gray-700 mb-4">
                    ORIC provides reimbursement for eligible research-related expenses incurred by faculty 
                    and researchers. This page outlines the policies, procedures, and required documentation 
                    for claiming reimbursements.
                </p>
            </div>
            
            <!-- Eligible Expenses -->
            <div class="mb-12">
                <h3 class="text-2xl font-bold text-gray-900 mb-6">Eligible Expenses</h3>
                
                <div class="grid md:grid-cols-2 gap-6">
                    <div class="card border-l-4 border-blue-600">
                        <h4 class="text-lg font-bold text-blue-900 mb-3">📄 Publication Charges</h4>
                        <ul class="space-y-2 text-gray-700 text-sm">
                            <li>✓ Article Processing Charges (APC)</li>
                            <li>✓ Open Access fees</li>
                            <li>✓ Page charges for HEC W/X category journals</li>
                            <li>✓ Language editing services</li>
                        </ul>
                        <div class="mt-3 text-sm">
                            <strong>Limit:</strong> Up to PKR 150,000 per article
                        </div>
                    </div>
                    
                    <div class="card border-l-4 border-green-600">
                        <h4 class="text-lg font-bold text-green-900 mb-3">✈️ Conference Travel</h4>
                        <ul class="space-y-2 text-gray-700 text-sm">
                            <li>✓ International conference registration</li>
                            <li>✓ Airfare (economy class)</li>
                            <li>✓ Hotel accommodation</li>
                            <li>✓ Daily allowance</li>
                        </ul>
                        <div class="mt-3 text-sm">
                            <strong>Limit:</strong> Up to PKR 250,000 per trip
                        </div>
                    </div>
                    
                    <div class="card border-l-4 border-purple-600">
                        <h4 class="text-lg font-bold text-purple-900 mb-3">🔬 Research Equipment</h4>
                        <ul class="space-y-2 text-gray-700 text-sm">
                            <li>✓ Laboratory equipment</li>
                            <li>✓ Research software licenses</li>
                            <li>✓ Computing equipment</li>
                            <li>✓ Field research tools</li>
                        </ul>
                        <div class="mt-3 text-sm">
                            <strong>Limit:</strong> As per approved project budget
                        </div>
                    </div>
                    
                    <div class="card border-l-4 border-orange-600">
                        <h4 class="text-lg font-bold text-orange-900 mb-3">📚 Research Materials</h4>
                        <ul class="space-y-2 text-gray-700 text-sm">
                            <li>✓ Books and reference materials</li>
                            <li>✓ Database subscriptions</li>
                            <li>✓ Laboratory consumables</li>
                            <li>✓ Survey/data collection costs</li>
                        </ul>
                        <div class="mt-3 text-sm">
                            <strong>Limit:</strong> As per approved budget
                        </div>
                    </div>
                    
                    <div class="card border-l-4 border-red-600">
                        <h4 class="text-lg font-bold text-red-900 mb-3">🎓 Training & Workshops</h4>
                        <ul class="space-y-2 text-gray-700 text-sm">
                            <li>✓ Training program fees</li>
                            <li>✓ Workshop registration</li>
                            <li>✓ Certificate courses</li>
                            <li>✓ Professional memberships</li>
                        </ul>
                        <div class="mt-3 text-sm">
                            <strong>Limit:</strong> Up to PKR 50,000 annually
                        </div>
                    </div>
                    
                    <div class="card border-l-4 border-teal-600">
                        <h4 class="text-lg font-bold text-teal-900 mb-3">💼 Other Services</h4>
                        <ul class="space-y-2 text-gray-700 text-sm">
                            <li>✓ Statistical analysis services</li>
                            <li>✓ Transcription services</li>
                            <li>✓ Translation services</li>
                            <li>✓ Research assistance</li>
                        </ul>
                        <div class="mt-3 text-sm">
                            <strong>Limit:</strong> As per sanctioned project
                        </div>
                    </div>
                </div>
            </div>
            
            <!-- Non-Eligible Expenses -->
            <div class="bg-red-50 border-l-4 border-red-600 p-6 mb-12">
                <h3 class="text-xl font-bold text-red-900 mb-4">❌ Non-Eligible Expenses</h3>
                <div class="grid md:grid-cols-2 gap-4 text-gray-700">
                    <ul class="space-y-2">
                        <li>• Personal expenses</li>
                        <li>• Entertainment costs</li>
                        <li>• Gifts and donations</li>
                        <li>• Fines and penalties</li>
                    </ul>
                    <ul class="space-y-2">
                        <li>• Alcohol or tobacco purchases</li>
                        <li>• Non-academic conferences</li>
                        <li>• Predatory journal fees</li>
                        <li>• Expenses without proper documentation</li>
                    </ul>
                </div>
            </div>
            
            <!-- Reimbursement Process -->
            <div class="mb-12">
                <h3 class="text-2xl font-bold text-gray-900 mb-6">Reimbursement Process</h3>
                
                <div class="space-y-6">
                    <div class="flex items-start">
                        <div class="bg-amber-600 text-white rounded-full w-10 h-10 flex items-center justify-center flex-shrink-0 mr-4 font-bold">1</div>
                        <div class="flex-1">
                            <h4 class="text-lg font-bold text-gray-900 mb-2">Pre-Approval (If Required)</h4>
                            <p class="text-gray-700 mb-2">
                                For expenses exceeding PKR 50,000, obtain pre-approval from ORIC by submitting 
                                justification and quotations.
                            </p>
                            <div class="bg-yellow-50 p-3 rounded text-sm">
                                <strong>Note:</strong> Conference travel always requires pre-approval
                            </div>
                        </div>
                    </div>
                    
                    <div class="flex items-start">
                        <div class="bg-amber-600 text-white rounded-full w-10 h-10 flex items-center justify-center flex-shrink-0 mr-4 font-bold">2</div>
                        <div class="flex-1">
                            <h4 class="text-lg font-bold text-gray-900 mb-2">Collect Documentation</h4>
                            <p class="text-gray-700 mb-2">Gather all required documents:</p>
                            <ul class="text-gray-600 ml-4 text-sm space-y-1">
                                <li>• Original receipts/invoices</li>
                                <li>• Proof of payment (bank statement/credit card)</li>
                                <li>• Conference acceptance letter (if applicable)</li>
                                <li>• Published paper/DOI (for publication fees)</li>
                                <li>• Travel boarding passes and tickets</li>
                            </ul>
                        </div>
                    </div>
                    
                    <div class="flex items-start">
                        <div class="bg-amber-600 text-white rounded-full w-10 h-10 flex items-center justify-center flex-shrink-0 mr-4 font-bold">3</div>
                        <div class="flex-1">
                            <h4 class="text-lg font-bold text-gray-900 mb-2">Submit Claim Form</h4>
                            <p class="text-gray-700 mb-2">
                                Complete the reimbursement claim form (available on ORIC portal) and attach 
                                all supporting documents. Submit to ORIC within 30 days of expense.
                            </p>
                        </div>
                    </div>
                    
                    <div class="flex items-start">
                        <div class="bg-amber-600 text-white rounded-full w-10 h-10 flex items-center justify-center flex-shrink-0 mr-4 font-bold">4</div>
                        <div class="flex-1">
                            <h4 class="text-lg font-bold text-gray-900 mb-2">Verification & Approval</h4>
                            <p class="text-gray-700 mb-2">
                                ORIC verifies documentation and forwards to Finance. May request additional 
                                information if needed.
                            </p>
                            <div class="text-sm text-gray-600">
                                <strong>Timeline:</strong> 2-3 weeks for verification
                            </div>
                        </div>
                    </div>
                    
                    <div class="flex items-start">
                        <div class="bg-amber-600 text-white rounded-full w-10 h-10 flex items-center justify-center flex-shrink-0 mr-4 font-bold">5</div>
                        <div class="flex-1">
                            <h4 class="text-lg font-bold text-gray-900 mb-2">Payment</h4>
                            <p class="text-gray-700 mb-2">
                                Once approved, Finance processes payment directly to your bank account.
                            </p>
                            <div class="text-sm text-gray-600">
                                <strong>Timeline:</strong> 1-2 weeks after approval
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
            <!-- Important Guidelines -->
            <div class="bg-blue-50 p-8 rounded-lg mb-8">
                <h3 class="text-2xl font-bold text-blue-900 mb-4">Important Guidelines</h3>
                <div class="grid md:grid-cols-2 gap-6">
                    <div>
                        <h4 class="font-bold text-gray-900 mb-3">Documentation Requirements</h4>
                        <ul class="space-y-2 text-gray-700 text-sm">
                            <li>• All receipts must be original</li>
                            <li>• Invoices must show item details</li>
                            <li>• Currency conversion at official rate</li>
                            <li>• Submission within 30 days of expense</li>
                        </ul>
                    </div>
                    <div>
                        <h4 class="font-bold text-gray-900 mb-3">Payment Terms</h4>
                        <ul class="space-y-2 text-gray-700 text-sm">
                            <li>• Tax deductions as per law</li>
                            <li>• Payment via bank transfer only</li>
                            <li>• Partial reimbursement if over limit</li>
                            <li>• Advance payment for conferences (on request)</li>
                        </ul>
                    </div>
                </div>
            </div>
            
            <!-- Downloadable Forms -->
            <div class="mb-12">
                <h3 class="text-2xl font-bold text-gray-900 mb-6">Download Forms</h3>
                <div class="grid md:grid-cols-3 gap-4">
                    <a href="#" class="card hover:shadow-lg transition-shadow text-center">
                        <div class="text-4xl mb-2">📄</div>
                        <h4 class="font-bold text-gray-900">Reimbursement Claim Form</h4>
                        <p class="text-sm text-blue-600 mt-2">Download PDF</p>
                    </a>
                    <a href="#" class="card hover:shadow-lg transition-shadow text-center">
                        <div class="text-4xl mb-2">✈️</div>
                        <h4 class="font-bold text-gray-900">Conference Travel Form</h4>
                        <p class="text-sm text-blue-600 mt-2">Download PDF</p>
                    </a>
                    <a href="#" class="card hover:shadow-lg transition-shadow text-center">
                        <div class="text-4xl mb-2">📋</div>
                        <h4 class="font-bold text-gray-900">Pre-Approval Request</h4>
                        <p class="text-sm text-blue-600 mt-2">Download PDF</p>
                    </a>
                </div>
            </div>
            
            <!-- Contact -->
            <div class="text-center bg-gradient-to-r from-amber-600 to-orange-700 text-white p-8 rounded-lg">
                <h3 class="text-2xl font-bold mb-4">Need Assistance?</h3>
                <p class="mb-6">Contact the ORIC Finance Section for queries about reimbursements</p>
                <div class="flex justify-center gap-4">
                    <a href="#" class="bg-white text-amber-600 px-6 py-3 rounded-lg font-semibold hover:bg-gray-100 inline-block">
                        Submit Reimbursement Claim
                    </a>
                    <a href="#" class="border-2 border-white text-white px-6 py-3 rounded-lg font-semibold hover:bg-white hover:text-amber-600 transition inline-block">
                        Contact Finance Section
                    </a>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
