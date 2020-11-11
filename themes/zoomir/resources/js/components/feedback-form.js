$(document).ready(() => {
    
    function formValidator($form){

        var self = this;

        var timerId;

        // Поля Валидатора
            self.errors = [];
        // Поля Валидатора КОНЕЦ

        // Методы проверки Валидатора
            self.checkPhone = function(value, nameField){

                if (value){

                    if (!value.match(/^[0-9\+\(\)\-\s]{21}$/)){

                        self.errors.push('Поле "' + nameField + '" не соответствует формату!');
                    }
                }
            }

            self.checkCaptcha = function($element){
                
                if (!$element.prop('checked')){

                    self.errors.push('Вы должны принять согласие на обработку персональных данных!');
                }
            }

            self.checkString = function(value, nameField){
            
                if (value){

                    var rusChars = 'абвгдеёжзийклмнопрстуфхцчшщьыъэюяАБВГДЕЁЖЗИЙКЛМНОПРСТУФХЦЧШЩЬЫЪЭЮЯ';

                    if (!value.match('^[a-zA-Z'+rusChars+'0-9\_\ ]+$')) {
                        
                        self.errors.push('Поле "' + nameField + '" может содержать латинские или кириллические символы, цифры и знак "_"');
                    }
                }
            }

            self.checkText = function(value, nameField){
            
                if (value){

                    var rusChars = 'абвгдеёжзийклмнопрстуфхцчшщьыъэюяАБВГДЕЁЖЗИЙКЛМНОПРСТУФХЦЧШЩЬЫЪЭЮЯ';

                    if (!value.match('^[a-zA-Z'+rusChars+'0-9\.\,\;\:\?\!\'\"\(\)\_\ \r\n]+$')) {
                        
                        self.errors.push('Поле "' + nameField + '" содержит недопустимые символы!');
                    }
                }
            }

            self.checkEmail = function(value, nameField){
            
                if (value){

                    var rusChars = 'абвгдеёжзийклмнопрстуфхцчшщьыъэюяАБВГДЕЁЖЗИЙКЛМНОПРСТУФХЦЧШЩЬЫЪЭЮЯ';

                    if (!value.match('^(['+rusChars+'a-zA-Z0-9_\.-])+@['+rusChars+'a-zA-Z0-9-]+[\.]+(['+rusChars+'a-zA-Z]{2,6}\.)?['+rusChars+'a-z]{2,6}$')) {
                        
                        self.errors.push('Поле "' + nameField + '" не соответствует формату!');
                    }
                }
            }

            self.checkFile = function(value, nameField){

                var raz;

                if (value) {

                    raz = value.name.split('.')[1];

                    if (raz !== 'txt' && raz !== 'doc' && raz !== 'docx' && raz !== 'xls' && raz !== 'xlsx' && raz !== 'pdf') {

                        self.errors.push('Разрешение у файла "' + nameField + '" должно быть txt или doc, или docx, или xls, или xlsx, или pdf!');
                    }

                    if (value.size > 2097152) {

                        self.errors.push('Размер файла "' + nameField + '" не должен превышать 2мб!');
                    }
                }
            }
        // Методы проверки Валидатора КОНЕЦ

        // Вывод сообщений валидатора
            self.getMsg = function(){
                var messages = '', $feedbackFormMessage = $form.find('.vakansii-single-page__send-form-message');

                if (self.errors.length) {
                    $feedbackFormMessage.addClass('vakansii-single-page__send-form-message_error');
                }
                else {
                    self.errors = ['Ваша заявка принята!'];
                    $feedbackFormMessage.removeClass('vakansii-single-page__send-form-message_error');
                }
                
                self.errors.forEach(function(item){
                    messages += `<li>${item}</li>`;
                });
                $feedbackFormMessage.append(`<ul>${messages}</ul>`);

                $feedbackFormMessage.slideToggle();
                timerId = setTimeout(function(){
                    $feedbackFormMessage.slideToggle();
                }, 6000); 
            }
        // Вывод сообщений валидатора КОНЕЦ

        // Валидация формы
            self.validate = function(){

                self.errors = [];

                clearTimeout(timerId);

                $form.find('.vakansii-single-page__send-form-message').css('display', 'none').html('');

                var $fieldsArr = $form.find('input[type="text"], input[type="tel"], input[type="checkbox"], input[type="file"], input[type="hidden"], textarea');

                $fieldsArr.each(function(){

                    var nameField = $(this).attr('name').split('-')[0];
                    
                    var typeCheck = $(this).attr('name').split('-')[1];

                    var obligatoryField = $(this).attr('name').split('-')[2];

                    if (!nameField || !typeCheck || !obligatoryField) {

                        self.errors = ['Что-то пошло не так! (Имя не соответствует формату проверки)'];

                        return false;
                    }

                    switch(nameField) {

                        case 'fio':
        
                            nameField = 'ФИО';
            
                            break;
                    
                        case 'phone':
            
                            nameField = 'Телефон';
            
                            break;

                        case 'file':
    
                            nameField = 'Резюме';
            
                            break;

                        default:

                            break;
                    }

                    if (obligatoryField === '*') {

                        if ($(this).val() === '') {

                            self.errors.push('Поле "' + nameField + '" обязательно для заполнения!');
                        }
                    }

                    switch(typeCheck) {

                        case 'phone':
            
                            self.checkPhone($(this).val(), nameField);
            
                            break;
            
                        case 'captcha':
            
                            self.checkCaptcha($(this));
            
                            break;
            
                        case 'string':
            
                            self.checkString($(this).val(), nameField);
            
                            break;

                        case 'text':
            
                            self.checkText($(this).val(), nameField);
            
                            break;
            
                        case 'email':
            
                            self.checkEmail($(this).val(), nameField);
            
                            break;

                        case 'file':
            
                            self.checkFile(this.files[0], nameField);
            
                            break;
                        
                        default:
            
                            self.errors = ['Что-то пошло не так, обновите страницу! (Не соответствие типа проверки)'];
            
                            return false;
            
                            break;
                    }
                });

                if (self.errors.length){

                    self.getMsg();
                }
                else {

                    var data = new FormData();

                    $fieldsArr.each(function(){

                        if ($(this).attr('type') === 'file') {

                            data.append($(this).attr('name'), this.files[0]);
                        }
                        else {

                            data.append($(this).attr('name'), $(this).val());
                        }
                    });
                    
                    $form.find('.vakansii-single-page__send-form-btn').addClass('vakansii-single-page__send-form-btn_load');
                    
                    $.ajax({

                        type: 'POST',
                        url: '/wp-content/themes/zoomir/ajax/form-validator.php',
                        data: data,
                        cache: false,
                        dataType: 'json',
                        processData: false,
                        contentType: false,
                        success:  function(response) {

                            $form.find('.vakansii-single-page__send-form-btn').removeClass('vakansii-single-page__send-form-btn_load');
            
                            if (response) {
            
                                self.errors = response;
                            }
            
                            self.getMsg();
                        }    
                    });
                }
            }
        // Валидация формы КОНЕЦ

        // Конструктор формы

            $form.find('.vakansii-single-page__send-form-item input[type="tel"]').mask("+7(999) 999 - 99 - 99", {autoclear: false});

            $form.find('.vakansii-single-page__send-form-btn').on('click', function(event){

                event.preventDefault();

                $form.submit();
            });

            $form.on('submit', function(){

                self.validate();

                return false;
            });
        // Конструктор формы КОНЕЦ
    }

    $('.vakansii-single-page__send-form form').each((index, element) => {
        new formValidator($(element));
    });
});