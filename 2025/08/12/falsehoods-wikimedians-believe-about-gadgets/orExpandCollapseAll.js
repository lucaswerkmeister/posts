const button = document.createElement('button');
button.textContent = 'expand all';
let isExpandButton = true;
button.addEventListener('click', () => {
    for (const details of document.getElementsByTagName('details')) {
        details.open = isExpandButton;
    }
    isExpandButton = !isExpandButton;
    button.textContent = isExpandButton ? 'expand all' : 'collapse all';
});
document.currentScript.replaceWith(' or ', button);
