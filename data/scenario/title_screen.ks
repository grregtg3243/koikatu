[_tb_system_call storage=system/_title_screen.ks]

[hidemenubutton]

[tb_clear_images]

[tb_keyconfig  flag="0"  ]
[tb_hide_message_window  ]
*title

[tb_start_tyrano_code]
[iscript]
// ここはJavaScriptのルールで書く
tf.random_num = Math.floor(Math.random() * 10);
tf.bg_name = "bg_" + tf.random_num + ".jpg";
[endscript]

[bg storage="&tf.bg_name" time="300"]
[_tb_end_tyrano_code]

[glink  color="btn_09_yellow"  text="はじめから"  x="295"  y="474"  size="20"  target="*start"  width="685"  height="55"  _clickable_img=""  ]
[glink  color="btn_09_purple"  text="続きから"  x="295"  y="550"  size="20"  target="*load"  width="685"  height="55"  _clickable_img=""  ]
[glink  color="btn_24_green"  storage="title_screen.ks"  size="20"  target="*en"  text="English"  x="1110"  y="560"  width=""  height=""  _clickable_img=""  ]
[glink  color="btn_24_green"  storage="title_screen.ks"  size="20"  target="*jp"  text="日本語"  x="1110"  y="635"  width=""  height=""  _clickable_img=""  ]
[s  ]
*start

[cm  ]
[tb_keyconfig  flag="1"  ]
[jump  storage="scene1.ks"  target=""  ]
[s  ]

;--------ロードが押された時の処理


*load

[cm  ]
[showload]

[jump  target="*title"  storage=""  ]
[s  ]
*en

[tb_lang_set  name="en"  ]
[jump  storage="title_screen.ks"  target="*title"  ]
[s  ]
*jp

[tb_lang_set  name="default"  ]
[jump  storage="title_screen.ks"  target="*title"  ]
[s  ]
