const signIn = document.getElementById('sign-in');
const modal = document.getElementById('modal');
const modalButtonClose = document.getElementById('modal-close');

if (signIn) {
    signIn.addEventListener('click', () => {
        modal.style.display = 'flex';
    });
}

if (modalButtonClose) {
    modalButtonClose.addEventListener('click', () => {
        modal.style.display = 'none';
    });
}

/* ------------------------------------------------------------------ */

const cartButtonSignIn = document.getElementById('button-sign-in');

if (cartButtonSignIn) {
    cartButtonSignIn.addEventListener('click', () => {
        modal.style.display = 'flex';
        inputFIO.style.display = 'block';
    });
}

/* ------------------------------------------------------------------ */

const itemsPrices = document.querySelectorAll('.cart-item__price span');
const itemsCount = document.querySelectorAll('.cart-item__count');
const resultCost = document.querySelector('.result-cost span');
const hiddenCost = document.getElementById('hidden-cost');

let sum = 0;

if (itemsPrices && itemsCount && resultCost && hiddenCost) {
    itemsPrices.forEach(item => {
        const price = Number(item.textContent.trim());
        sum += price;
    });

    resultCost.innerText = sum.toFixed(2);
    hiddenCost.value = sum.toFixed(2);

    itemsCount.forEach((input, index) => {
        const priceElement = itemsPrices[index];
        const basePrice = parseFloat(priceElement.dataset.basePrice) || parseFloat(priceElement.textContent);

        let previousCount = parseInt(input.value) || 1;

        input.addEventListener('input', () => {
            const currentCount = parseInt(input.value) || 1;
            const priceChange = basePrice * (currentCount - previousCount);
            previousCount = currentCount;

            priceElement.textContent = (basePrice * currentCount).toFixed(2);

            const currentResultCost = parseFloat(resultCost.textContent) || 0;
            resultCost.textContent = (currentResultCost + priceChange).toFixed(2);
            hiddenCost.value = (currentResultCost + priceChange).toFixed(2);
        });
    });
}

/* ------------------------------------------------------------------ */

const infoBlock = document.querySelector('.info-block');
const buttonProcess = document.getElementById('button-process');

if (buttonProcess) {
    buttonProcess.addEventListener('click', () => {
        infoBlock.style.display = 'flex';
    });
}

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