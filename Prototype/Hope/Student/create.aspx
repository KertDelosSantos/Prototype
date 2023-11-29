<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Create Account</title>
    <!-- Include Bootstrap CSS from a CDN -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        .form-control-border {
            border-radius: .25rem;
            border: 1px solid #ced4da;
        }
        .profile-picture-placeholder {
            background-color: #dee2e6;
            width: 80px;
            height: 80px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 20px auto;
            font-size: 2.5rem;
            color: #adb5bd;
        }
        .btn-upload {
            background-color: #e9ecef;
            color: #495057;
        }
    </style>
</head>
<body>
    <div class="container mt-5">
        <div class="row justify-content-md-center">
            <div class="col-md-6">
                <div class="text-center mb-4">
                    <h1>Create Account</h1>
                </div>
                <div class="profile-picture-placeholder">
                    <i class="far fa-user"></i> <!-- Placeholder for profile icon -->
                </div>
                <form>
                    <div class="form-group">
                        <input type="text" class="form-control form-control-border" placeholder="Full Name">
                    </div>
                    <div class="form-group">
                        <input type="email" class="form-control form-control-border" placeholder="Email">
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control form-control-border" placeholder="Username">
                    </div>
                    <div class="form-group">
                        <input type="password" class="form-control form-control-border" placeholder="Password">
                    </div>
                    <div class="form-group">
                        <input type="password" class="form-control form-control-border" placeholder="Re-type Password">
                    </div>
                    <div class="form-group">
                        <input type="file" class="form-control-file">
                        <button type="button" class="btn btn-upload btn-block mt-2">Upload Your Profile</button>
                    </div>
                    <div class="form-group text-center">
                        <button type="submit" class="btn btn-primary">Confirm</button>
                        <button type="button" class="btn btn-secondary">Cancel</button>
                    </div>
                </form>
                <div class="text-center">
                    Already have an account? <a href="#" class="text-primary">Sign In</a>
                </div>
            </div>
        </div>
    </div>

    <!-- Optional: Include the jQuery library -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <!-- Include Bootstrap JS from a CDN -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
