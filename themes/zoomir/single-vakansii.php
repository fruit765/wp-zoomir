<?php get_header(); ?>
    <?php if (have_posts()) { the_post(); ?>
        <div class="vakansii-single-page">
            <div class="vakansii-single-page__about">
                <div class="vakansii-single-page__about-text">
                    <div class="vakansii-single-page__about-text-title">
                        <?php the_title(); ?>
                    </div>
                    <div class="vakansii-single-page__about-text-table">
                        <?php the_content(); ?>
                    </div>
                </div>
                <div class="vakansii-single-page__about-phone">
                    <div class="vakansii-single-page__about-phone-left">
                        Вы можете обратиться по телефону
                    </div>
                    <div class="vakansii-single-page__about-phone-right">
                        +7 928 420 06 69
                    </div>
                </div>
            </div>
            <div class="vakansii-single-page__send">
                <div class="vakansii-single-page__send-title">
                    Или сразу отправить нам резюме
                </div>
                <div class="vakansii-single-page__send-form">
                    <form>
                        <div class="vakansii-single-page__send-form-item">
                            <input type="text" name="fio-string-*" placeholder="ФИО">
                        </div>
                        <div class="vakansii-single-page__send-form-item">
                            <input type="tel" name="phone-phone-*" placeholder="+7(999) 999 - 99 - 99">
                        </div>
                        <div class="vakansii-single-page__send-form-item">
                            <input type="file" name="file-file-*" id="send-file-id" required>
                            <label for="send-file-id">Прикрепить резюме</label>
                        </div>
                        <input type="hidden" name="subject-string-*" value="Заявка на обратный звонок">
                        <div class="vakansii-single-page__send-form-message"></div>
                        <div class="vakansii-single-page__send-form-item vakansii-single-page__send-form-item_btn">
                            <button class="vakansii-single-page__send-form-btn btn">Отправить</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    <?php } ?>
<?php get_footer(); ?>