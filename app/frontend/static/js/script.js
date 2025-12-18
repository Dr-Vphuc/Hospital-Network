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
    const subTabs = document.querySelectorAll('.sub-tab');
    const subSections = document.querySelectorAll('.sub-section');

    subTabs.forEach(tab => {
        tab.addEventListener('click', () => {
            const targetSubSection = tab.getAttribute('data-subsection');
            
            // Remove active class from all sub-tabs and sub-sections
            subTabs.forEach(t => t.classList.remove('active'));
            subSections.forEach(s => s.classList.remove('active'));
            
            // Add active class to clicked sub-tab and corresponding sub-section
            tab.classList.add('active');
            document.getElementById(targetSubSection).classList.add('active');
        });
    });
}

// Search Functionality
function setupSearchFunctionality() {
    // Patient search
    const patientSearch = document.getElementById('patientSearch');
    if (patientSearch) {
        patientSearch.addEventListener('input', (e) => {
            filterPatients(e.target.value);
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
    const patientTrendsData = {
        labels: ['Aug', 'Sep', 'Oct', 'Nov', 'Dec', 'Jan'],
        datasets: [{
            label: 'New Patients',
            data: [45, 52, 48, 61, 58, 67],
            borderColor: '#3B82F6',
            backgroundColor: 'rgba(59, 130, 246, 0.1)',
            tension: 0.4,
            fill: true
        }]
    };

    // Department distribution data
    const departmentData = {
        labels: ['Cardiology', 'Neurology', 'Orthopedics', 'Pediatrics', 'Emergency'],
        datasets: [{
            data: [25, 20, 15, 20, 20],
            backgroundColor: ['#3B82F6', '#10B981', '#8B5CF6', '#F59E0B', '#EF4444'],
            borderWidth: 0
        }]
    };

    // Store chart data for later initialization
    window.dashboardCharts = {
        patientTrends: patientTrendsData,
        department: departmentData
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
}

// Patient Functions
function loadPatients() {
    const tbody = document.getElementById('patientsTableBody');
    if (!tbody) return;

    tbody.innerHTML = '';
    mockData.patients.forEach(patient => {
        const row = createPatientRow(patient);
        tbody.appendChild(row);
    });
}

function createPatientRow(patient) {
    const row = document.createElement('tr');
    const statusClass = getStatusClass(patient.status);
    
    row.innerHTML = `
        <td>${patient.id}</td>
        <td>${patient.name}</td>
        <td>${patient.age}</td>
        <td>${patient.contact}</td>
        <td>${formatDate(patient.admissionDate)}</td>
        <td>${patient.department}</td>
        <td><span class="badge ${statusClass}">${patient.status}</span></td>
        <td>
            <button class="btn btn-sm btn-primary" onclick="viewPatientDetails(${patient.id})">
                <i data-feather="eye"></i>
                View Details
            </button>
        </td>
    `;
    
    // Re-initialize Feather icons for the new content
    feather.replace();
    return row;
}

function filterPatients(searchTerm) {
    const tbody = document.getElementById('patientsTableBody');
    if (!tbody) return;

    const filteredPatients = mockData.patients.filter(patient =>
        patient.name.toLowerCase().includes(searchTerm.toLowerCase())
    );

    tbody.innerHTML = '';
    filteredPatients.forEach(patient => {
        const row = createPatientRow(patient);
        tbody.appendChild(row);
    });
}

function viewPatientDetails(patientId) {
    const patient = mockData.patients.find(p => p.id === patientId);
    if (!patient) return;

    const modalBody = document.getElementById('patientModalBody');
    modalBody.innerHTML = `
        <div class="patient-details">
            <h4>Patient Information</h4>
            <div class="detail-grid">
                <div class="detail-item">
                    <strong>ID:</strong> ${patient.id}
                </div>
                <div class="detail-item">
                    <strong>Name:</strong> ${patient.name}
                </div>
                <div class="detail-item">
                    <strong>Age:</strong> ${patient.age}
                </div>
                <div class="detail-item">
                    <strong>Contact:</strong> ${patient.contact}
                </div>
                <div class="detail-item">
                    <strong>Admission Date:</strong> ${formatDate(patient.admissionDate)}
                </div>
                <div class="detail-item">
                    <strong>Department:</strong> ${patient.department}
                </div>
                <div class="detail-item">
                    <strong>Status:</strong> <span class="badge ${getStatusClass(patient.status)}">${patient.status}</span>
                </div>
            </div>
        </div>
    `;

    document.getElementById('patientModal').classList.add('open');
}

// Appointment Functions
function loadAppointments() {
    const tbody = document.getElementById('appointmentsTableBody');
    if (!tbody) return;

    tbody.innerHTML = '';
    mockData.appointments.forEach(appointment => {
        const row = createAppointmentRow(appointment);
        tbody.appendChild(row);
    });
}

function createAppointmentRow(appointment) {
    const row = document.createElement('tr');
    const statusClass = getAppointmentStatusClass(appointment.status);
    
    row.innerHTML = `
        <td>${formatDate(appointment.date)} ${appointment.time}</td>
        <td>${appointment.patientName}</td>
        <td>${appointment.doctor}</td>
        <td><span class="badge ${statusClass}">${appointment.status}</span></td>
        <td>
            <button class="btn btn-sm btn-primary">
                <i data-feather="eye"></i>
                View
            </button>
            <button class="btn btn-sm btn-secondary">
                <i data-feather="edit"></i>
                Reschedule
            </button>
        </td>
    `;
    
    feather.replace();
    return row;
}

// Staff Functions
function loadStaff() {
    const tbody = document.getElementById('staffTableBody');
    if (!tbody) return;

    tbody.innerHTML = '';
    mockData.staff.forEach(member => {
        const row = createStaffRow(member);
        tbody.appendChild(row);
    });
}

function createStaffRow(member) {
    const row = document.createElement('tr');
    const statusClass = member.status === 'Available' ? 'badge-green' : 'badge-red';
    
    row.innerHTML = `
        <td>${member.name}</td>
        <td>${member.role}</td>
        <td>${member.department}</td>
        <td>${member.contact}</td>
        <td><span class="badge ${statusClass}">${member.status}</span></td>
    `;
    
    return row;
}

function filterStaff(searchTerm) {
    const tbody = document.getElementById('staffTableBody');
    if (!tbody) return;

    const filteredStaff = mockData.staff.filter(member =>
        member.name.toLowerCase().includes(searchTerm.toLowerCase())
    );

    tbody.innerHTML = '';
    filteredStaff.forEach(member => {
        const row = createStaffRow(member);
        tbody.appendChild(row);
    });
}

function filterStaffByRole(role) {
    const tbody = document.getElementById('staffTableBody');
    if (!tbody) return;

    const filteredStaff = role ? 
        mockData.staff.filter(member => member.role === role) : 
        mockData.staff;

    tbody.innerHTML = '';
    filteredStaff.forEach(member => {
        const row = createStaffRow(member);
        tbody.appendChild(row);
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
        <p>Status: <span class="badge ${getAppointmentStatusClass(appointment.status)}">${appointment.status}</span></p>
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

function loadMyPatients() {
    const tbody = document.getElementById('myPatientsTableBody');
    if (!tbody) return;

    tbody.innerHTML = '';
    mockData.doctorPatients.forEach(patient => {
        const row = document.createElement('tr');
        const healthStatusClass = getHealthStatusClass(patient.healthStatus);
        
        row.innerHTML = `
            <td>${patient.name}</td>
            <td>${formatDate(patient.lastVisit)}</td>
            <td><span class="badge ${healthStatusClass}">${patient.healthStatus}</span></td>
            <td>${patient.visitHistory}</td>
        `;
        
        tbody.appendChild(row);
    });
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
                labels: ['Aug', 'Sep', 'Oct', 'Nov', 'Dec', 'Jan'],
                datasets: [{
                    label: 'Consultations',
                    data: [12, 15, 18, 14, 16, 20],
                    borderColor: '#3B82F6',
                    backgroundColor: 'rgba(59, 130, 246, 0.1)',
                    tension: 0.4,
                    fill: true
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
}

// Pharmacy Functions
function loadPharmacy() {
    loadPharmacyAlerts();
    loadPharmacyTable();
}

function loadPharmacyAlerts() {
    const alertsContainer = document.getElementById('pharmacyAlerts');
    if (!alertsContainer) return;

    const lowStockItems = mockData.medicines.filter(medicine => 
        (medicine.quantity / medicine.maxQuantity) < 0.2
    );
    
    const nearExpiryItems = mockData.medicines.filter(medicine => {
        const expiryDate = new Date(medicine.expiryDate);
        const today = new Date();
        const diffTime = expiryDate - today;
        const diffDays = Math.ceil(diffTime / (1000 * 60 * 60 * 24));
        return diffDays <= 30 && diffDays > 0;
    });

    alertsContainer.innerHTML = '';

    lowStockItems.forEach(medicine => {
        const alert = document.createElement('div');
        alert.className = 'alert alert-warning';
        alert.innerHTML = `
            <i data-feather="alert-triangle"></i>
            Low stock: ${medicine.name} (${medicine.quantity}/${medicine.maxQuantity})
        `;
        alertsContainer.appendChild(alert);
    });

    nearExpiryItems.forEach(medicine => {
        const alert = document.createElement('div');
        alert.className = 'alert alert-danger';
        alert.innerHTML = `
            <i data-feather="alert-circle"></i>
            Near expiry: ${medicine.name} expires on ${formatDate(medicine.expiryDate)}
        `;
        alertsContainer.appendChild(alert);
    });

    feather.replace();
}

function loadPharmacyTable() {
    const tbody = document.getElementById('pharmacyTableBody');
    if (!tbody) return;

    tbody.innerHTML = '';
    mockData.medicines.forEach(medicine => {
        const row = createPharmacyRow(medicine);
        tbody.appendChild(row);
    });
}

function createPharmacyRow(medicine) {
    const row = document.createElement('tr');
    const stockPercentage = (medicine.quantity / medicine.maxQuantity) * 100;
    const progressClass = stockPercentage > 50 ? 'progress-green' : 
                         stockPercentage > 20 ? 'progress-yellow' : 'progress-red';
    
    row.innerHTML = `
        <td>${medicine.name}</td>
        <td>${medicine.quantity}</td>
        <td>
            <div class="progress-bar">
                <div class="progress-fill ${progressClass}" style="width: ${stockPercentage}%"></div>
            </div>
            <span style="font-size: 0.75rem; color: #6b7280;">${Math.round(stockPercentage)}%</span>
        </td>
        <td>${formatDate(medicine.expiryDate)}</td>
        <td>${medicine.supplier}</td>
        <td>${medicine.batch}</td>
        <td>${medicine.location}</td>
    `;
    
    return row;
}

// Prescription Functions
function loadPrescriptions() {
    const tbody = document.getElementById('prescriptionsTableBody');
    if (!tbody) return;

    tbody.innerHTML = '';
    mockData.prescriptions.forEach(prescription => {
        const row = createPrescriptionRow(prescription);
        tbody.appendChild(row);
    });
}

function createPrescriptionRow(prescription) {
    const row = document.createElement('tr');
    const statusClass = getPrescriptionStatusClass(prescription.status);
    
    row.innerHTML = `
        <td>${prescription.patientName}</td>
        <td>${prescription.medications.join(', ')}</td>
        <td>${prescription.dosage} - ${prescription.frequency}</td>
        <td>${prescription.instructions}</td>
        <td><span class="badge ${statusClass}">${prescription.status}</span></td>
        <td>${formatDate(prescription.date)}</td>
        <td>
            <button class="btn btn-sm btn-primary" onclick="viewPrescriptionDetails(${prescription.id})">
                <i data-feather="eye"></i>
                View Details
            </button>
        </td>
    `;
    
    feather.replace();
    return row;
}

function viewPrescriptionDetails(prescriptionId) {
    const prescription = mockData.prescriptions.find(p => p.id === prescriptionId);
    if (!prescription) return;

    const modalBody = document.getElementById('prescriptionModalBody');
    modalBody.innerHTML = `
        <div class="prescription-details">
            <h4>Prescription Details</h4>
            <div class="detail-grid">
                <div class="detail-item">
                    <strong>Patient:</strong> ${prescription.patientName}
                </div>
                <div class="detail-item">
                    <strong>Date:</strong> ${formatDate(prescription.date)}
                </div>
                <div class="detail-item">
                    <strong>Status:</strong> <span class="badge ${getPrescriptionStatusClass(prescription.status)}">${prescription.status}</span>
                </div>
            </div>
            <div class="medications-section">
                <h5>Medications:</h5>
                <ul>
                    ${prescription.medications.map(med => `<li>${med}</li>`).join('')}
                </ul>
            </div>
            <div class="dosage-section">
                <h5>Dosage & Frequency:</h5>
                <p>${prescription.dosage} - ${prescription.frequency}</p>
            </div>
            <div class="instructions-section">
                <h5>Instructions:</h5>
                <p>${prescription.instructions}</p>
            </div>
        </div>
    `;

    document.getElementById('prescriptionModal').classList.add('open');
}

// Dispensing Functions
function loadDispensing() {
    loadDispensingTable();
}

function loadDispensingTable() {
    const tbody = document.getElementById('dispensingTableBody');
    if (!tbody) return;

    tbody.innerHTML = '';
    mockData.dispensing.forEach(transaction => {
        const row = createDispensingRow(transaction);
        tbody.appendChild(row);
    });
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
        case 'Active': return 'badge-green';
        case 'Pending': return 'badge-yellow';
        case 'Discharged': return 'badge-red';
        default: return 'badge-blue';
    }
}

function getAppointmentStatusClass(status) {
    switch (status) {
        case 'Scheduled': return 'badge-blue';
        case 'Completed': return 'badge-green';
        case 'Cancelled': return 'badge-red';
        default: return 'badge-yellow';
    }
}

function getPrescriptionStatusClass(status) {
    switch (status) {
        case 'Active': return 'badge-blue';
        case 'Dispensed': return 'badge-yellow';
        case 'Completed': return 'badge-green';
        default: return 'badge-blue';
    }
}

function getHealthStatusClass(status) {
    switch (status) {
        case 'Stable': return 'badge-green';
        case 'Improving': return 'badge-blue';
        case 'Recovering': return 'badge-yellow';
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
`;

// Add the additional styles to the page
const styleSheet = document.createElement('style');
styleSheet.textContent = additionalStyles;
document.head.appendChild(styleSheet);
