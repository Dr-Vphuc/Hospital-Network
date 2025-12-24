// Hospital Management System - JavaScript
// Initialize the application when DOM is loaded
document.addEventListener('DOMContentLoaded', function() {
    // Initialize Feather icons
    feather.replace();
    
    // Initialize the application
    initializeApp();
});

// Mock Data
const mockData = {
    patients: [
        { id: 1, name: 'John Doe', age: 45, contact: 'john.doe@email.com', admissionDate: '2024-01-15', department: 'Cardiology', status: 'Active' },
        { id: 2, name: 'Jane Smith', age: 32, contact: 'jane.smith@email.com', admissionDate: '2024-01-20', department: 'Neurology', status: 'Active' },
        { id: 3, name: 'Mike Johnson', age: 58, contact: 'mike.j@email.com', admissionDate: '2024-01-18', department: 'Orthopedics', status: 'Pending' },
        { id: 4, name: 'Sarah Wilson', age: 28, contact: 'sarah.w@email.com', admissionDate: '2024-01-22', department: 'Pediatrics', status: 'Active' },
        { id: 5, name: 'Robert Brown', age: 67, contact: 'robert.b@email.com', admissionDate: '2024-01-10', department: 'Emergency', status: 'Discharged' },
        { id: 6, name: 'Emily Davis', age: 41, contact: 'emily.d@email.com', admissionDate: '2024-01-25', department: 'Cardiology', status: 'Active' },
        { id: 7, name: 'David Miller', age: 35, contact: 'david.m@email.com', admissionDate: '2024-01-12', department: 'Neurology', status: 'Pending' },
        { id: 8, name: 'Lisa Garcia', age: 29, contact: 'lisa.g@email.com', admissionDate: '2024-01-28', department: 'Pediatrics', status: 'Active' },
        { id: 9, name: 'James Wilson', age: 52, contact: 'james.w@email.com', admissionDate: '2024-01-05', department: 'Orthopedics', status: 'Discharged' },
        { id: 10, name: 'Maria Rodriguez', age: 38, contact: 'maria.r@email.com', admissionDate: '2024-01-30', department: 'Emergency', status: 'Active' },
        { id: 11, name: 'William Taylor', age: 63, contact: 'william.t@email.com', admissionDate: '2024-01-08', department: 'Cardiology', status: 'Active' },
        { id: 12, name: 'Jennifer Anderson', age: 44, contact: 'jennifer.a@email.com', admissionDate: '2024-01-14', department: 'Neurology', status: 'Pending' }
    ],

    appointments: [
        { id: 1, date: '2024-02-01', time: '09:00', patientName: 'John Doe', doctor: 'Dr. Smith', status: 'Scheduled' },
        { id: 2, date: '2024-02-01', time: '10:30', patientName: 'Jane Smith', doctor: 'Dr. Johnson', status: 'Scheduled' },
        { id: 3, date: '2024-02-01', time: '14:00', patientName: 'Mike Johnson', doctor: 'Dr. Brown', status: 'Completed' },
        { id: 4, date: '2024-02-02', time: '08:30', patientName: 'Sarah Wilson', doctor: 'Dr. Davis', status: 'Scheduled' },
        { id: 5, date: '2024-02-02', time: '11:00', patientName: 'Robert Brown', doctor: 'Dr. Wilson', status: 'Cancelled' },
        { id: 6, date: '2024-02-02', time: '15:30', patientName: 'Emily Davis', doctor: 'Dr. Smith', status: 'Scheduled' },
        { id: 7, date: '2024-02-03', time: '09:30', patientName: 'David Miller', doctor: 'Dr. Johnson', status: 'Scheduled' },
        { id: 8, date: '2024-02-03', time: '13:00', patientName: 'Lisa Garcia', doctor: 'Dr. Brown', status: 'Completed' },
        { id: 9, date: '2024-02-04', time: '10:00', patientName: 'James Wilson', doctor: 'Dr. Davis', status: 'Scheduled' },
        { id: 10, date: '2024-02-04', time: '16:00', patientName: 'Maria Rodriguez', doctor: 'Dr. Wilson', status: 'Scheduled' }
    ],

    staff: [
        { name: 'Dr. Jane Smith', role: 'Doctor', department: 'Cardiology', contact: 'jane.smith@medicare.com', status: 'Available' },
        { name: 'Dr. Michael Johnson', role: 'Doctor', department: 'Neurology', contact: 'michael.j@medicare.com', status: 'Available' },
        { name: 'Dr. Sarah Brown', role: 'Doctor', department: 'Orthopedics', contact: 'sarah.b@medicare.com', status: 'Busy' },
        { name: 'Dr. David Wilson', role: 'Doctor', department: 'Pediatrics', contact: 'david.w@medicare.com', status: 'Available' },
        { name: 'Dr. Lisa Davis', role: 'Doctor', department: 'Emergency', contact: 'lisa.d@medicare.com', status: 'Available' },
        { name: 'Nurse Mary Johnson', role: 'Nurse', department: 'Cardiology', contact: 'mary.j@medicare.com', status: 'Available' },
        { name: 'Nurse John Smith', role: 'Nurse', department: 'Neurology', contact: 'john.s@medicare.com', status: 'Busy' },
        { name: 'Admin Sarah Wilson', role: 'Admin', department: 'Administration', contact: 'sarah.w@medicare.com', status: 'Available' },
        { name: 'Nurse Mike Brown', role: 'Nurse', department: 'Emergency', contact: 'mike.b@medicare.com', status: 'Available' },
        { name: 'Admin Emily Davis', role: 'Admin', department: 'Administration', contact: 'emily.d@medicare.com', status: 'Available' }
    ],

    medicines: [
        { name: 'Paracetamol 500mg', quantity: 150, maxQuantity: 200, expiryDate: '2024-12-31', supplier: 'MedSupply Co.', batch: 'P2024001', location: 'A1-B2' },
        { name: 'Ibuprofen 400mg', quantity: 80, maxQuantity: 150, expiryDate: '2024-11-15', supplier: 'PharmaCorp', batch: 'I2024002', location: 'A1-B3' },
        { name: 'Amoxicillin 250mg', quantity: 25, maxQuantity: 100, expiryDate: '2024-03-20', supplier: 'MedSupply Co.', batch: 'A2024003', location: 'A2-B1' },
        { name: 'Metformin 500mg', quantity: 120, maxQuantity: 200, expiryDate: '2024-10-10', supplier: 'HealthPlus', batch: 'M2024004', location: 'A2-B2' },
        { name: 'Lisinopril 10mg', quantity: 15, maxQuantity: 80, expiryDate: '2024-02-28', supplier: 'PharmaCorp', batch: 'L2024005', location: 'A2-B3' },
        { name: 'Omeprazole 20mg', quantity: 200, maxQuantity: 250, expiryDate: '2024-08-15', supplier: 'MedSupply Co.', batch: 'O2024006', location: 'A3-B1' },
        { name: 'Atorvastatin 20mg', quantity: 90, maxQuantity: 150, expiryDate: '2024-09-30', supplier: 'HealthPlus', batch: 'AT2024007', location: 'A3-B2' },
        { name: 'Amlodipine 5mg', quantity: 60, maxQuantity: 120, expiryDate: '2024-07-22', supplier: 'PharmaCorp', batch: 'AM2024008', location: 'A3-B3' },
        { name: 'Losartan 50mg', quantity: 35, maxQuantity: 100, expiryDate: '2024-04-10', supplier: 'MedSupply Co.', batch: 'LO2024009', location: 'A4-B1' },
        { name: 'Simvastatin 40mg', quantity: 110, maxQuantity: 180, expiryDate: '2024-11-05', supplier: 'HealthPlus', batch: 'S2024010', location: 'A4-B2' },
        { name: 'Hydrochlorothiazide 25mg', quantity: 45, maxQuantity: 90, expiryDate: '2024-05-18', supplier: 'PharmaCorp', batch: 'H2024011', location: 'A4-B3' },
        { name: 'Metoprolol 50mg', quantity: 75, maxQuantity: 130, expiryDate: '2024-06-25', supplier: 'MedSupply Co.', batch: 'ME2024012', location: 'A5-B1' },
        { name: 'Furosemide 40mg', quantity: 20, maxQuantity: 60, expiryDate: '2024-03-15', supplier: 'HealthPlus', batch: 'F2024013', location: 'A5-B2' },
        { name: 'Warfarin 5mg', quantity: 30, maxQuantity: 70, expiryDate: '2024-08-08', supplier: 'PharmaCorp', batch: 'W2024014', location: 'A5-B3' },
        { name: 'Digoxin 0.25mg', quantity: 50, maxQuantity: 100, expiryDate: '2024-12-12', supplier: 'MedSupply Co.', batch: 'D2024015', location: 'A6-B1' }
    ],

    prescriptions: [
        { id: 1, patientName: 'John Doe', medications: ['Paracetamol 500mg', 'Ibuprofen 400mg'], dosage: '2 tablets', frequency: 'Twice daily', instructions: 'Take with food', status: 'Active', date: '2024-01-15' },
        { id: 2, patientName: 'Jane Smith', medications: ['Amoxicillin 250mg'], dosage: '1 capsule', frequency: 'Three times daily', instructions: 'Take on empty stomach', status: 'Dispensed', date: '2024-01-16' },
        { id: 3, patientName: 'Mike Johnson', medications: ['Metformin 500mg', 'Lisinopril 10mg'], dosage: '1 tablet each', frequency: 'Once daily', instructions: 'Take with breakfast', status: 'Active', date: '2024-01-17' },
        { id: 4, patientName: 'Sarah Wilson', medications: ['Omeprazole 20mg'], dosage: '1 capsule', frequency: 'Once daily', instructions: 'Take before breakfast', status: 'Completed', date: '2024-01-18' },
        { id: 5, patientName: 'Robert Brown', medications: ['Atorvastatin 20mg', 'Amlodipine 5mg'], dosage: '1 tablet each', frequency: 'Once daily', instructions: 'Take in the evening', status: 'Active', date: '2024-01-19' },
        { id: 6, patientName: 'Emily Davis', medications: ['Losartan 50mg'], dosage: '1 tablet', frequency: 'Once daily', instructions: 'Take with water', status: 'Dispensed', date: '2024-01-20' },
        { id: 7, patientName: 'David Miller', medications: ['Simvastatin 40mg', 'Hydrochlorothiazide 25mg'], dosage: '1 tablet each', frequency: 'Once daily', instructions: 'Take with dinner', status: 'Active', date: '2024-01-21' },
        { id: 8, patientName: 'Lisa Garcia', medications: ['Metoprolol 50mg'], dosage: '1 tablet', frequency: 'Twice daily', instructions: 'Take with meals', status: 'Completed', date: '2024-01-22' },
        { id: 9, patientName: 'James Wilson', medications: ['Furosemide 40mg', 'Warfarin 5mg'], dosage: '1 tablet each', frequency: 'Once daily', instructions: 'Take at same time daily', status: 'Active', date: '2024-01-23' },
        { id: 10, patientName: 'Maria Rodriguez', medications: ['Digoxin 0.25mg'], dosage: '1 tablet', frequency: 'Once daily', instructions: 'Take with food', status: 'Dispensed', date: '2024-01-24' }
    ],

    dispensing: [
        { date: '2024-01-30', patient: 'John Doe', medicine: 'Paracetamol 500mg', batch: 'P2024001', quantity: 20, pharmacist: 'Dr. Smith', revenue: 45.00 },
        { date: '2024-01-30', patient: 'Jane Smith', medicine: 'Amoxicillin 250mg', batch: 'A2024003', quantity: 14, pharmacist: 'Dr. Johnson', revenue: 28.00 },
        { date: '2024-01-29', patient: 'Mike Johnson', medicine: 'Metformin 500mg', batch: 'M2024004', quantity: 30, pharmacist: 'Dr. Brown', revenue: 60.00 },
        { date: '2024-01-29', patient: 'Sarah Wilson', medicine: 'Omeprazole 20mg', batch: 'O2024006', quantity: 28, pharmacist: 'Dr. Davis', revenue: 56.00 },
        { date: '2024-01-28', patient: 'Robert Brown', medicine: 'Atorvastatin 20mg', batch: 'AT2024007', quantity: 15, pharmacist: 'Dr. Wilson', revenue: 75.00 },
        { date: '2024-01-28', patient: 'Emily Davis', medicine: 'Losartan 50mg', batch: 'LO2024009', quantity: 20, pharmacist: 'Dr. Smith', revenue: 40.00 },
        { date: '2024-01-27', patient: 'David Miller', medicine: 'Simvastatin 40mg', batch: 'S2024010', quantity: 25, pharmacist: 'Dr. Johnson', revenue: 50.00 },
        { date: '2024-01-27', patient: 'Lisa Garcia', medicine: 'Metoprolol 50mg', batch: 'ME2024012', quantity: 18, pharmacist: 'Dr. Brown', revenue: 36.00 },
        { date: '2024-01-26', patient: 'James Wilson', medicine: 'Furosemide 40mg', batch: 'F2024013', quantity: 12, pharmacist: 'Dr. Davis', revenue: 24.00 },
        { date: '2024-01-26', patient: 'Maria Rodriguez', medicine: 'Digoxin 0.25mg', batch: 'D2024015', quantity: 10, pharmacist: 'Dr. Wilson', revenue: 20.00 }
    ],

    doctorPatients: [
        { name: 'John Doe', lastVisit: '2024-01-25', healthStatus: 'Stable', visitHistory: 'Regular checkup, blood pressure normal' },
        { name: 'Emily Davis', lastVisit: '2024-01-24', healthStatus: 'Improving', visitHistory: 'Follow-up after medication adjustment' },
        { name: 'William Taylor', lastVisit: '2024-01-23', healthStatus: 'Stable', visitHistory: 'Routine monitoring, no issues' },
        { name: 'Robert Brown', lastVisit: '2024-01-22', healthStatus: 'Recovering', visitHistory: 'Post-surgery follow-up, healing well' }
    ],

    feedback: [
        { rating: 5, comment: 'Excellent care and attention to detail', patient: 'John Doe', date: '2024-01-25' },
        { rating: 4, comment: 'Very professional and knowledgeable', patient: 'Emily Davis', date: '2024-01-24' },
        { rating: 5, comment: 'Outstanding service, highly recommend', patient: 'William Taylor', date: '2024-01-23' },
        { rating: 4, comment: 'Great bedside manner and clear explanations', patient: 'Robert Brown', date: '2024-01-22' },
        { rating: 5, comment: 'Best doctor I have ever had', patient: 'Sarah Wilson', date: '2024-01-21' }
    ]
};

