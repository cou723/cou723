MyTemplateScripts
code:driedSweetPotate.js
  (function() {
    return `
 #干し芋
  価格

   想定用途
  懸念点と改善策

  理由

  候補
   `
   })()


code:daily.js
 (function() {
    const today = new Date()
    const year = today.getFullYear()
    const month = ("0"+(today.getMonth() + 1)).slice(-2)
    const date = ("0"+(today.getDate()+1)).slice(-2)
    const thisWeek = Math.floor(date / 7) + 1
    const lastWeek = thisWeek - 1
    const nextWeek = thisWeek + 1

    return `${year}_${month}_${date}
 #daily
  良かったこと
  反省点
  次に生かすこと
 `
   })()
