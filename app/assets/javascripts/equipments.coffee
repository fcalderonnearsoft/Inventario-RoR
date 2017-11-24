# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
@removeOne = (id) -> 
    label = document.getElementById('quantity-' + id)
    label.innerText = parseInt(label.innerText) - 1 if label.innerText != '0'
    input = document.getElementById('quantity' + id)
    input.value = label.innerText

@addOne = (id) -> 
    label = document.getElementById('quantity-' + id)
    label.innerText = parseInt(label.innerText) + 1
    input = document.getElementById('quantity' + id)
    input.value = label.innerText

@submitForms = () ->
    forms = $('*[id^="edit_relationship"]')
    form.submit() for form in forms