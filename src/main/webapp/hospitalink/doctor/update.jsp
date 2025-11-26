<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en" class="dark">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>HospitaLink | Edit Doctor</title>
  <link rel="shortcut icon" href="${pageContext.request.contextPath}/hospitalink/assets/favicon.png" type="image/x-icon">

  <!-- Tailwind CSS -->
  <script src="https://cdn.tailwindcss.com"></script>

  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
</head>

<body class="bg-gray-100 dark:bg-gray-900 text-gray-900 dark:text-gray-100 min-h-screen flex">

  <!-- Sidebar -->
  <%@ include file="../partials/sidebar.jsp" %>

  <!-- Main Content -->
  <div class="flex-1 flex flex-col">

    <!-- Topbar -->
    <%@ include file="../partials/header.jsp" %>

    <!-- Main Area -->
    <main class="flex-1 p-6 space-y-6">

      <!-- Full Width Form -->
      <form action="${pageContext.request.contextPath}/doctor" method="POST" class="bg-white dark:bg-gray-800 shadow-lg rounded-lg p-8 w-full" onsubmit="return validateForm()">

        <input type="hidden" name="action" value="update">
        <input type="hidden" name="id" value="${doctor.doctorId}">

        <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
          
          <!-- Left Side -->
          <div class="space-y-4">
            <div>
              <label class="block text-sm font-medium mb-1" for="fullName">Full Name</label>
              <input type="text" id="fullName" name="fullName" required
                value="${doctor.fullName}"
                class="w-full px-4 py-2 rounded-lg border border-gray-300 dark:border-gray-600 bg-gray-50 dark:bg-gray-700 text-gray-900 dark:text-gray-100 focus:ring-2 focus:ring-blue-500 focus:outline-none">
            </div>

            <div>
              <label class="block text-sm font-medium mb-1" for="specialty">Specialty</label>
              <input type="text" id="specialty" name="specialty" required
                value="${doctor.specialty}"
                class="w-full px-4 py-2 rounded-lg border border-gray-300 dark:border-gray-600 bg-gray-50 dark:bg-gray-700 text-gray-900 dark:text-gray-100 focus:ring-2 focus:ring-blue-500 focus:outline-none">
            </div>
          </div>

          <!-- Right Side -->
          <div class="space-y-4">
            <div>
              <label class="block text-sm font-medium mb-1" for="contactNumber">Contact Number</label>
              <input type="number" id="contactNumber" name="contactNumber" required
                value="${doctor.contactNumber}"
                class="w-full px-4 py-2 rounded-lg border border-gray-300 dark:border-gray-600 bg-gray-50 dark:bg-gray-700 text-gray-900 dark:text-gray-100 focus:ring-2 focus:ring-blue-500 focus:outline-none">
            </div>

            <div>
              <label class="block text-sm font-medium mb-1" for="email">Email</label>
              <input type="email" id="email" name="email" required
                value="${doctor.email}"
                class="w-full px-4 py-2 rounded-lg border border-gray-300 dark:border-gray-600 bg-gray-50 dark:bg-gray-700 text-gray-900 dark:text-gray-100 focus:ring-2 focus:ring-blue-500 focus:outline-none">
            </div>
          </div>

        </div>

        <!-- Submit Button -->
        <div class="mt-8 flex justify-end">
          <button type="submit" class="flex items-center gap-2 px-6 py-2 bg-blue-600 hover:bg-blue-700 text-white rounded-lg font-semibold transition">
            <i class="fas fa-save"></i> Update Doctor
          </button>
        </div>

      </form>

    </main>

  </div>

  <!-- JavaScript -->
  <%@ include file="../partials/script.jsp" %>

<script>
  function validateForm() {
    const fullName = document.getElementById("fullName").value.trim();
    const specialty = document.getElementById("specialty").value.trim();
    const contactNumber = document.getElementById("contactNumber").value.trim();
    const email = document.getElementById("email").value.trim();

    // Name and Specialty: letters and spaces only
    const nameRegex = /^[A-Za-z\s]+$/;

    // Contact Number: 10 digits only
    const phoneRegex = /^\d{10}$/;

    // Email format
    const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;

    if (!nameRegex.test(fullName)) {
      alert("Please enter a valid Full Name (letters only).");
      return false;
    }

    if (!nameRegex.test(specialty)) {
      alert("Please enter a valid Specialty (letters only).");
      return false;
    }

    if (!phoneRegex.test(contactNumber)) {
      alert("Please enter a valid 10-digit Contact Number.");
      return false;
    }

    if (!emailRegex.test(email)) {
      alert("Please enter a valid Email address.");
      return false;
    }

    return true; // Allow form to submit
  }
</script>

</body>
</html>


