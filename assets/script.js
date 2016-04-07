function expandDescription() {
    event.preventDefault();

    var more_description = document.getElementById('more-description');
    more_description.className = 'show';

    var button = document.getElementById('read-more-button');
    button.style.display = 'none';

    var description = document.getElementById('description');
    description.className = '';
}
