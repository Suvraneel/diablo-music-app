/* private void loginUser(String email, String password) {

        mAuth.signInWithEmailAndPassword(email, password).addOnCompleteListener(new OnCompleteListener<AuthResult>() {

            @Override
            public void onComplete(@NonNull Task<AuthResult> task) {

                if (task.isSuccessful()) {

                    startActivity(new Intent(MainActivity.this, Main2Activity.class));

                } else {

                    String errorCode = ((FirebaseAuthException) task.getException()).getErrorCode();

                    switch (errorCode) {

                        case "ERROR_INVALID_CUSTOM_TOKEN":
                            Toast.makeText(MainActivity.this, "The custom token format is incorrect. Please check the documentation.", Toast.LENGTH_LONG).show();
                            break;

                        case "ERROR_CUSTOM_TOKEN_MISMATCH":
                            Toast.makeText(MainActivity.this, "The custom token corresponds to a different audience.", Toast.LENGTH_LONG).show();
                            break;

                        case "ERROR_INVALID_CREDENTIAL":
                            Toast.makeText(MainActivity.this, "The supplied auth credential is malformed or has expired.", Toast.LENGTH_LONG).show();
                            break;

                        case "ERROR_INVALID_EMAIL":
                            Toast.makeText(MainActivity.this, "The email address is badly formatted.", Toast.LENGTH_LONG).show();
                            etEmail.setError("The email address is badly formatted.");
                            etEmail.requestFocus();
                            break;

                        case "ERROR_WRONG_PASSWORD":
                            Toast.makeText(MainActivity.this, "The password is invalid or the user does not have a password.", Toast.LENGTH_LONG).show();
                            etPassword.setError("password is incorrect ");
                            etPassword.requestFocus();
                            etPassword.setText("");
                            break;

                        case "ERROR_USER_MISMATCH":
                            Toast.makeText(MainActivity.this, "The supplied credentials do not correspond to the previously signed in user.", Toast.LENGTH_LONG).show();
                            break;

                        case "ERROR_REQUIRES_RECENT_LOGIN":
                            Toast.makeText(MainActivity.this, "This operation is sensitive and requires recent authentication. Log in again before retrying this request.", Toast.LENGTH_LONG).show();
                            break;

                        case "ERROR_ACCOUNT_EXISTS_WITH_DIFFERENT_CREDENTIAL":
                            Toast.makeText(MainActivity.this, "An account already exists with the same email address but different sign-in credentials. Sign in using a provider associated with this email address.", Toast.LENGTH_LONG).show();
                            break;

                        case "ERROR_EMAIL_ALREADY_IN_USE":
                            Toast.makeText(MainActivity.this, "The email address is already in use by another account.   ", Toast.LENGTH_LONG).show();
                            etEmail.setError("The email address is already in use by another account.");
                            etEmail.requestFocus();
                            break;

                        case "ERROR_CREDENTIAL_ALREADY_IN_USE":
                            Toast.makeText(MainActivity.this, "This credential is already associated with a different user account.", Toast.LENGTH_LONG).show();
                            break;

                        case "ERROR_USER_DISABLED":
                            Toast.makeText(MainActivity.this, "The user account has been disabled by an administrator.", Toast.LENGTH_LONG).show();
                            break;

                        case "ERROR_USER_TOKEN_EXPIRED":
                            Toast.makeText(MainActivity.this, "The user\\'s credential is no longer valid. The user must sign in again.", Toast.LENGTH_LONG).show();
                            break;

                        case "ERROR_USER_NOT_FOUND":
                            Toast.makeText(MainActivity.this, "There is no user record corresponding to this identifier. The user may have been deleted.", Toast.LENGTH_LONG).show();
                            break;

                        case "ERROR_INVALID_USER_TOKEN":
                            Toast.makeText(MainActivity.this, "The user\\'s credential is no longer valid. The user must sign in again.", Toast.LENGTH_LONG).show();
                            break;

                        case "ERROR_OPERATION_NOT_ALLOWED":
                            Toast.makeText(MainActivity.this, "This operation is not allowed. You must enable this service in the console.", Toast.LENGTH_LONG).show();
                            break;

                        case "ERROR_WEAK_PASSWORD":
                            Toast.makeText(MainActivity.this, "The given password is invalid.", Toast.LENGTH_LONG).show();
                            etPassword.setError("The password is invalid it must 6 characters at least");
                            etPassword.requestFocus();
                            break;

                    }
                }
            }
        });
    } */
















// SignUp
/* 
if(!task.isSuccessful()) {
    try {
        throw task.getException();
    } catch(FirebaseAuthWeakPasswordException e) {
        mTxtPassword.setError(getString(R.string.error_weak_password));
        mTxtPassword.requestFocus();
    } catch(FirebaseAuthInvalidCredentialsException e) {
        mTxtEmail.setError(getString(R.string.error_invalid_email));
        mTxtEmail.requestFocus();
    } catch(FirebaseAuthUserCollisionException e) {
        mTxtEmail.setError(getString(R.string.error_user_exists));
        mTxtEmail.requestFocus();
    } catch(Exception e) {
        Log.e(TAG, e.getMessage());
    }
}

 */
