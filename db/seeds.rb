# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Sex.create!(
  [
    {
      sex: "男性"
    },
    {
      sex: "女性"
    }
  ])

Birthplace.create!(
  [
    {
      cuntry: "日本"
    },
    {
      cuntry: "アメリカ"
    },
    {
      cuntry: "その他"
    }
  ])

Prefecture.create!(
  [
    {
      prefecture: "北海道"
    },
    {
      prefecture: "青森"
    },
    {
      prefecture: "岩手"
    },
    {
      prefecture: "宮城"
    },
    {
      prefecture: "秋田"
    },
    {
      prefecture: "山形"
    },
    {
      prefecture: "福島"
    },
    {
      prefecture: "茨城"
    },
    {
      prefecture: "栃木"
    },
    {
      prefecture: "群馬"
    },
    {
      prefecture: "埼玉"
    },
    {
      prefecture: "千葉"
    },
    {
      prefecture: "東京"
    },
    {
      prefecture: "神奈川"
    },
    {
      prefecture: "新潟"
    },
    {
      prefecture: "富山"
    },
    {
      prefecture: "石川"
    },
    {
      prefecture: "福井"
    },
    {
      prefecture: "山形"
    },
    {
      prefecture: "長野"
    },
    {
      prefecture: "岐阜"
    },
    {
      prefecture: "静岡"
    },
    {
      prefecture: "愛知"
    },
    {
      prefecture: "三重"
    },
    {
      prefecture: "滋賀"
    },
    {
      prefecture: "京都"
    },
    {
      prefecture: "大阪"
    },
    {
      prefecture: "兵庫"
    },
    {
      prefecture: "奈良"
    },
    {
      prefecture: "和歌山"
    },
    {
      prefecture: "島根"
    },
    {
      prefecture: "鳥取"
    },
    {
      prefecture: "岡山"
    },
    {
      prefecture: "広島"
    },
    {
      prefecture: "山口"
    },
    {
      prefecture: "徳島"
    },
    {
      prefecture: "香川"
    },
    {
      prefecture: "愛媛"
    },
    {
      prefecture: "高知"
    },
    {
      prefecture: "福岡"
    },
    {
      prefecture: "佐賀"
    },
    {
      prefecture: "長崎"
    },
    {
      prefecture: "熊本"
    },
    {
      prefecture: "大分"
    },
    {
      prefecture: "宮崎"
    },
    {
      prefecture: "鹿児島"
    },
    {
      prefecture: "沖縄"
    },
    {
      prefecture: "外国籍"
    }
  ])

Role.create!(
  [
    {
      position: "投手"
    },
    {
      position: "捕手"
    },
    {
      position: "内野手"
    },
    {
      position: "外野手"
    }
  ])

Booze.create!(
  [
    {
      which: "酒に強い"
    },
    {
      which: "酒の強さは普通"
    },
    {
      which: "酒に弱い"
    }
  ])

Manager.create!(
  [
    {
      name: "原辰徳"
    },
    {
      name: "工藤公康"
    },
    {
      name: "栗山英樹"
    },
    {
      name: "辻発彦"
    },
    {
      name: "井口資仁"
    },
    {
      name: "三木肇"
    },
    {
      name: "アレックスラミレス"
    },
    {
      name: "高津臣吾"
    },
    {
      name: "佐々岡真司"
    },
    {
      name: "矢野輝弘"
    },
    {
      name: "中島聡"
    },
    {
      name: "与田剛"
    }
  ])

Rival.create!(
  [
    {
      name: "読売ジャイアンツ"
    },
    {
      name: "阪神タイガース"
    },
    {
      name: "中日ドラゴンズ"
    },
    {
      name: "広島東洋カープ"
    },
    {
      name: "東京ヤクルトスワローズ"
    },
    {
      name: "横浜DeNAベイスターズ"
    },
    {
      name: "埼玉西武ライオンズ"
    },
    {
      name: "千葉ロッテマリーンズ"
    },
    {
      name: "福岡ソフトバンクホークス"
    },
    {
      name: "北海道日本ハムファイターズ"
    },
    {
      name: "オリックスバファローズ"
    },
    {
      name: "東北楽天ゴールデンイーグルス"
    },
    {
      name: "セリーグ全球団"
    },
    {
      name: "パリーグ全球団"
    },
    {
      name: "ライバルチームなし"
    }
  ])

Team.create!(
  [
    {
      name: "読売ジャイアンツ"
    },
    {
      name: "阪神タイガース"
    },
    {
      name: "中日ドラゴンズ"
    },
    {
      name: "広島東洋カープ"
    },
    {
      name: "東京ヤクルトスワローズ"
    },
    {
      name: "横浜DeNAベイスターズ"
    },
    {
      name: "埼玉西武ライオンズ"
    },
    {
      name: "千葉ロッテマリーンズ"
    },
    {
      name: "福岡ソフトバンクホークス"
    },
    {
      name: "北海道日本ハムファイターズ"
    },
    {
      name: "オリックスバファローズ"
    },
    {
      name: "東北楽天ゴールデンイーグルス"
    }
  ])

Affiliation.create!(
  [
    {
      team: "読売ジャイアンツ"
    },
    {
      team: "阪神タイガース"
    },
    {
      team: "中日ドラゴンズ"
    },
    {
      team: "広島東洋カープ"
    },
    {
      team: "東京ヤクルトスワローズ"
    },
    {
      team: "横浜DeNAベイスターズ"
    },
    {
      team: "埼玉西武ライオンズ"
    },
    {
      team: "千葉ロッテマリーンズ"
    },
    {
      team: "福岡ソフトバンクホークス"
    },
    {
      team: "北海道日本ハムファイターズ"
    },
    {
      team: "オリックスバファローズ"
    },
    {
      team: "東北楽天ゴールデンイーグルス"
    }
  ])

Favorite.create!(
  [
    {
      role: "投手"
    },
    {
      role: "捕手"
    },
    {
      role: "内野手"
    },
    {
      role: "外野手"
    }
  ])

Sake.create!(
  [
    {
      genre: "日本酒"
    },
    {
      genre: "ビール"
    },
    {
      genre: "発泡酒"
    },
    {
      genre: "焼酎"
    },
    {
      genre: "ワイン"
    },
    {
      genre: "ウイスキー"
    },
    {
      genre: "果実酒"
    },
    {
      genre: "蒸留酒"
    }
  ])





