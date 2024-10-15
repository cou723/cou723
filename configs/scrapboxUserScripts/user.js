addTemplateItemsToPageMenu()

 function addTemplateItemsToPageMenu() {

    // テンプレートメニューの定義ここから ---------- 下の解説を見てね！！ ----------
    const __templates = [
      { title: '📄 日記テンプレート', template: '/api/code/myproject-20240923/MyTemplateScripts/daily.js' },
      { title: '🍠 干し芋テンプレート', template: '/api/code/myproject-20240923/MyTemplateScripts/driedSweetPotate.js' }
    ]
    // テンプレートメニューの定義ここまで ----------

    const __templMenuTitle = 'Templates'
    scrapbox.PageMenu.addMenu({ title: __templMenuTitle, image: '/assets/img/logo.png', onClick: () => { } })
    __templates.forEach((i) => {
        scrapbox.PageMenu(__templMenuTitle).addItem({
            title: i.title,
            onClick: () => { __loadTemplate(i.template) }})
    })
    var __loadTemplate = function (templateUrl) {
      if (scrapbox.Page.lines && scrapbox.Page.lines.length == 1) {

        // タイトル行をクリックしたことにする
        const line = document.getElementById('L' + scrapbox.Page.lines[0].id)
        const lastChar = line.querySelector('span.char-index:last-of-type')
        const textarea = document.getElementById('text-input')
        lastChar.dispatchEvent(new MouseEvent('click', {bubbles: true, cancelable: true}))
        textarea.dispatchEvent(new KeyboardEvent('keydown', {bubbles: true, cancelable: true, keyCode: 35}))

        // テンプレートを読み込む
        $('#text-input').load(templateUrl, function (response, status, xhr) {
          if (status == "success") {
            try {
              // 読み込んだテンプレートをテキストエリアにセットしまして
              textarea.value = /\.js$/.test(templateUrl) ? eval(response) : response

              // テキストエリアのinputイベントを出しまして
              textarea.dispatchEvent(new InputEvent('input', {bubbles: true, cancelable: true}))
            } catch (ex) {
              console.log("だめでした>< \n" + ex)
            }
          } else {
            console.log("だめでした>< \n" + status)
          }
        })
      }
    }
  }