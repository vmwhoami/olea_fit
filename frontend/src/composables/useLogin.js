// src/composables/useLogin.js
import { ref } from 'vue';
import { toast } from 'vue3-toastify';
import 'vue3-toastify/dist/index.css';

export function useLogin() {
    const email = ref('');
    const password = ref('');

    const notify = (message) => {
        toast(message, {
            autoClose: 2000,
        });
    };

    const loginData = () => ({
        email: email.value,
        password: password.value,
    });


    const logOut = () => ({
        email: null,
        password: null,
    })

    return {
        email,
        password,
        notify,
        loginData,
    };
}