// Chart instances storage
let chartInstances = {};

// Pagination state management
const paginationState = {
    patients: { currentPage: 1, pageSize: 25 },
    appointments: { currentPage: 1, pageSize: 25 },
    staff: { currentPage: 1, pageSize: 25 },
    myPatients: { currentPage: 1, pageSize: 25 },
    pharmacy: { currentPage: 1, pageSize: 25 },
    prescriptions: { currentPage: 1, pageSize: 25 },
    dispensing: { currentPage: 1, pageSize: 25 }
};

// Generic pagination function
function paginateData(data, page, pageSize) {
    const startIndex = (page - 1) * pageSize;
    const endIndex = startIndex + pageSize;
    return data.slice(startIndex, endIndex);
}

// Create pagination controls
function createPaginationControls(containerId, totalItems, currentPage, pageSize, onPageChange) {
    const container = document.getElementById(containerId);
    if (!container) return;
    
    const totalPages = Math.ceil(totalItems / pageSize);
    if (totalPages <= 1) {
        container.innerHTML = '';
        return;
    }
    
    let paginationHTML = '<div class="pagination">';
    
    // Previous button
    paginationHTML += `<button class="pagination-btn" ${currentPage === 1 ? 'disabled' : ''} onclick="${onPageChange}(${currentPage - 1})">
        <i data-feather="chevron-left"></i>
    </button>`;
    
    // Page numbers
    const maxVisiblePages = 5;
    let startPage = Math.max(1, currentPage - Math.floor(maxVisiblePages / 2));
    let endPage = Math.min(totalPages, startPage + maxVisiblePages - 1);
    
    if (endPage - startPage < maxVisiblePages - 1) {
        startPage = Math.max(1, endPage - maxVisiblePages + 1);
    }
    
    if (startPage > 1) {
        paginationHTML += `<button class="pagination-btn" onclick="${onPageChange}(1)">1</button>`;
        if (startPage > 2) {
            paginationHTML += '<span class="pagination-ellipsis">...</span>';
        }
    }
    
    for (let i = startPage; i <= endPage; i++) {
        paginationHTML += `<button class="pagination-btn ${i === currentPage ? 'active' : ''}" onclick="${onPageChange}(${i})">${i}</button>`;
    }
    
    if (endPage < totalPages) {
        if (endPage < totalPages - 1) {
            paginationHTML += '<span class="pagination-ellipsis">...</span>';
        }
        paginationHTML += `<button class="pagination-btn" onclick="${onPageChange}(${totalPages})">${totalPages}</button>`;
    }
    
    // Next button
    paginationHTML += `<button class="pagination-btn" ${currentPage === totalPages ? 'disabled' : ''} onclick="${onPageChange}(${currentPage + 1})">
        <i data-feather="chevron-right"></i>
    </button>`;
    
    paginationHTML += '</div>';
    container.innerHTML = paginationHTML;
    feather.replace();
}

// Initialize the application
function initializeApp() {
    setupTabNavigation();
    setupSubTabNavigation();
    setupSearchFunctionality();
    setupModals();
    loadDashboard();
    loadPatients();
    loadAppointments();
    loadStaff();
    loadDoctorPortal();
    loadPharmacy();
    loadPrescriptions();
    loadDispensing();
    
    // Initialize charts for the currently active section
    const activeSection = document.querySelector('.content-section.active');
    if (activeSection) {
        const sectionId = activeSection.id;
        initializeCharts(sectionId);
    }
    
    // Initialize doctor portal charts if on doctor portal page
    const performanceSection = document.getElementById('performance');
    if (performanceSection && performanceSection.classList.contains('active')) {
        initializeDoctorPortalCharts();
    }
}

// Tab Navigation
function setupTabNavigation() {
    const tabs = document.querySelectorAll('.nav-tab');
    const sections = document.querySelectorAll('.content-section');

    tabs.forEach(tab => {
        tab.addEventListener('click', () => {
            const targetSection = tab.getAttribute('data-section');
            
            // Remove active class from all tabs and sections
            tabs.forEach(t => t.classList.remove('active'));
            sections.forEach(s => s.classList.remove('active'));
            
            // Add active class to clicked tab and corresponding section
            tab.classList.add('active');
            document.getElementById(targetSection).classList.add('active');
            
            // Initialize charts for the active section
            initializeCharts(targetSection);
        });
    });
}

// Sub-tab Navigation for Doctor Portal
function setupSubTabNavigation() {
    // Sub-tabs are now links that navigate to different routes
    // The active state is controlled by the server-side template
    // No JavaScript click handling needed - just let the links work naturally
}

// Search Functionality
function setupSearchFunctionality() {
    // Patient search
    const patientSearch = document.getElementById('patientSearch');
    if (patientSearch) {
        patientSearch.addEventListener('input', (e) => {
            applyPatientFilters();
        });
    }

    // Patient faculty filter
    const facultyFilter = document.getElementById('facultyFilter');
    if (facultyFilter) {
        facultyFilter.addEventListener('change', (e) => {
            applyPatientFilters();
        });
    }

    // Patient status filter
    const statusFilter = document.getElementById('statusFilter');
    if (statusFilter) {
        statusFilter.addEventListener('change', (e) => {
            applyPatientFilters();
        });
    }

    // Staff search
    const staffSearch = document.getElementById('staffSearch');
    if (staffSearch) {
        staffSearch.addEventListener('input', (e) => {
            filterStaff(e.target.value);
        });
    }

    // Staff role filter
    const roleFilter = document.getElementById('roleFilter');
    if (roleFilter) {
        roleFilter.addEventListener('change', (e) => {
            filterStaffByRole(e.target.value);
        });
    }
}

