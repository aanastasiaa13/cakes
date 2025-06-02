const menuButton = document.getElementById('menu');
const sidebar = document.querySelector('.sidebar');
const sidebarCloseButton = document.getElementById('sidebar-close');

menuButton.addEventListener('click', () => {
    sidebar.style.right = '0';
});
sidebarCloseButton.addEventListener('click', () => {
    sidebar.style.right = '-400px';
});

/* ------------------------------------------------------------------ */

const signIn = document.getElementById('sign-in');
const adminSignIn = document.getElementById('admin-sign-in');
const modal = document.getElementById('modal');
const modalButtonClose = document.getElementById('modal-close');
const inputFIO = document.getElementById('fio');

signIn.addEventListener('click', () => {
    modal.style.display = 'flex';
    inputFIO.style.display = 'block';
});
adminSignIn.addEventListener('click', () => {
    modal.style.display = 'flex';
    inputFIO.style.display = 'none';
});
modalButtonClose.addEventListener('click', () => {
    modal.style.display = 'none';
});

/* ------------------------------------------------------------------ */

const forms = document.querySelectorAll('.needs-validation');

Array.from(forms).forEach(form => {
    form.addEventListener('submit', event => {
        if (!form.checkValidity()) {
            event.preventDefault();
            event.stopPropagation();
        }

        form.classList.add('was-validated');
    }, false);
});