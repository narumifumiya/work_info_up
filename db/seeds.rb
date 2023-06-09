# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# 管理者
Admin.create!(
  email: 'admin@admin',
  password: '000000'
  )
# 部署
Department.create!(
  [
    {name: '第一営業部'},
    {name: '第二営業部'},
    {name: '第三営業部'},
    {name: '第四営業部'}
  ]
)
# ユーザー
User.create!(
  [
    {name: '令和一郎', name_kana: 'レイワイチロウ',email: 'test1@example', password: "000000", phone_number: '090-1111-1111', position: '社長', profile_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/user1.png"), filename:"user1.png")},
    {name: '平成太郎', name_kana: 'ヘイセイタロウ',email: 'test2@example', password: "000000", phone_number: '090-2222-2222', position: '部長', department_id: 1, profile_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/user2.png"), filename:"user2.png")},
    {name: '昭和吾郎', name_kana: 'ショウワゴロウ',email: 'test3@example', password: "000000", phone_number: '090-3333-3333', position: '部長', department_id: 2, profile_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/user2.png"), filename:"user2.png")},
    {name: '大正明美', name_kana: 'タイショウアケミ',email: 'test4@example', password: "000000", phone_number: '090-4444-4444', position: '部長', department_id: 3, profile_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/user4.png"), filename:"user4.png")},
    {name: '明治かなこ', name_kana: 'メイジカナコ',email: 'test5@example', password: "000000", phone_number: '090-5555-5555', position: '部長', department_id: 4, profile_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/user5.png"), filename:"user5.png")},
    {name: '佐藤次郎', name_kana: 'サトウジロウ',email: 'test6@example', password: "000000", phone_number: '090-6666-6666', position: '主任', department_id: 1, profile_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/user3.png"), filename:"user3.png")},
    {name: '田中三郎', name_kana: 'タナカサブロウ',email: 'test7@example', password: "000000", phone_number: '090-7777-7777', position: '主任', department_id: 2, profile_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/user3.png"), filename:"user3.png")},
    {name: '山田花子', name_kana: 'ヤマダハナコ',email: 'test8@example', password: "000000", phone_number: '090-8888-8888', position: '主任', department_id: 3, profile_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/user4.png"), filename:"user4.png")},
    {name: '鈴木夏子', name_kana: 'スズキナツコ',email: 'test9@example', password: "000000", phone_number: '090-9999-9999', position: '主任', department_id: 4, profile_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/user5.png"), filename:"user5.png")},
    {name: '山本隆夫', name_kana: 'ヤマモトタカオ',email: 'test10@example', password: "000000", phone_number: '090-1010-1010', department_id: 1, profile_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/user3.png"), filename:"user3.png")},
    {name: '伊藤純一', name_kana: 'イトウジュンイチ',email: 'test11@example', password: "000000", phone_number: '090-1011-1111', department_id: 2, profile_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/user3.png"), filename:"user3.png")},
    {name: '中村秋子', name_kana: 'ナカムラアキコ',email: 'test12@example', password: "000000", phone_number: '090-1212-1212', department_id: 3, profile_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/user5.png"), filename:"user5.png")},
    {name: '佐々木一', name_kana: 'ササキハジメ',email: 'test13@example', password: "000000", phone_number: '090-1313-1313', department_id: 4, profile_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/user3.png"), filename:"user3.png")},
    {name: '斉藤春男', name_kana: 'サイトウハルオ',email: 'test14@example', password: "000000", phone_number: '090-1414-1414', department_id: 1, profile_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/user3.png"), filename:"user3.png")},
    {name: '夏河北世', name_kana: 'ナツガキタヨ',email: 'test15@example', password: "000000", phone_number: '090-1515-1515', department_id: 2, profile_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/user3.png"), filename:"user3.png")},
    {name: '秋風涼代', name_kana: 'アキカゼスズヨ',email: 'test16@example', password: "000000", phone_number: '090-1616-1616', department_id: 3, profile_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/user5.png"), filename:"user5.png")},
    {name: '冬波寒志', name_kana: 'フユワサムシ',email: 'test17@example', password: "000000", phone_number: '090-1717-1717', department_id: 4, profile_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/user3.png"), filename:"user3.png")}
  ]
)
# 得意先
Company.create!(
  [
    {name: '株式会社令和一番'},
    {name: '平成建設商事株式会社'},
    {name: '昭和電設資材株式会社'},
    {name: '大正湯屋株式会社'},
    {name: '株式会社明治電気'},
    {name: '慶応書店株式会社'},
    {name: '元治スポーツ株式会社'},
    {name: '文久電設株式会社'},
    {name: '万延テクノ株式会社'},
    {name: '株式会社拉麺'},
    {name: '株式会社蕎麦'},
    {name: '株式会社curry'},
    {name: '株式会社炒飯'},
  ]
)
# 事業所
Office.create!(
  [
    {company_id: 1, name: '本社', phone_number: '00-0000-0000',postcode: "107-0052",prefecture_code: 13,address_city: "港区赤坂９丁目７− 39",latitude: 35.6646311,longitude: 139.7310087},
    {company_id: 1, name: '豊島営業所', phone_number: '00-0000-0000', postcode: "171-0022",prefecture_code: 13,address_city: "豊島区南池袋１丁目",latitude: 35.7275147,longitude: 139.7109231},
    {company_id: 1, name: '神奈川支店', phone_number: '00-0000-0000',postcode: "220-0011",prefecture_code: 14,address_city: "横浜市西区高島２丁目",latitude: 35.4645388,longitude: 139.6235333},
    {company_id: 2, name: '札幌本社', phone_number: '00-0000-0000', postcode: "060-0806",prefecture_code: 1,address_city: "札幌市北区北六条西４丁目", latitude: 43.0685839,longitude: 141.3492257},
    {company_id: 2, name: '旭川支店', phone_number: '00-0000-0000', postcode: "070-0030",prefecture_code: 1,address_city: "旭川市宮下通８丁目３",latitude: 43.7623232,longitude: 142.3579382},
    {company_id: 2, name: '函館支店', phone_number: '00-0000-0000', postcode: "040-0063",prefecture_code: 1,address_city: "函館市若松町１２",latitude: 41.7728642,longitude: 140.7279842},
    {company_id: 3, name: '本社', phone_number: '00-0000-0000', postcode: "310-0015 ",prefecture_code: 8,address_city: "水戸市宮１丁目１−１",latitude: 36.371319,longitude: 140.474097},
    {company_id: 3, name: '群馬支社', phone_number: '00-0000-0000', postcode: "371-0024",prefecture_code: 10,address_city: "前橋市表町２丁目２９",latitude: 36.3834746,longitude: 139.0727145},
    {company_id: 3, name: '栃木支社', phone_number: '00-0000-0000', postcode: "321-0965",prefecture_code: 9,address_city: "宇都宮市川向町１−２３",latitude: 36.5608166,longitude: 139.8981756},
  ]
)
# 顧客
Customer.create!(
  [
    {company_id: 1, name: 'テストカスタマーA', phone_number: '000-0000-0000', email: 'test@test', position: '課長', department: '工事部', customer_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/customer1.png"), filename:"customer1.png")},
    {company_id: 1, name: 'テストカスタマーB', phone_number: '000-0000-0000', email: 'test@test', position: '主任', department: '工事部', customer_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/customer2.png"), filename:"customer2.png")},
    {company_id: 1, name: 'テストカスタマーC', phone_number: '000-0000-0000', email: 'test@test', department: '工事部', customer_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/customer3.png"), filename:"customer3.png")},
    {company_id: 2, name: 'テストカスタマーD', phone_number: '000-0000-0000', email: 'test@test', position: '課長', department: '工事部', customer_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/customer1.png"), filename:"customer1.png")},
    {company_id: 2, name: 'テストカスタマーE', phone_number: '000-0000-0000', email: 'test@test', position: '主任', department: '工事部', customer_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/customer2.png"), filename:"customer2.png")},
    {company_id: 2, name: 'テストカスタマーF', phone_number: '000-0000-0000', email: 'test@test', department: '工事部', customer_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/customer3.png"), filename:"customer3.png")},
    {company_id: 3, name: 'テストカスタマーG', phone_number: '000-0000-0000', email: 'test@test', position: '課長', department: '工事部', customer_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/customer1.png"), filename:"customer1.png")},
    {company_id: 3, name: 'テストカスタマーH', phone_number: '000-0000-0000', email: 'test@test', position: '主任', department: '工事部', customer_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/customer2.png"), filename:"customer2.png")},
    {company_id: 3, name: 'テストカスタマーI', phone_number: '000-0000-0000', email: 'test@test', department: '工事部', customer_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/customer3.png"), filename:"customer3.png")},
  ]
)
# プロジェクト
Project.create!(
  [
    {company_id: 1, user_id: 10, name: '千葉支店新築工事',start_date: 'Mon, 01 May 2023', end_date: 'Sun, 30 Jun 2024', introduction: '現場は千葉駅から徒歩5分になります', contract_amount: '20000000',order_status: "ordered", progress_status: "not_started_yet" },
    {company_id: 1, user_id: 10, name: '新宿区マンション新築工事',start_date: 'un, 01 Oct 2023', end_date: 'Mon, 30 Jun 2025', introduction: '施主からの推薦有り',order_status: "under_negotiation", progress_status: "not_started_yet" },
    {company_id: 1, user_id: 10, name: '某マンション改修工事',start_date: 'Tue, 01 Aug 2023', end_date: 'Sun, 31 Dec 2023', introduction: '積算見積り中です',order_status: "under_negotiation", progress_status: "not_started_yet" },
    {company_id: 2, user_id: 7, name: '札幌マンション新築工事',start_date: 'Sun, 01 May 2022', end_date: 'Sun, 30 Apr 2023', introduction: '終了しました', contract_amount: '10000000',order_status: "ordered", progress_status: "completion" },
    {company_id: 2, user_id: 7, name: '某駅前修繕工事',start_date: 'Wed, 01 Mar 2023', end_date: 'Tue, 31 Oct 2023', introduction: '失注しました',order_status: "lost_orders", progress_status: "not_started_yet" },
    {company_id: 2, user_id: 11, name: '札幌市遊園地新築工事',start_date: 'Fri, 01 Mar 2024', end_date: 'Tue, 31 Mar 2026', introduction: '受注濃厚です',order_status: "under_negotiation", progress_status: "not_started_yet" },
    {company_id: 3, user_id: 8, name: '某工場新築工事',start_date: 'Sun, 30 Apr 2023', end_date: 'Mon, 31 Jul 2023', introduction: '完成までもう少しです', contract_amount: '30000000',order_status: "ordered", progress_status: "while_working" },
    {company_id: 3, user_id: 8, name: '某公園修繕工事',start_date: 'Mon, 01 May 2023', end_date: 'Mon, 31 Jul 2023', introduction: '失注しました',order_status: "lost_orders", progress_status: "not_started_yet" },
    {company_id: 3, user_id: 12, name: '某マンション新築工事',start_date: 'Mon, 01 Jan 2024', end_date: 'Mon, 31 Mar 2025', introduction: '今月中に受注が決まりそうです',order_status: "under_negotiation", progress_status: "not_started_yet" }
  ]
)
# いいね
Favorite.create!(
  [
    {project_id: 1, user_id: 2},
    {project_id: 2, user_id: 2},
    {project_id: 4, user_id: 3},
    {project_id: 6, user_id: 3},
    {project_id: 6, user_id: 7},
    {project_id: 7, user_id: 4},
    {project_id: 9, user_id: 4},
    {project_id: 9, user_id: 8},
  ]
)
# コメント
ProjectComment.create!(
  [
    {project_id: 2, user_id: 2, comment: "受注出来そうですか？"},
    {project_id: 2, user_id: 10, comment: "来週中に決まりそうです"},
    {project_id: 4, user_id: 3, comment: "工事終了お疲れ様です"},
    {project_id: 6, user_id: 3, comment: "営業へ行く際は私も同行しますので、お声がけ下さい"},
    {project_id: 6, user_id: 7, comment: "手伝えることがあれば言って下さい"},
    {project_id: 7, user_id: 4, comment: "作業は順調ですか？"},
    {project_id: 9, user_id: 4, comment: "良いですね！"},
    {project_id: 9, user_id: 8, comment: "この調子で頑張ってください！"},
  ]
)
# 通知
Notification.create!(
  [
    {visitor_id: 2, visited_id: 10, project_id: 1,action: "favorite" ,checked: false },
    {visitor_id: 2, visited_id: 10, project_id: 2,action: "favorite" ,checked: false },
    {visitor_id: 2, visited_id: 10, project_id: 2, project_comment_id: 1,action: "comment" ,checked: false },
    {visitor_id: 10, visited_id: 2, project_id: 2, project_comment_id: 2,action: "comment" ,checked: false },
    {visitor_id: 10, visited_id: 10, project_id: 2, project_comment_id: 2,action: "comment" ,checked: true },
    {visitor_id: 3, visited_id: 7, project_id: 4,action: "favorite" ,checked: false },
    {visitor_id: 3, visited_id: 7, project_id: 4, project_comment_id: 3, action: "comment" ,checked: false },
    {visitor_id: 3, visited_id: 11, project_id: 6,action: "favorite" ,checked: false },
    {visitor_id: 3, visited_id: 11, project_id: 6, project_comment_id: 4,action: "comment" ,checked: false },
    {visitor_id: 7, visited_id: 11, project_id: 6,action: "favorite" ,checked: false },
    {visitor_id: 7, visited_id: 3, project_id: 6, project_comment_id: 5, action: "comment" ,checked: false },
    {visitor_id: 7, visited_id: 11, project_id: 6, project_comment_id: 5, action: "comment" ,checked: false },
    {visitor_id: 4, visited_id: 8, project_id: 7,action: "favorite" ,checked: false },
    {visitor_id: 4, visited_id: 8, project_id: 7, project_comment_id: 6,action: "comment" ,checked: false },
    {visitor_id: 4, visited_id: 12, project_id: 9,action: "favorite" ,checked: false },
    {visitor_id: 4, visited_id: 12, project_id: 9, project_comment_id: 7,action: "comment" ,checked: false },
    {visitor_id: 8, visited_id: 12, project_id: 9,action: "favorite" ,checked: false },
    {visitor_id: 8, visited_id: 4, project_id: 9, project_comment_id: 8,action: "comment" ,checked: false },
    {visitor_id: 8, visited_id: 12, project_id: 9, project_comment_id: 8,action: "comment" ,checked: false },
    {visitor_id: 2, visited_id: 2,action: "join" ,checked: true, group_id: 1 },
    {visitor_id: 3, visited_id: 2,action: "join" ,checked: false, group_id: 1 },
    {visitor_id: 3, visited_id: 3,action: "join" ,checked: true, group_id: 1 },
    {visitor_id: 4, visited_id: 2,action: "join" ,checked: false, group_id: 1 },
    {visitor_id: 4, visited_id: 3,action: "join" ,checked: false, group_id: 1 },
    {visitor_id: 4, visited_id: 4,action: "join" ,checked: true, group_id: 1 },
    {visitor_id: 5, visited_id: 2,action: "join" ,checked: false, group_id: 1 },
    {visitor_id: 5, visited_id: 3,action: "join" ,checked: false, group_id: 1 },
    {visitor_id: 5, visited_id: 4,action: "join" ,checked: false, group_id: 1 },
    {visitor_id: 5, visited_id: 5,action: "join" ,checked: true, group_id: 1 },
    {visitor_id: 10, visited_id: 10,action: "join" ,checked: true, group_id: 2 },
    {visitor_id: 11, visited_id: 10,action: "join" ,checked: false, group_id: 2 },
    {visitor_id: 11, visited_id: 11,action: "join" ,checked: true, group_id: 2 },
    {visitor_id: 12, visited_id: 10,action: "join" ,checked: false, group_id: 2 },
    {visitor_id: 12, visited_id: 11,action: "join" ,checked: false, group_id: 2 },
    {visitor_id: 12, visited_id: 12,action: "join" ,checked: true, group_id: 2 },
    {visitor_id: 13, visited_id: 10,action: "join" ,checked: false, group_id: 2 },
    {visitor_id: 13, visited_id: 11,action: "join" ,checked: false, group_id: 2 },
    {visitor_id: 13, visited_id: 12,action: "join" ,checked: false, group_id: 2 },
    {visitor_id: 13, visited_id: 13,action: "join" ,checked: true, group_id: 2 },
    {visitor_id: 2, visited_id: 2,action: "chat" ,checked: true, chat_id: 1, group_id: 1 },
    {visitor_id: 2, visited_id: 3,action: "chat" ,checked: false, chat_id: 1, group_id: 1 },
    {visitor_id: 2, visited_id: 4,action: "chat" ,checked: false, chat_id: 1, group_id: 1 },
    {visitor_id: 2, visited_id: 5,action: "chat" ,checked: false, chat_id: 1, group_id: 1 },
    {visitor_id: 4, visited_id: 2,action: "chat" ,checked: false, chat_id: 2, group_id: 1 },
    {visitor_id: 4, visited_id: 3,action: "chat" ,checked: false, chat_id: 2, group_id: 1 },
    {visitor_id: 4, visited_id: 4,action: "chat" ,checked: true, chat_id: 2, group_id: 1 },
    {visitor_id: 4, visited_id: 5,action: "chat" ,checked: false, chat_id: 2, group_id: 1 },
    {visitor_id: 2, visited_id: 2,action: "chat" ,checked: true, chat_id: 3, group_id: 1 },
    {visitor_id: 2, visited_id: 3,action: "chat" ,checked: false, chat_id: 3, group_id: 1 },
    {visitor_id: 2, visited_id: 4,action: "chat" ,checked: false, chat_id: 3, group_id: 1 },
    {visitor_id: 2, visited_id: 5,action: "chat" ,checked: false, chat_id: 3, group_id: 1 },
    {visitor_id: 3, visited_id: 2,action: "chat" ,checked: false, chat_id: 4, group_id: 1 },
    {visitor_id: 3, visited_id: 3,action: "chat" ,checked: true, chat_id: 4, group_id: 1 },
    {visitor_id: 3, visited_id: 4,action: "chat" ,checked: false, chat_id: 4, group_id: 1 },
    {visitor_id: 3, visited_id: 5,action: "chat" ,checked: false, chat_id: 4, group_id: 1 },
    {visitor_id: 5, visited_id: 2,action: "chat" ,checked: false, chat_id: 5, group_id: 1 },
    {visitor_id: 5, visited_id: 3,action: "chat" ,checked: false, chat_id: 5, group_id: 1 },
    {visitor_id: 5, visited_id: 4,action: "chat" ,checked: false, chat_id: 5, group_id: 1 },
    {visitor_id: 5, visited_id: 5,action: "chat" ,checked: true, chat_id: 5, group_id: 1 },
    {visitor_id: 10, visited_id: 10,action: "chat" ,checked: true, chat_id: 6, group_id: 2 },
    {visitor_id: 10, visited_id: 11,action: "chat" ,checked: false, chat_id: 6, group_id: 2 },
    {visitor_id: 10, visited_id: 12,action: "chat" ,checked: false, chat_id: 6, group_id: 2 },
    {visitor_id: 10, visited_id: 13,action: "chat" ,checked: false, chat_id: 6, group_id: 2 },
    {visitor_id: 11, visited_id: 10,action: "chat" ,checked: false, chat_id: 7, group_id: 2 },
    {visitor_id: 11, visited_id: 11,action: "chat" ,checked: true, chat_id: 7, group_id: 2 },
    {visitor_id: 11, visited_id: 13,action: "chat" ,checked: false, chat_id: 7, group_id: 2 },
    {visitor_id: 12, visited_id: 10,action: "chat" ,checked: false, chat_id: 8, group_id: 2 },
    {visitor_id: 12, visited_id: 11,action: "chat" ,checked: false, chat_id: 8, group_id: 2 },
    {visitor_id: 12, visited_id: 12,action: "chat" ,checked: true, chat_id: 8, group_id: 2 },
    {visitor_id: 12, visited_id: 13,action: "chat" ,checked: false, chat_id: 8, group_id: 2 },
    {visitor_id: 13, visited_id: 10,action: "chat" ,checked: false, chat_id: 9, group_id: 2 },
    {visitor_id: 13, visited_id: 11,action: "chat" ,checked: false, chat_id: 9, group_id: 2 },
    {visitor_id: 13, visited_id: 12,action: "chat" ,checked: false, chat_id: 9, group_id: 2 },
    {visitor_id: 13, visited_id: 13,action: "chat" ,checked: true, chat_id: 9, group_id: 2 },
    {visitor_id: 11, visited_id: 10,action: "chat" ,checked: false, chat_id: 10, group_id: 2 },
    {visitor_id: 11, visited_id: 11,action: "chat" ,checked: true, chat_id: 10, group_id: 2 },
    {visitor_id: 11, visited_id: 12,action: "chat" ,checked: false, chat_id: 10, group_id: 2 },
    {visitor_id: 11, visited_id: 13,action: "chat" ,checked: false, chat_id: 10, group_id: 2 },
    {visitor_id: 10, visited_id: 10,action: "chat" ,checked: true, chat_id: 11, group_id: 2 },
    {visitor_id: 10, visited_id: 11,action: "chat" ,checked: false, chat_id: 11, group_id: 2 },
    {visitor_id: 10, visited_id: 12,action: "chat" ,checked: false, chat_id: 11, group_id: 2 },
    {visitor_id: 10, visited_id: 13,action: "chat" ,checked: false, chat_id: 11, group_id: 2 },
    {visitor_id: 10, visited_id: 10,action: "chat" ,checked: true, chat_id: 12, group_id: 2 },
    {visitor_id: 10, visited_id: 11,action: "chat" ,checked: false, chat_id: 12, group_id: 2 },
    {visitor_id: 10, visited_id: 12,action: "chat" ,checked: false, chat_id: 12, group_id: 2 },
    {visitor_id: 10, visited_id: 13,action: "chat" ,checked: false, chat_id: 12, group_id: 2 },
  ]
)
# グループ
Group.create!(
  [
    {name: '部長会', introduction: '各営業部の情報交換をしましょう！', owner_id: 2},
    {name: '若手会', introduction: '入社１〜３年目社員専用', owner_id: 10}
  ]
)
# グループユーザー
GroupUser.create!(
  [
    {user_id: 2, group_id: 1},
    {user_id: 3, group_id: 1},
    {user_id: 4, group_id: 1},
    {user_id: 5, group_id: 1},
    {user_id: 10, group_id: 2},
    {user_id: 11, group_id: 2},
    {user_id: 12, group_id: 2},
    {user_id: 13, group_id: 2},
  ]
)
# チャット
Chat.create!(
  [
    {user_id: 2, group_id: 1, message: '第一営業部では今月の予算達成が厳しい見込みです。'},
    {user_id: 4, group_id: 1, message: '第三営業部で売上を大幅に超える予定ですので、補填可能です。'},
    {user_id: 2, group_id: 1, message: '大正さん、ありがとうございます。'},
    {user_id: 3, group_id: 1, message: '第二営業部は予定通りです。'},
    {user_id: 5, group_id: 1, message: '第四営業部も予定通りとなります。'},
    {user_id: 10, group_id: 2, message: '勉強会をしませんか？'},
    {user_id: 11, group_id: 2, message: '良いですね！やりましょう。'},
    {user_id: 12, group_id: 2, message: '金曜日の午後は予定が空いています。'},
    {user_id: 13, group_id: 2, message: '金曜日は１５時から参加可能です。'},
    {user_id: 11, group_id: 2, message: '私も金曜日の午後は大丈夫です。'},
    {user_id: 10, group_id: 2, message: 'それでは金曜日の１５時からにしたいと思います。'},
    {user_id: 10, group_id: 2, message: '場所は多目的ルームでお願いします。'},
  ]
)
# タグ
Tag.create!(
  [
    {tag_name: 'マンション'},
    {tag_name: '社屋'},
    {tag_name: '札幌'},
    {tag_name: '工場'},
    {tag_name: '公園'}
  ]
)
# タグの中間テーブル
ProjectTag.create!(
  [
    {project_id: 2, tag_id: 1},
    {project_id: 3, tag_id: 1},
    {project_id: 1, tag_id: 2},
    {project_id: 4, tag_id: 1},
    {project_id: 4, tag_id: 3},
    {project_id: 6, tag_id: 3},
    {project_id: 7, tag_id: 4},
    {project_id: 8, tag_id: 5},
    {project_id: 9, tag_id: 1}
  ]
)