// Modal Setup
function setupModals() {
    const modals = document.querySelectorAll('.modal');
    const modalCloses = document.querySelectorAll('.modal-close');

    modalCloses.forEach(closeBtn => {
        closeBtn.addEventListener('click', () => {
            closeBtn.closest('.modal').classList.remove('open');
        });
    });

    // Close modal when clicking outside
    modals.forEach(modal => {
        modal.addEventListener('click', (e) => {
            if (e.target === modal) {
                modal.classList.remove('open');
            }
        });
    });

    // Close modal with Escape key
    document.addEventListener('keydown', (e) => {
        if (e.key === 'Escape') {
            modals.forEach(modal => {
                modal.classList.remove('open');
            });
        }
    });
}

// Dashboard Functions
function loadDashboard() {
    // Patient trends chart data (6 months)
    // Use backend data if available, otherwise use mock data
    const patients_by_month_labels = window.backendData?.patientTrends?.patients_by_month_labels || ['Aug', 'Sep', 'Oct', 'Nov', 'Dec', 'Jan'];
    const patients_by_month_data = window.backendData?.patientTrends?.patients_by_month_data || [45, 52, 48, 61, 58, 67];
    
    const patientTrendsData = {
        labels: patients_by_month_labels,
        datasets: [{
            label: 'Bệnh nhân mới',
            data: patients_by_month_data,
            borderColor: '#3B82F6',
            backgroundColor: 'rgba(59, 130, 246, 0.1)',
            tension: 0.4,
            fill: true
        }]
    };

    // Department distribution data
    // Use backend data if available, otherwise use mock data
    const faculty_names = window.backendData?.departmentData?.faculty_names || ['Cardiology', 'Neurology', 'Orthopedics', 'Pediatrics', 'Emergency'];
    const total_patients_by_faculty = window.backendData?.departmentData?.total_patients_by_faculty || [25, 20, 15, 20, 20];
    
    // Generate colors for all departments
    const departmentColors = [
        '#3B82F6', '#10B981', '#8B5CF6', '#F59E0B', '#EF4444',
        '#EC4899', '#14B8A6', '#F97316', '#6366F1', '#84CC16',
        '#06B6D4', '#A855F7', '#EAB308', '#F43F5E', '#22D3EE'
    ];
    
    const departmentData = {
        labels: faculty_names,
        datasets: [{
            label: 'Số bệnh nhân',
            data: total_patients_by_faculty,
            backgroundColor: departmentColors.slice(0, faculty_names.length),
            borderWidth: 0
        }]
    };

    // Faculty patients column chart data
    const facultyPatientsFaculties = window.backendData?.facultyPatients?.faculties || ['Tim Mạch', 'Nội Tổng Hợp', 'Ngoại Tổng Hợp', 'Sản', 'Nhi', 'Chấn Thương Chỉnh Hình', 'Mắt', 'Tai Mũi Họng', 'Da Liễu', 'Thần Kinh'];
    const facultyPatientsData = window.backendData?.facultyPatients?.patientCounts || [142, 198, 165, 134, 176, 89, 67, 72, 54, 95];
    const facultyExaminationsData = window.backendData?.facultyPatients?.examinationCounts || [215, 287, 234, 189, 256, 123, 98, 105, 78, 142];
    
    const facultyPatientsChartData = {
        labels: facultyPatientsFaculties,
        datasets: [
            {
                label: 'Số bệnh nhân',
                data: facultyPatientsData,
                backgroundColor: '#3B82F6',
                borderRadius: 6,
                borderWidth: 0
            },
            {
                label: 'Lượt khám',
                data: facultyExaminationsData,
                backgroundColor: '#10B981',
                borderRadius: 6,
                borderWidth: 0
            }
        ]
    };

    // Store chart data for later initialization
    window.dashboardCharts = {
        patientTrends: patientTrendsData,
        department: departmentData,
        facultyPatients: facultyPatientsChartData
    };
}

// Initialize Charts
function initializeCharts(section) {
    if (section === 'dashboard') {
        initializeDashboardCharts();
    } else if (section === 'doctor-portal') {
        initializeDoctorPortalCharts();
    } else if (section === 'dispensing') {
        initializeDispensingCharts();
    }
}

function initializeDashboardCharts() {
    // Patient Trends Chart
    const trendsCtx = document.getElementById('patientTrendsChart');
    if (trendsCtx && !chartInstances.patientTrends) {
        chartInstances.patientTrends = new Chart(trendsCtx, {
            type: 'line',
            data: window.dashboardCharts.patientTrends,
            options: {
                responsive: true,
                maintainAspectRatio: false,
                interaction: {
                    mode: 'index',
                    intersect: false
                },
                plugins: {
                    legend: {
                        display: false
                    }
                },
                scales: {
                    y: {
                        beginAtZero: true
                    }
                }
            }
        });
    }

    // Department Chart
    const deptCtx = document.getElementById('departmentChart');
    if (deptCtx && !chartInstances.department) {
        chartInstances.department = new Chart(deptCtx, {
            type: 'pie',
            data: window.dashboardCharts.department,
            options: {
                responsive: true,
                maintainAspectRatio: false,
                plugins: {
                    legend: {
                        position: 'bottom'
                    }
                }
            }
        });
    }

    // Faculty Patients Column Chart
    const facultyCtx = document.getElementById('facultyPatientsChart');
    if (facultyCtx && !chartInstances.facultyPatients) {
        chartInstances.facultyPatients = new Chart(facultyCtx, {
            type: 'bar',
            data: window.dashboardCharts.facultyPatients,
            options: {
                responsive: true,
                maintainAspectRatio: false,
                plugins: {
                    legend: {
                        display: false
                    }
                },
                scales: {
                    y: {
                        beginAtZero: true,
                        ticks: {
                            stepSize: 20
                        },
                        grid: {
                            color: 'rgba(0, 0, 0, 0.05)'
                        }
                    },
                    x: {
                        grid: {
                            display: false
                        }
                    }
                }
            }
        });
    }
}

// Patient Functions
let allPatients = [];

function loadPatients() {
    allPatients = window.patientsDetails || mockData.patients;
    renderPatientsPage(1);
}

function renderPatientsPage(page) {
    const tbody = document.getElementById('patientsTableBody');
    if (!tbody) return;

    paginationState.patients.currentPage = page;
    const paginatedData = paginateData(allPatients, page, paginationState.patients.pageSize);
    
    tbody.innerHTML = '';
    paginatedData.forEach(patient => {
        const row = createPatientRow(patient);
        tbody.appendChild(row);
    });
    
    // Re-initialize Feather icons after all rows are added
    feather.replace();
    
    createPaginationControls('patientsPagination', allPatients.length, page, paginationState.patients.pageSize, 'renderPatientsPage');
}

function createPatientRow(patient) {
    const row = document.createElement('tr');
    const statusClass = getStatusClass(patient.status);
    
    // Check if current user is a doctor (based on URL path)
    const isDoctorPage = window.location.pathname.startsWith('/doctor');
    
    // Check if patient is inpatient (Nội trú) and user is a doctor
    const dischargeButton = (patient.status === 'Nội trú' && isDoctorPage)
        ? `<button class="btn btn-sm" style="background-color: #10B981; color: white; margin-left: 0.5rem;" onclick="confirmDischargePatient('${patient.MABN}', '${patient.hoten}')">
                <i data-feather="log-out"></i>
                Xuất viện
            </button>`
        : '';
    
    row.innerHTML = `
        <td>${patient.MABN}</td>
        <td>${patient.hoten}</td>
        <td>${patient.tuoi}</td>
        <td>${patient.sdt}</td>
        <td>${formatDate(patient.ngaykham)}</td>
        <td>${patient.tenkhoa}</td>
        <td><span class="badge ${statusClass}">${patient.status}</span></td>
        <td>
            <button class="btn btn-sm btn-primary" onclick="viewPatientDetails('${patient.MABN}')">
                <i data-feather="eye"></i>
                Theo dõi
            </button>
            ${dischargeButton}
        </td>
    `;
    
    return row;
}

function applyPatientFilters() {
    const tbody = document.getElementById('patientsTableBody');
    if (!tbody) return;

    const searchTerm = document.getElementById('patientSearch')?.value || '';
    const facultyFilter = document.getElementById('facultyFilter')?.value || '';
    const statusFilter = document.getElementById('statusFilter')?.value || '';

    allPatients = (window.patientsDetails || mockData.patients).filter(patient => {
        // Search filter
        const matchesSearch = patient.hoten.toLowerCase().includes(searchTerm.toLowerCase());
        
        // Faculty filter
        const matchesFaculty = !facultyFilter || patient.tenkhoa === facultyFilter;
        
        // Status filter
        const matchesStatus = !statusFilter || patient.status === statusFilter;
        
        return matchesSearch && matchesFaculty && matchesStatus;
    });

    renderPatientsPage(1);
}

