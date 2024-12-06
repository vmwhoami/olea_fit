// src/composables/useForm.js
import { ref } from 'vue';
import { toast } from 'vue3-toastify';
import 'vue3-toastify/dist/index.css';

export function useForm() {
    const username = ref('');
    const email = ref('');
    const password = ref('');
    const confirmPassword = ref('');

    const notify = (message) => {
        toast(message, {
            autoClose: 2000,
        });
    };

    const validatePasswords = () => {
        if (password.value !== confirmPassword.value) {
            notify("Passwords don't match");
            return false;
        }
        return true;
    };

    const userData = () => ({
        user: {
            username: username.value,
            email: email.value,
            password: password.value,
        },
    });

    return {
        username,
        email,
        password,
        confirmPassword,
        notify,
        validatePasswords,
        userData,
    };
}