function viewPatientDetails(patientId) {
    console.log('viewPatientDetails called with:', patientId);
    
    // Convert patientId to string for comparison
    const patient = window.patientsDetails.find(p => String(p.MABN) === String(patientId));
    
    if (!patient) {
        console.error('Patient not found:', patientId);
        alert('Không tìm thấy thông tin bệnh nhân');
        return;
    }

    const modalBody = document.getElementById('patientModalBody');
    if (!modalBody) {
        console.error('Modal body not found');
        return;
    }
    
    // Show loading state
    modalBody.innerHTML = `
        <h3 style="margin-bottom: 1.5rem; margin-left: 1.5rem;">Thông tin bệnh nhân: ${patient.hoten}</h3>
        <div style="text-align: center; padding: 2rem;">
            <p>Đang tải dữ liệu...</p>
        </div>
    `;
    
    // Open modal immediately with loading state
    const modal = document.getElementById('patientModal');
    if (!modal) {
        console.error('Modal not found');
        return;
    }
    modal.classList.add('open');
    
    // Determine the correct endpoint based on current page
    const isAdminPage = window.location.pathname.startsWith('/admin');
    const isDoctorPage = window.location.pathname.startsWith('/doctor');
    const endpoint = isDoctorPage ? `/doctor/patients/${patientId}` : `/admin/patients/${patientId}`;
    
    // Fetch data from backend
    fetch(endpoint)
        .then(response => {
            if (!response.ok) {
                throw new Error('Network response was not ok');
            }
            return response.json();
        })
        .then(data => {
            const examinationHistory = data.examination_history || [];
            const relatives = data.relatives || [];
            
            let examinationRows = '';
            if (examinationHistory.length > 0) {
                examinationRows = examinationHistory.map(exam => `
                    <tr>
                        <td>${formatDate(exam.date || exam.ngaykham)}</td>
                        <td><span class="badge ${getPrescriptionStatusClass(exam.status || exam.tinhtrang)}">${exam.status || exam.tinhtrang || 'N/A'}</span></td>
                        <td>${exam.thuoc || 'N/A'}</td>
                        <td>${exam.bacsi || 'N/A'}</td>
                    </tr>
                `).join('');
            } else {
                examinationRows = '<tr><td colspan="5" style="text-align: center;">Không có dữ liệu</td></tr>';
            }
            
            let relativesRows = '';
            if (relatives.length > 0) {
                relativesRows = relatives.map(rel => `
                    <tr>
                        <td>${rel.name || rel.hoten}</td>
                        <td>${rel.relationship || rel.quanhe}</td>
                        <td>${rel.phone || rel.sdt}</td>
                        <td>${rel.address || rel.diachi || 'N/A'}</td>
                    </tr>
                `).join('');
            } else {
                relativesRows = '<tr><td colspan="5" style="text-align: center;">Không có người giám hộ</td></tr>';
            }
            
            modalBody.innerHTML = `
                <div class="patient-details">
                    <h3 style="margin-bottom: 1.5rem;">Thông tin bệnh nhân: ${patient.hoten}</h3>
                    
                    <!-- Tabs -->
                    <div class="medicine-tabs">
                        <button class="medicine-tab active" onclick="switchPatientTab('history')">
                            Lịch sử khám chữa
                        </button>
                        <button class="medicine-tab" onclick="switchPatientTab('relatives')">
                            Người giám hộ
                        </button>
                    </div>

                    <!-- Examination History Tab -->
                    <div id="historyTab" class="medicine-form-container active">
                        <div class="table-container">
                            <table class="data-table">
                                <thead>
                                    <tr>
                                        <th>Ngày khám</th>
                                        <th>Tình trạng</th>
                                        <th>Thuốc</th>
                                        <th>Bác sĩ kê đơn</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    ${examinationRows}
                                </tbody>
                            </table>
                        </div>
                    </div>

                    <!-- Relatives Tab -->
                    <div id="relativesTab" class="medicine-form-container">
                        <div class="table-container">
                            <table class="data-table">
                                <thead>
                                    <tr>
                                        <th>Họ tên</th>
                                        <th>Quan hệ</th>
                                        <th>Số điện thoại</th>
                                        <th>Địa chỉ</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    ${relativesRows}
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            `;
            
            feather.replace();
        })
        .catch(error => {
            console.error('Error fetching patient details:', error);
            modalBody.innerHTML = `
                <h3 style="margin-bottom: 1.5rem;">Thông tin bệnh nhân: ${patient.hoten}</h3>
                <div style="text-align: center; padding: 2rem; color: #EF4444;">
                    <p>Lỗi khi tải dữ liệu. Vui lòng thử lại.</p>
                </div>
            `;
        });
}

function switchPatientTab(tabName) {
    // Update tab buttons
    const tabs = document.querySelectorAll('#patientModal .medicine-tab');
    tabs.forEach(tab => tab.classList.remove('active'));
    
    // Update tab containers
    document.getElementById('historyTab').classList.remove('active');
    document.getElementById('relativesTab').classList.remove('active');
    
    if (tabName === 'history') {
        tabs[0].classList.add('active');
        document.getElementById('historyTab').classList.add('active');
    } else {
        tabs[1].classList.add('active');
        document.getElementById('relativesTab').classList.add('active');
    }
}

// Discharge Patient Confirmation
function confirmDischargePatient(patientId, patientName) {
    const confirmed = confirm(`Bạn có chắc chắn muốn xuất viện cho bệnh nhân "${patientName}" (Mã: ${patientId}) không?\n\nHành động này sẽ chuyển trạng thái bệnh nhân từ Nội trú sang Đã xuất viện.`);
    
    if (confirmed) {
        dischargePatient(patientId);
    }
}

// Discharge Patient Function
function dischargePatient(patientId) {
    // Determine the correct endpoint based on current page
    const isAdminPage = window.location.pathname.startsWith('/admin');
    const isDoctorPage = window.location.pathname.startsWith('/doctor');
    const endpoint = isDoctorPage ? `/doctor/patients/${patientId}/discharge` : `/admin/patients/${patientId}/discharge`;
    
    fetch(endpoint, {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json',
        },
        body: JSON.stringify({
            patientId: patientId
        })
    })
    .then(response => {
        if (!response.ok) {
            throw new Error('Network response was not ok');
        }
        return response.json();
    })
    .then(data => {
        if (data.success) {
            alert('Xuất viện thành công!');
            // Reload the page to refresh the data
            window.location.reload();
        } else {
            alert('Lỗi: ' + (data.message || 'Không thể xuất viện'));
        }
    })
    .catch(error => {
        console.error('Error discharging patient:', error);
        alert('Có lỗi xảy ra khi xuất viện. Vui lòng thử lại.');
    });
}

// Room Functions (formerly Appointments)
let allAppointments = [];

function loadAppointments() {
    allAppointments = window.allRoomsDetail || [];
    renderAppointmentsPage(1);
}

function renderAppointmentsPage(page) {
    const tbody = document.getElementById('appointmentsTableBody');
    if (!tbody) return;

    paginationState.appointments.currentPage = page;
    const paginatedData = paginateData(allAppointments, page, paginationState.appointments.pageSize);
    
    tbody.innerHTML = '';
    paginatedData.forEach(room => {
        const row = createAppointmentRow(room);
        tbody.appendChild(row);
    });
    
    feather.replace();
    createPaginationControls('appointmentsPagination', allAppointments.length, page, paginationState.appointments.pageSize, 'renderAppointmentsPage');
}

function createAppointmentRow(room) {
    const row = document.createElement('tr');
    const statusClass = getAppointmentStatusClass(room.so_giuong_trong, room.tong_giuong);
    
    row.innerHTML = `
        <td> ${room.MAPHG}</td>
        <td>${room.tenkhoa}</td>
        <td>${room.tentoa}</td>
        <td><span class="badge ${statusClass}">${room.so_giuong_trong} / ${room.tong_giuong}</span></td>
        <td>
            <button class="btn btn-sm btn-primary" onclick="viewRoomPatients('${room.MAPHG}', '${room.tentoa}')">
                <i data-feather="eye"></i>
                Danh sách bệnh nhân
            </button>
        </td>
    `;
    
    
    return row;
}

function viewRoomPatients(roomId, roomName) {
    const modalBody = document.getElementById('roomPatientsModalBody');
    if (!modalBody) {
        console.error('Room patients modal not found');
        return;
    }
    
    // Show loading state
    modalBody.innerHTML = `
        <h3 style="margin-left: 1rem;">Danh sách bệnh nhân - Phòng ${roomId} (${roomName})</h3>
        <div style="text-align: center; padding: 2rem;">
            <p>Đang tải dữ liệu...</p>
        </div>
    `;
    
    // Open modal immediately with loading state
    const modal = document.getElementById('roomPatientsModal');
    if (!modal) {
        console.error('Modal not found');
        return;
    }
    modal.classList.add('open');
    
    // Fetch data from backend
    fetch(`/admin/room/${roomId}`)
        .then(response => {
            if (!response.ok) {
                throw new Error('Network response was not ok');
            }
            return response.json();
        })
        .then(data => {
            let tableRows = '';
            if (data.length > 0) {
                tableRows = data.map(patient => {
                    const statusClass = getPrescriptionStatusClass(patient.tinhtrang || 'N/A');
                    return `
                        <tr>
                            <td>${patient.hoten}</td>
                            <td>${patient.sdt || 'N/A'}</td>
                            <td>${patient.sdt_nguoidk || 'N/A'}</td>
                            <td><span class="badge ${statusClass}">${patient.tinhtrang || 'N/A'}</span></td>
                        </tr>
                    `;
                }).join('');
            } else {
                tableRows = '<tr><td colspan="4" style="text-align: center;">Phòng không có bệnh nhân</td></tr>';
            }
            
            modalBody.innerHTML = `
                <h3 style="margin-bottom: 1.5rem;">Danh sách bệnh nhân - Phòng ${roomId} (${roomName})</h3>
                <div class="table-container" style="margin-top: 1rem;">
                    <table class="data-table">
                        <thead>
                            <tr>
                                <th>Họ tên</th>
                                <th>Số điện thoại</th>
                                <th>Số điện thoại người thân</th>
                                <th>Tình trạng</th>
                            </tr>
                        </thead>
                        <tbody>
                            ${tableRows}
                        </tbody>
                    </table>
                </div>
            `;
        })
        .catch(error => {
            console.error('Error fetching room patients:', error);
            modalBody.innerHTML = `
                <h3 style="margin-bottom: 1.5rem;">Danh sách bệnh nhân - Phòng ${roomId} (${roomName})</h3>
                <div style="text-align: center; padding: 2rem; color: #EF4444;">
                    <p>Lỗi khi tải dữ liệu. Vui lòng thử lại.</p>
                </div>
            `;
        });
}

// Staff Functions
let allStaff = [];

function loadStaff() {
    allStaff = window.allDoctors || mockData.staff;
    renderStaffPage(1);
}

function renderStaffPage(page) {
    const tbody = document.getElementById('staffTableBody');
    if (!tbody) return;

    paginationState.staff.currentPage = page;
    const paginatedData = paginateData(allStaff, page, paginationState.staff.pageSize);
    
    tbody.innerHTML = '';
    paginatedData.forEach(member => {
        const row = createStaffRow(member);
        tbody.appendChild(row);
    });
    
    createPaginationControls('staffPagination', allStaff.length, page, paginationState.staff.pageSize, 'renderStaffPage');
}

function createStaffRow(member) {
    const row = document.createElement('tr');
    const statusClass = member.trangthai === true ? 'badge-green' : 'badge-red';
    
    row.innerHTML = `
        <td>${member.hoten}</td>
        <td>${member.bangcap}</td>
        <td>${member.khoa}</td>
        <td>${member.phongkham}</td>
        <td>${member.sdt}</td>
        <td><span class="badge ${statusClass}">${member.trangthai}</span></td>
    `;
    
    // Add click handler to redirect to doctor's examination page
    if (member.MABS) {
        row.style.cursor = 'pointer';
        row.addEventListener('click', () => {
            window.location.href = `/admin/doctors/${member.MABS}/examinations`;
        });
        
        // Add hover effect
        row.addEventListener('mouseenter', () => {
            row.style.backgroundColor = '#f3f4f6';
        });
        row.addEventListener('mouseleave', () => {
            row.style.backgroundColor = '';
        });
    }
    
    return row;
}

function filterStaff(searchTerm) {
    const tbody = document.getElementById('staffTableBody');
    if (!tbody) return;

    allStaff = (window.allDoctors || mockData.staff).filter(member =>
        member.hoten.toLowerCase().includes(searchTerm.toLowerCase())
    );

    renderStaffPage(1);
}

function filterStaffByRole(faculty) {
    const tbody = document.getElementById('staffTableBody');
    if (!tbody) return;

    allStaff = faculty ? 
        (window.allDoctors || mockData.staff).filter(member => member.khoa === faculty) : 
        (window.allDoctors || mockData.staff);

    renderStaffPage(1);
}

// Add Doctor Modal Functions
function openAddDoctorModal() {
    const modal = document.getElementById('addDoctorModal');
    modal.classList.add('open');
    
    // Reset form
    document.getElementById('addDoctorForm').reset();
    
    // Re-initialize icons
    feather.replace();
}

function closeAddDoctorModal() {
    const modal = document.getElementById('addDoctorModal');
    modal.classList.remove('open');
}

function submitAddDoctor(event) {
    event.preventDefault();
    
    const form = event.target;
    const formData = new FormData(form);
    
    const doctorData = {
        hoten: formData.get('hoten'),        
        bangcap: formData.get('bangcap'),
        khoa: formData.get('khoa'),
        phongkham: formData.get('phongkham'),
        sdt: formData.get('sdt'),
        trangthai: true
    };
    
    // Disable submit button to prevent double submission
    const submitBtn = form.querySelector('button[type="submit"]');
    const originalText = submitBtn.textContent;
    submitBtn.disabled = true;
    submitBtn.textContent = 'Đang thêm...';
    
    // Send data to backend API
    fetch('/admin/doctors/add', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json',
        },
        body: JSON.stringify(doctorData)
    })
    .then(response => {
        if (!response.ok) {
            return response.json().then(err => {
                throw new Error(err.message || 'Có lỗi xảy ra khi thêm bác sĩ');
            });
        }
        return response.json();
    })
    .then(data => {
        // Show success message with credentials
        const message = `Thêm bác sĩ mới thành công!\n\nThông tin đăng nhập:\nTên đăng nhập: ${data.username}\nMật khẩu: ${data.password}\n\nVui lòng lưu lại thông tin này!`;
        alert(message);
        
        // Close modal
        closeAddDoctorModal();
        
        // Reload the page to show updated data
        window.location.reload();
    })
    .catch(error => {
        console.error('Error adding doctor:', error);
        alert('Lỗi: ' + error.message);
        
        // Re-enable submit button
        submitBtn.disabled = false;
        submitBtn.textContent = originalText;
    });
}

// Doctor Portal Functions
function loadDoctorPortal() {
    loadSchedule();
    loadMyPatients();
    loadFeedback();
}

function loadSchedule() {
    const scheduleCards = document.getElementById('scheduleCards');
    if (!scheduleCards) return;

    const todayAppointments = mockData.appointments.filter(apt => 
        apt.date === '2024-02-01' && apt.doctor === 'Dr. Smith'
    );

    scheduleCards.innerHTML = '';
    todayAppointments.forEach(appointment => {
        const card = createScheduleCard(appointment);
        scheduleCards.appendChild(card);
    });
}

function createScheduleCard(appointment) {
    const card = document.createElement('div');
    card.className = 'schedule-card';
    
    card.innerHTML = `
        <h4>${appointment.time} - ${appointment.patientName}</h4>
        <p>Status: <span class="badge ${getAppointmentStatusClass(appointment.so_giuong_trong, appointment.tong_giuong)}">${appointment.so_giuong_trong} / 4</span></p>
        <div class="schedule-actions">
            <button class="btn btn-sm btn-success">
                <i data-feather="check"></i>
                Confirm
            </button>
            <button class="btn btn-sm btn-danger">
                <i data-feather="x"></i>
                Cancel
            </button>
        </div>
    `;
    
    feather.replace();
    return card;
}

let allMyPatients = [];

function loadMyPatients() {
    allMyPatients = window.examinationsData || mockData.doctorPatients;
    renderMyPatientsPage(1);
}

function renderMyPatientsPage(page) {
    const tbody = document.getElementById('myPatientsTableBody');
    if (!tbody) return;

    paginationState.myPatients.currentPage = page;
    const paginatedData = paginateData(allMyPatients, page, paginationState.myPatients.pageSize);
    
    tbody.innerHTML = '';
    paginatedData.forEach(patient => {
        const row = document.createElement('tr');
        const healthStatusClass = getHealthStatusClass(patient.health_status);
        
        row.innerHTML = `
            <td>${patient.patient_name}</td>
            <td>${patient.giaidoan}</td>
            <td>${formatDate(patient.last_visit)}</td>
            <td><span class="badge ${healthStatusClass}">${patient.health_status}</span></td>
            <td>${patient.medicine_name}</td>
            <td>${patient.total_medicine_quantity}</td>
        `;
        
        tbody.appendChild(row);
    });
    
    createPaginationControls('myPatientsPagination', allMyPatients.length, page, paginationState.myPatients.pageSize, 'renderMyPatientsPage');
}

function loadFeedback() {
    const feedbackList = document.getElementById('feedbackList');
    if (!feedbackList) return;

    feedbackList.innerHTML = '';
    mockData.feedback.forEach(feedback => {
        const item = createFeedbackItem(feedback);
        feedbackList.appendChild(item);
    });
}

function createFeedbackItem(feedback) {
    const item = document.createElement('div');
    item.className = 'feedback-item';
    
    const stars = '★'.repeat(feedback.rating) + '☆'.repeat(5 - feedback.rating);
    
    item.innerHTML = `
        <div class="feedback-rating">
            <span class="stars">${stars}</span>
        </div>
        <p><strong>${feedback.patient}</strong> - ${formatDate(feedback.date)}</p>
        <p>${feedback.comment}</p>
    `;
    
    return item;
}

function initializeDoctorPortalCharts() {
    // Consultation trends chart
    const consultationCtx = document.getElementById('consultationTrendsChart');
    if (consultationCtx && !chartInstances.consultationTrends) {
        chartInstances.consultationTrends = new Chart(consultationCtx, {
            type: 'line',
            data: {
                labels: window.stringMonths,
                datasets: [{
                    label: 'Consultations',
                    data: window.consultationLast6Months,
                    borderColor: '#3B82F6',
                    backgroundColor: 'rgba(59, 130, 246, 0.1)',
                    tension: 0.4,
                    fill: true
                }]
            },
            options: {
                responsive: true,
                maintainAspectRatio: false,
                interaction: {
                    mode: 'index',
                    intersect: false
                },
                plugins: {
                    legend: {
                        display: false
                    }
                },
                scales: {
                    y: {
                        beginAtZero: true,
                        ticks: {
                            stepSize: 1,
                            precision: 0
                        }
                    }
                }
            }
        });
    }
}

// Pharmacy Functions
function loadPharmacy() {
    loadPharmacyAlerts();
    loadPharmacyTable();
}

function loadPharmacyAlerts() {
    const alertsContainer = document.getElementById('pharmacyAlerts');
    if (!alertsContainer) return;

    // Prefer real backend data if available, otherwise fallback to mockData
    const medicines = window.inventoryStatusTable ||
                      window.backendData?.inventory?.medicines ||
                      window.backendData?.medicines ||
                      mockData.medicines;

    alertsContainer.innerHTML = '';
    const today = new Date();
    
    // Track which medicine names have already shown alerts to avoid duplicates
    const lowStockAlerted = new Set();
    const expiryAlerted = new Set();

    medicines.forEach(med => {
        const name = med.name || med.product_name || 'Unknown Medicine';
        const quantity = Number(med.total_quantity ?? med.total_quantity ?? med.available_quantity ?? 0);
        const maxQty = Number(med.total_stock_level ?? med.max_quantity ?? med.max ?? 1);
        const expiryRaw = med.expiryDate ?? med.expiry_date ?? med.expiry;

        // Low stock alert - only show once per medicine name
        const stockRatio = maxQty > 0 ? (quantity / maxQty) : 0;
        if (stockRatio < 0.2 && !lowStockAlerted.has(name)) {
            const alert = document.createElement('div');
            alert.className = 'alert alert-warning';
            alert.innerHTML = `
                <i data-feather="alert-triangle"></i>
                Tồn kho thấp: ${name} (${quantity}/${maxQty})
            `;
            alertsContainer.appendChild(alert);
            lowStockAlerted.add(name);
        }

        // Near expiry alert - only show once per medicine name
        if (expiryRaw && !expiryAlerted.has(name)) {
            const expiryDate = new Date(expiryRaw);
            if (!isNaN(expiryDate)) {
                const diffTime = expiryDate - today;
                const diffDays = Math.ceil(diffTime / (1000 * 60 * 60 * 24));
                if (diffDays <= 60 && diffDays > 0) {
                    const alert = document.createElement('div');
                    alert.className = 'alert alert-danger';
                    alert.innerHTML = `
                        <i data-feather="alert-circle"></i>
                        Sắp hết hạn: ${name} (Mã lô: ${med.malo}) hết hạn vào ${formatDate(expiryDate)}
                    `;
                    alertsContainer.appendChild(alert);
                    expiryAlerted.add(name);
                }
            }
        }
    });

    feather.replace();
}

let allPharmacyMedicines = [];

function loadPharmacyTable() {
    allPharmacyMedicines = window.inventoryStatusTable || mockData.medicines;
    renderPharmacyPage(1);
}

function renderPharmacyPage(page) {
    const tbody = document.getElementById('pharmacyTableBody');
    if (!tbody) return;

    paginationState.pharmacy.currentPage = page;
    const paginatedData = paginateData(allPharmacyMedicines, page, paginationState.pharmacy.pageSize);
    
    tbody.innerHTML = '';
    paginatedData.forEach(medicine => {
        const row = createPharmacyRow(medicine);
        tbody.appendChild(row);
    });
    
    createPaginationControls('pharmacyPagination', allPharmacyMedicines.length, page, paginationState.pharmacy.pageSize, 'renderPharmacyPage');
}

function createPharmacyRow(medicine) {
    const row = document.createElement('tr');
    const stockPercentage = (medicine.quantity / medicine.max_quantity) * 100;
    const progressClass = stockPercentage > 50 ? 'progress-green' : 
                         stockPercentage > 20 ? 'progress-yellow' : 'progress-red';
    const allStockPercentages = (medicine.total_quantity / medicine.total_stock_level) * 100;
    const allProgressClass = allStockPercentages > 50 ? 'progress-green' : 
                         allStockPercentages > 20 ? 'progress-yellow' : 'progress-red';
    row.innerHTML = `
        <td>${medicine.name}</td>
        <td>${medicine.quantity}</td>
        <td>
            <div class="progress-bar">
                <div class="progress-fill ${progressClass}" style="width: ${stockPercentage}%"></div>
            </div>
            <span style="font-size: 0.75rem; color: #6b7280;">${Math.round(stockPercentage)}%</span>
        </td>
        <td>${formatDate(medicine.expiry_date)}</td>
        <td>${medicine.batch_count}</td>
        <td>${medicine.total_quantity}</td>
        <td>
            <div class="progress-bar">
                <div class="progress-fill ${allProgressClass}" style="width: ${allStockPercentages}%"></div>
            </div>
            <span style="font-size: 0.75rem; color: #6b7280;">${Math.round(allStockPercentages)}%</span>
        </td>
    `;
    
    return row;
}

// Prescription Functions
let allPrescriptions = [];

function loadPrescriptions() {
    allPrescriptions = window.prescriptionsData || mockData.prescriptions;
    renderPrescriptionsPage(1);
}

function renderPrescriptionsPage(page) {
    const tbody = document.getElementById('prescriptionsTableBody');
    if (!tbody) return;

    paginationState.prescriptions.currentPage = page;
    const paginatedData = paginateData(allPrescriptions, page, paginationState.prescriptions.pageSize);
    
    tbody.innerHTML = '';
    paginatedData.forEach(prescription => {
        const row = createPrescriptionRow(prescription);
        tbody.appendChild(row);
    });
    
    feather.replace();
    createPaginationControls('prescriptionsPagination', allPrescriptions.length, page, paginationState.prescriptions.pageSize, 'renderPrescriptionsPage');
}

function createPrescriptionRow(prescription) {
    const row = document.createElement('tr');
    const statusClass = getPrescriptionStatusClass(prescription.status);
    const patientID = prescription.patient_id;
    const patientName = prescription.patient_name;
    const patientStatus = prescription.status || 'N/A';
    const medications = prescription.medicine;
    const dosageFrequency = prescription.dosage_frequency || `${prescription.dosage} - ${prescription.frequency}`;
    const prescribing_doctor = prescription.prescribing_doctor || 'N/A';
    
    row.innerHTML = `
        <td>${patientName}</td>
        <td><span class="badge ${statusClass}">${patientStatus}</span></td>
        <td>${medications}</td>
        <td>${dosageFrequency}</td>
        <td>${prescribing_doctor}</td>
        <td>${formatDate(prescription.date)}</td>
        <td>
            <button class="btn btn-sm btn-primary" onclick="viewPatientMonitoring('${patientID}', '${patientName}')">
                <i data-feather="eye"></i>
                Theo dõi
            </button>
        </td>
    `;
    
    
    return row;
}

function viewPrescriptionDetails(prescriptionId) {
    const prescriptions = window.prescriptionsData || mockData.prescriptions;
    const prescription = prescriptions.find(p => p.id === prescriptionId);
    if (!prescription) return;

    const modalBody = document.getElementById('prescriptionModalBody');
    
    // Handle both backend data format and mock data format
    const patientName = prescription.patient_name || prescription.patientName;
    const medications = prescription.medicine || prescription.medications;
    const dosageFrequency = prescription.dosage_frequency || `${prescription.dosage} - ${prescription.frequency}`;
    const doctor = prescription.prescribing_doctor || 'N/A';
    const instructions = prescription.instructions || 'N/A';
    const prescriptionDate = prescription.date;
    const prescriptionStatus = prescription.status;
    
    modalBody.innerHTML = `
        <div class="prescription-details">
            <h4>Chi tiết đơn thuốc</h4>
            <div class="detail-grid">
                <div class="detail-item">
                    <strong>Bệnh nhân:</strong> ${patientName}
                </div>
                <div class="detail-item">
                    <strong>Ngày:</strong> ${formatDate(prescriptionDate)}
                </div>
                <div class="detail-item">
                    <strong>Tình trạng:</strong> <span class="badge ${getPrescriptionStatusClass(prescriptionStatus)}">${prescriptionStatus}</span>
                </div>
            </div>
            <div class="medications-section">
                <h5>Thuốc:</h5>
                <ul>
                    ${Array.isArray(medications) ? medications.map(med => `<li>${med}</li>`).join('') : `<li>${medications}</li>`}
                </ul>
            </div>
            <div class="dosage-section">
                <h5>Liều lượng & Tần suất:</h5>
                <p>${dosageFrequency}</p>
            </div>
            ${instructions !== 'N/A' ? `
            <div class="instructions-section">
                <h5>Hướng dẫn:</h5>
                <p>${instructions}</p>
            </div>
            ` : ''}
            <div class="instructions-section">
                <h5>Bác sĩ kê đơn:</h5>
                <p>${doctor}</p>
            </div>
        </div>
    `;

    document.getElementById('prescriptionModal').classList.add('open');
}

function filterPrescriptionsByPatient(searchTerm) {
    const prescriptionsData = window.prescriptionsData || mockData.prescriptions;
    
    // Get current doctor filter value if it exists
    const doctorSearch = document.getElementById('prescriptionDoctorSearch')?.value || '';
    
    allPrescriptions = prescriptionsData.filter(prescription => {
        const patientName = prescription.patient_name || prescription.patientName || '';
        const doctorName = prescription.prescribing_doctor || '';
        
        const matchesPatient = patientName.toLowerCase().includes(searchTerm.toLowerCase());
        const matchesDoctor = doctorName.toLowerCase().includes(doctorSearch.toLowerCase());
        
        return matchesPatient && matchesDoctor;
    });
    
    renderPrescriptionsPage(1);
}

function filterPrescriptionsByDoctor(searchTerm) {
    const prescriptionsData = window.prescriptionsData || mockData.prescriptions;
    
    // Get current patient filter value if it exists
    const patientSearch = document.getElementById('prescriptionPatientSearch')?.value || '';
    
    allPrescriptions = prescriptionsData.filter(prescription => {
        const patientName = prescription.patient_name || prescription.patientName || '';
        const doctorName = prescription.prescribing_doctor || '';
        
        const matchesPatient = patientName.toLowerCase().includes(patientSearch.toLowerCase());
        const matchesDoctor = doctorName.toLowerCase().includes(searchTerm.toLowerCase());
        
        return matchesPatient && matchesDoctor;
    });
    
    renderPrescriptionsPage(1);
}

function viewPatientMonitoring(patientID, patientName) {
    const modalBody = document.getElementById('patientMonitoringModalBody');
    if (!modalBody) {
        console.error('Patient monitoring modal not found');
        return;
    }
    
    // Show loading state
    modalBody.innerHTML = `
        <h3 style="margin-left: 1rem;">${patientName}</h3>
        <div style="text-align: center; padding: 2rem;">
            <p>Đang tải dữ liệu...</p>
        </div>
    `;
    
    // Open modal immediately with loading state
    document.getElementById('patientMonitoringModal').classList.add('open');
    
    const isAdminPage = window.location.pathname.startsWith('/admin');
    const isDoctorPage = window.location.pathname.startsWith('/doctor');
    const endpoint = isDoctorPage ? `/doctor/prescriptions/${patientID}` : `/admin/prescriptions/${patientID}`;

    // Fetch data from backend
    fetch(endpoint)
        .then(response => {
            if (!response.ok) {
                throw new Error('Network response was not ok');
            }
            return response.json();
        })
        .then(data => {
            const patientData = data.monitoring_data || [];
            
            let tableRows = '';
            if (patientData.length > 0) {
                patientData.forEach(record => {
                    const statusClass = getPrescriptionStatusClass(record.tinhtrang);
                    tableRows += `
                        <tr>
                            <td>${formatDate(record.ngaykham)}</td>
                            <td><span class="badge ${statusClass}">${record.tinhtrang}</span></td>
                            <td>${record.medicine_name}</td>
                            <td>${record.doctor}</td>
                        </tr>
                    `;
                });
            } else {
                tableRows = '<tr><td colspan="4" style="text-align: center;">Không có dữ liệu</td></tr>';
            }
            
            modalBody.innerHTML = `
                <h3 style="margin-left: 1rem;">${patientName}</h3>
                <div class="table-container" style="margin-top: 1rem;">
                    <table class="data-table">
                        <thead>
                            <tr>
                                <th>Ngày</th>
                                <th>Tình trạng</th>
                                <th>Thuốc</th>
                                <th>Bác sĩ kê đơn</th>
                            </tr>
                        </thead>
                        <tbody>
                            ${tableRows}
                        </tbody>
                    </table>
                </div>
            `;
        })
        .catch(error => {
            console.error('Error fetching patient monitoring data:', error);
            modalBody.innerHTML = `
                <h3 style="margin-left: 1rem;">${patientName}</h3>
                <div style="text-align: center; padding: 2rem; color: #EF4444;">
                    <p>Lỗi khi tải dữ liệu. Vui lòng thử lại.</p>
                </div>
            `;
        });
}

// Dispensing Functions
let allDispensing = [];

function loadDispensing() {
    loadDispensingTable();
}

function loadDispensingTable() {
    allDispensing = mockData.dispensing;
    renderDispensingPage(1);
}

function renderDispensingPage(page) {
    const tbody = document.getElementById('dispensingTableBody');
    if (!tbody) return;

    paginationState.dispensing.currentPage = page;
    const paginatedData = paginateData(allDispensing, page, paginationState.dispensing.pageSize);
    
    tbody.innerHTML = '';
    paginatedData.forEach(transaction => {
        const row = createDispensingRow(transaction);
        tbody.appendChild(row);
    });
    
    createPaginationControls('dispensingPagination', allDispensing.length, page, paginationState.dispensing.pageSize, 'renderDispensingPage');
}

function createDispensingRow(transaction) {
    const row = document.createElement('tr');
    
    row.innerHTML = `
        <td>${formatDate(transaction.date)}</td>
        <td>${transaction.patient}</td>
        <td>${transaction.medicine}</td>
        <td>${transaction.batch}</td>
        <td>${transaction.quantity}</td>
        <td><span class="badge badge-blue">${transaction.pharmacist}</span></td>
        <td>$${transaction.revenue.toFixed(2)}</td>
    `;
    
    return row;
}

function initializeDispensingCharts() {
    // Weekly dispensing trends chart
    const dispensingCtx = document.getElementById('dispensingChart');
    if (dispensingCtx && !chartInstances.dispensing) {
        chartInstances.dispensing = new Chart(dispensingCtx, {
            type: 'bar',
            data: {
                labels: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'],
                datasets: [{
                    label: 'Quantity Dispensed',
                    data: [45, 52, 38, 61, 48, 35, 28],
                    backgroundColor: '#3B82F6',
                    borderColor: '#1E40AF',
                    borderWidth: 1
                }]
            },
            options: {
                responsive: true,
                maintainAspectRatio: false,
                plugins: {
                    legend: {
                        display: false
                    }
                },
                scales: {
                    y: {
                        beginAtZero: true
                    }
                }
            }
        });
    }

    // Top 5 medicines chart
    const topMedicinesCtx = document.getElementById('topMedicinesChart');
    if (topMedicinesCtx && !chartInstances.topMedicines) {
        chartInstances.topMedicines = new Chart(topMedicinesCtx, {
            type: 'doughnut',
            data: {
                labels: ['Paracetamol', 'Ibuprofen', 'Metformin', 'Omeprazole', 'Atorvastatin'],
                datasets: [{
                    data: [25, 20, 18, 15, 12],
                    backgroundColor: ['#3B82F6', '#10B981', '#8B5CF6', '#F59E0B', '#EF4444']
                }]
            },
            options: {
                responsive: true,
                maintainAspectRatio: false,
                plugins: {
                    legend: {
                        position: 'bottom'
                    }
                }
            }
        });
    }
}

// Utility Functions
function getStatusClass(status) {
    switch (status) {
        case 'Đã xuất viện': return 'badge-green';
        case 'Nội trú': return 'badge-yellow';
        case 'Ngoại trú': return 'badge-blue';
        default: return 'badge-blue';
    }
}

function getAppointmentStatusClass(so_giuong_trong, tong_giuong) {
    if (so_giuong_trong == tong_giuong) {
        return 'badge-red';
    } else if (so_giuong_trong < tong_giuong / 2) {
        return 'badge-green';
    } else {
        return 'badge-yellow';
    }
}

function getPrescriptionStatusClass(status) {
    switch (status) {
        case 'Nhẹ': return 'badge-green';
        case 'Trung bình': return 'badge-blue';
        case 'Nặng': return 'badge-yellow';
        case 'Nặng lên': return 'badge-red';
        case 'Tiên lượng dè dặt': return 'badge-red';
        case 'Nguy kịch': return 'badge-darkred';
        default: return 'badge-blue';
    }
}

function getHealthStatusClass(status) {
    switch (status) {
        case 'Nhẹ': return 'badge-green';
        case 'Trung bình': return 'badge-blue';
        case 'Nặng': return 'badge-yellow';
        case 'Nặng lên': return 'badge-orange';
        case 'Tiên lượng dè dặt': return 'badge-red';
        case 'Nguy kịch': return 'badge-darkred';
        default: return 'badge-blue';
    }
}

function formatDate(dateString) {
    const date = new Date(dateString);
    return date.toLocaleDateString('en-US', {
        year: 'numeric',
        month: 'short',
        day: 'numeric'
    });
}

// Add some CSS for the detail grids in modals
const additionalStyles = `
.detail-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
    gap: 1rem;
    margin: 1rem 0;
}

.detail-item {
    padding: 0.5rem;
    background: #f8fafc;
    border-radius: 6px;
}

.medications-section,
.dosage-section,
.instructions-section {
    margin: 1rem 0;
}

.medications-section ul {
    margin: 0.5rem 0;
    padding-left: 1.5rem;
}

.medications-section li {
    margin: 0.25rem 0;
}

.stars {
    color: #fbbf24;
    font-size: 1.2rem;
}

.medicine-tabs {
    display: flex;
    gap: 1rem;
    margin-bottom: 1.5rem;
    border-bottom: 2px solid #e5e7eb;
}

.medicine-tab {
    padding: 0.75rem 1.5rem;
    background: none;
    border: none;
    color: #6b7280;
    font-weight: 500;
    cursor: pointer;
    border-bottom: 2px solid transparent;
    margin-bottom: -2px;
    transition: all 0.3s;
}

.medicine-tab:hover {
    color: #3B82F6;
}

.medicine-tab.active {
    color: #3B82F6;
    border-bottom-color: #3B82F6;
}

.medicine-form-container {
    display: none;
}

.medicine-form-container.active {
    display: block;
}

.form-group {
    margin-bottom: 1.25rem;
}

.form-group label {
    display: block;
    margin-bottom: 0.5rem;
    font-weight: 500;
    color: #374151;
}

.form-control {
    width: 100%;
    padding: 0.625rem;
    border: 1px solid #d1d5db;
    border-radius: 6px;
    font-size: 0.875rem;
    transition: border-color 0.2s;
}

.form-control:focus {
    outline: none;
    border-color: #3B82F6;
    box-shadow: 0 0 0 3px rgba(59, 130, 246, 0.1);
}

.form-actions {
    display: flex;
    gap: 1rem;
    justify-content: flex-end;
    margin-top: 1.5rem;
    padding-top: 1.5rem;
    border-top: 1px solid #e5e7eb;
}

.pagination {
    display: flex;
    align-items: center;
    justify-content: center;
    gap: 0.5rem;
    margin-top: 1.5rem;
    padding: 1rem 0;
}

.pagination-btn {
    min-width: 2.5rem;
    height: 2.5rem;
    padding: 0.5rem;
    border: 1px solid #d1d5db;
    background: white;
    color: #374151;
    font-size: 0.875rem;
    font-weight: 500;
    border-radius: 6px;
    cursor: pointer;
    transition: all 0.2s;
    display: flex;
    align-items: center;
    justify-content: center;
}

.pagination-btn:hover:not(:disabled) {
    background: #f3f4f6;
    border-color: #3B82F6;
    color: #3B82F6;
}

.pagination-btn.active {
    background: #3B82F6;
    border-color: #3B82F6;
    color: white;
}

.pagination-btn:disabled {
    opacity: 0.5;
    cursor: not-allowed;
}

.pagination-ellipsis {
    padding: 0.5rem;
    color: #9ca3af;
}
`;

// Add the additional styles to the page
const styleSheet = document.createElement('style');
styleSheet.textContent = additionalStyles;
document.head.appendChild(styleSheet);

// Add Medicine Modal Functions
function openAddMedicineModal() {
    const modal = document.getElementById('addMedicineModal');
    modal.classList.add('open');
    
    // Populate existing medicine dropdown
    populateExistingMedicines();
    
    // Reset to first tab
    switchMedicineTab('new');
    
    // Reset forms
    document.getElementById('newMedicineFormElement').reset();
    document.getElementById('existingMedicineFormElement').reset();
    
    // Re-initialize icons
    feather.replace();
}

function closeAddMedicineModal() {
    const modal = document.getElementById('addMedicineModal');
    modal.classList.remove('open');
}

function switchMedicineTab(tabName) {
    // Update tab buttons
    const tabs = document.querySelectorAll('.medicine-tab');
    tabs.forEach(tab => tab.classList.remove('active'));
    
    // Update form containers
    document.getElementById('newMedicineForm').classList.remove('active');
    document.getElementById('existingMedicineForm').classList.remove('active');
    
    if (tabName === 'new') {
        tabs[0].classList.add('active');
        document.getElementById('newMedicineForm').classList.add('active');
    } else {
        tabs[1].classList.add('active');
        document.getElementById('existingMedicineForm').classList.add('active');
    }
}

function populateExistingMedicines() {
    const select = document.getElementById('existingMedicineName');
    
    // Get unique medicine names from inventory data
    const medicinesData = window.inventoryStatusTable || mockData.medicines;
    const uniqueMedicines = [...new Set(medicinesData.map(m => m.name))];
    
    // Clear existing options except the first one
    select.innerHTML = '<option value="">-- Chọn thuốc --</option>';
    
    // Add options for each unique medicine
    uniqueMedicines.forEach(name => {
        const option = document.createElement('option');
        option.value = name;
        option.textContent = name;
        select.appendChild(option);
    });
}

function submitNewMedicine(event) {
    event.preventDefault();
    
    const form = event.target;
    const formData = {
        tenthuoc: form.tenthuoc.value,
        congdung: form.congdung.value,
        giatien: parseInt(form.giatien.value),
        solo: parseInt(form.soluong.value),
        hsd: form.hsd.value
    };
    
    console.log('Submitting new medicine:', formData);
    
    // Send data to backend API
    fetch('/admin/add-new-medicine-batch', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify(formData)
    })
    .then(response => response.json())
    .then(data => {
        if (data.success) {
            alert('Đã thêm thuốc mới thành công!');
            closeAddMedicineModal();
            loadPharmacyTable(); // Reload table
        }
    });
    
    alert('Đã thêm thuốc mới: ' + formData.tenthuoc + '\n(TODO: Kết nối backend API)');
    closeAddMedicineModal();
}

function submitExistingMedicine(event) {
    event.preventDefault();
    
    const form = event.target;
    const formData = {
        tenthuoc: form.tenthuoc.value,
        solo: parseInt(form.soluong.value),
        hsd: form.hsd.value
    };
    
    console.log('Submitting existing medicine batch:', formData);
    
    // Send data to backend API
    fetch('/admin/add-medicine-batch', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify(formData)
    })
    .then(response => {
        if (!response.ok) {
            throw new Error('Network response was not ok');
        }
        return response.json();
    })
    .then(data => {
        if (data.success) {
            alert('Đã thêm lô thuốc thành công!\n' + data.message);
            closeAddMedicineModal();
            loadPharmacyTable(); // Reload table
            loadPharmacyAlerts(); // Reload alerts
        } else {
            alert('Lỗi: ' + (data.message || 'Không thể thêm lô thuốc'));
        }
    })
    .catch(error => {
        console.error('Error:', error);
        alert('Lỗi kết nối: ' + error.message);
    });
}

// Add Prescription Modal Functions
// Check if patient exists in database
let patientCheckTimeout = null;
function checkPatientExists(patientId) {
    const icon = document.getElementById('patientValidationIcon');
    const message = document.getElementById('patientValidationMessage');
    const typeSelect = document.getElementById('existingPatientType');
    
    // Clear previous timeout
    if (patientCheckTimeout) {
        clearTimeout(patientCheckTimeout);
    }
    
    // Hide icon and message if input is empty
    if (!patientId || patientId.trim() === '') {
        icon.style.display = 'none';
        message.style.display = 'none';
        // Reset patient type select to default options
        resetPatientTypeSelect();
        return;
    }
    
    // Show loading state
    icon.style.display = 'inline';
    icon.innerHTML = '<span style="color: #6B7280;">...</span>';
    message.style.display = 'none';
    
    // Debounce the API call
    patientCheckTimeout = setTimeout(() => {
        fetch(`/doctor/prescriptions/check-patient/${patientId}`)
            .then(response => response.json())
            .then(data => {
                if (data.exists) {
                    icon.innerHTML = '<i data-feather="check-circle" style="color: #10B981; width: 20px; height: 20px;"></i>';
                    message.innerHTML = '<span style="color: #10B981;">✓ Bệnh nhân tồn tại</span>';
                    message.style.display = 'block';
                    
                    // Fetch patient type and update select options
                    // fetch(`/doctor/prescriptions/check-loaibn/${patientId}`)
                    //     .then(response => response.json())
                    //     .then(loaibnData => {
                    //         const loaibenhnhan = loaibnData.loaibenhnhan;
                    //         const value = loaibenhnhan === 'Nội trú' ? 'noitru' : 'ngoaitru';
                            
                    //         // Update select with dynamic option
                    //         typeSelect.innerHTML = `
                    //             <option value="">-- Chọn loại --</option>
                    //             <option value="duytri">Duy trì hình thức cũ</option>
                    //             <option value="${loaibenhnhan}">${loaibenhnhan}</option>
                    //         `;
                    //     })
                    //     .catch(error => {
                    //         console.error('Error fetching patient type:', error);
                    //         resetPatientTypeSelect();
                    //     });
                } else {
                    icon.innerHTML = '<i data-feather="x-circle" style="color: #EF4444; width: 20px; height: 20px;"></i>';
                    message.innerHTML = '<span style="color: #EF4444;">✗ Không tìm thấy bệnh nhân</span>';
                    message.style.display = 'block';
                    resetPatientTypeSelect();
                }
                feather.replace();
            })
            .catch(error => {
                console.error('Error checking patient:', error);
                icon.innerHTML = '<i data-feather="alert-circle" style="color: #F59E0B; width: 20px; height: 20px;"></i>';
                message.innerHTML = '<span style="color: #F59E0B;">⚠ Lỗi kiểm tra</span>';
                message.style.display = 'block';
                resetPatientTypeSelect();
                feather.replace();
            });
    }, 500); // Wait 500ms after user stops typing
}

function resetPatientTypeSelect() {
    const typeSelect = document.getElementById('existingPatientType');
    if (typeSelect) {
        typeSelect.innerHTML = `
            <option value="">-- Chọn loại --</option>
            <option value="Ngoại trú">Ngoại trú</option>
            <option value="Nội trú">Nội trú</option>
        `;
    }
}

function openAddPrescriptionModal() {
    const modal = document.getElementById('addPrescriptionModal');
    modal.classList.add('open');
    
    // Reset to first tab
    switchPrescriptionTab('existing');
    
    // Reset forms
    document.getElementById('existingPatientPrescriptionFormElement').reset();
    document.getElementById('newPatientPrescriptionFormElement').reset();
    
    // Reset validation indicators
    const icon = document.getElementById('patientValidationIcon');
    const message = document.getElementById('patientValidationMessage');
    if (icon) icon.style.display = 'none';
    if (message) message.style.display = 'none';
    
    // Reset patient type select to default
    resetPatientTypeSelect();
    
    // Re-initialize icons
    feather.replace();
}

function closeAddPrescriptionModal() {
    const modal = document.getElementById('addPrescriptionModal');
    modal.classList.remove('open');
}

function switchPrescriptionTab(tabName) {
    // Update tab buttons
    const tabs = document.querySelectorAll('#addPrescriptionModal .medicine-tab');
    tabs.forEach(tab => tab.classList.remove('active'));
    
    // Update form containers
    document.getElementById('existingPatientPrescriptionForm').classList.remove('active');
    document.getElementById('newPatientPrescriptionForm').classList.remove('active');
    
    if (tabName === 'existing') {
        tabs[0].classList.add('active');
        document.getElementById('existingPatientPrescriptionForm').classList.add('active');
    } else {
        tabs[1].classList.add('active');
        document.getElementById('newPatientPrescriptionForm').classList.add('active');
    }
}

function submitExistingPatientPrescription(event) {
    event.preventDefault();
    
    const form = event.target;
    const formData = new FormData(form);
    
    const prescriptionData = {
        MABN: formData.get('MABN'),
        loaibenhnhan: formData.get('loaibenhnhan'),
        tenbenh: formData.get('tenbenh'),
        giaidoan: formData.get('giaidoan'),
        tinhtrang: formData.get('tinhtrang'),
        tenthuoc: formData.get('tenthuoc'),
        soluong: parseInt(formData.get('soluong')),
        songayuong: parseInt(formData.get('songayuong'))
    };
    
    console.log('Submitting prescription for existing patient:', prescriptionData);
    
    // Send data to backend API
    fetch('/doctor/prescriptions/add-existing', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify(prescriptionData)
    })
    .then(response => response.json())
    .then(data => {
        alert('Đã thêm đơn thuốc thành công!');
        closeAddPrescriptionModal();
        window.location.reload();
    })
    .catch(error => {
        console.error('Error:', error);
        alert('Lỗi khi thêm đơn thuốc: ' + error.message);
    });
    
    alert('Đã thêm đơn thuốc cho bệnh nhân ' + prescriptionData.MABN + '\n(TODO: Kết nối backend API)');
    closeAddPrescriptionModal();
}

function submitNewPatientPrescription(event) {
    event.preventDefault();
    
    const form = event.target;
    const formData = new FormData(form);
    
    const prescriptionData = {
        // Patient info
        hoten: formData.get('hoten'),
        sdt: formData.get('sdt'),
        loaibenhnhan: formData.get('loaibenhnhan'),
        // Prescription info
        tenbenh: formData.get('tenbenh'),
        giaidoan: formData.get('giaidoan'),
        tinhtrang: formData.get('tinhtrang'),
        tenthuoc: formData.get('tenthuoc'),
        soluong: parseInt(formData.get('soluong')),
        songayuong: parseInt(formData.get('songayuong'))
    };
    
    console.log('Submitting prescription for new patient:', prescriptionData);
    
    // Send data to backend API
    fetch('/doctor/prescriptions/add-new', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify(prescriptionData)
    })
    .then(response => response.json())
    .then(data => {
        let message = 'Đã thêm bệnh nhân và đơn thuốc thành công!';
        if (data.account_created && data.username && data.password) {
            message += '\n\n📋 Thông tin tài khoản bệnh nhân:\n';
            message += '👤 Tên đăng nhập: ' + data.username + '\n';
            message += '🔑 Mật khẩu: ' + data.password;
        }
        alert(message);
        closeAddPrescriptionModal();
        window.location.reload();
    })
    .catch(error => {
        console.error('Error:', error);
        alert('Lỗi khi thêm đơn thuốc: ' + error.message);
    });
    
    alert('Đã thêm bệnh nhân mới: ' + prescriptionData.hoten + '\nvà đơn thuốc\n(TODO: Kết nối backend API)');
    closeAddPrescriptionModal();
}
