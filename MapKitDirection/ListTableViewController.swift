//
//  ListTableViewController.swift
//  MapKitDirection
//
//  Created by 褚宣德 on 2017/6/21.
//  Copyright © 2017年 AppCoda. All rights reserved.
//

import UIKit

var pets = ["北門黃昏市場", "宜蘭醫院", "舊台灣銀行","設治紀念館","舊監獄","宜蘭酒廠","化龍一村","南館市場","舊宜蘭煙草賣捌所","基督教長老教會","宜蘭郵局","打鐵街","中山國小","宜蘭國小","獻馘碑","鐵路宿舍","楊士芳林園","潘宅古井","舊穀倉","第一銀行","舊農校長宿舍","老樹群"]
var petDesc = ["攤販的食品大部分是鄉民飲食所需的魚、肉、海鮮、蔬果、麵攤、各式小吃。每當午後斜陽消失在街道時，這裡便擠滿了購物買菜的人潮，對於大部分的鄉民而言，黃昏市場不僅是一個歷史的記憶，也是現實生活的一部分。市場內外仍有多家具有特色的傳統老店，販賣各式的鄉村美食提供顧客購食。",
               "1895年，日本政府為了台灣東北部的統治殖民力的需要，在台北縣宜蘭支廳設置西式診療所，名為宜蘭醫院，直屬台灣總督府，為該院的前身。1945年，國民政府接收宜蘭醫院，改制成台灣省立宜蘭醫院，直屬於台灣省行政長官公署民政處衛生局。2000年，經臺灣省政府功能業務與組織調整後，改制行政院衛生署宜蘭醫院。2008年，宜蘭醫院改制為國立陽明大學附設醫院。",
               "1906年因原位於東門街舊行舍空間不足，因而於南門現址新建新式出張所，採用當時日本常用的西方歷史建築語彙設計，1928年正式升格為「台灣銀行宜蘭支店。宜蘭分行重建，1949年，國民政府撥遷來台後計畫進行重建，外觀形式簡潔、均衡對稱，以平頂及窗帶強調水平之連續性，屬初期現代建築風格，是現今少數留存的戰後代表性建築。",
               "每週二至週日上午9：00至下午5：00開放參觀。全票30元，優待票20，設籍宜蘭或老人跟110公分以下的孩童還免費喔！團體還可以預約導覽呢！想了解宜蘭發展的歷史過程嗎?趕快進來一探究竟，感受人與歷史的交會吧!",
               "舊宜蘭監獄，現為藍屋餐廳，宜蘭監獄在民國前十四年設立，已經有百年歷史，自1896年日本政府在此處建造，名叫「台北刑務所宜蘭支所」，1947年後改名「台灣宜蘭監獄」，一直沿用到今日。",
               "宜蘭酒廠為民國前2年宜蘭士紳林青雲所設立，酒泉採自阿蘭城的蘭陽第一井，專門生產紅露酒。宜蘭紅露酒曾獲世界評鑑銀牌獎，最富營養價值的酒類，加了酒香的冰棒是宜蘭酒廠（宜蘭市舊城西路）新推出的搶手小吃，甲子蘭酒文物館，展示各種古代酒器，源自福建安溪的老紅酒。鄭成功收復台灣後，因懷念故鄉而在台釀製，宜蘭酒廠釀製紅露酒迄今已90，堪稱出產紅露酒的重鎮。日據時歸總督府專賣，光復後由公賣局接收，當時僅有紅露酒與銀標米酒，之後生產當歸酒、太白酒等商品。如今還有樽藏金棗酒也廣受歡迎。",
               "化龍一村座落之基地，清代為宜蘭地區最重要的軍事基地，武營遺址;日治時期後日人改為練兵場、憲兵分屯中隊，二次大戰期間作為日軍野戰醫院，名為「衛戌醫院」，為提供醫院醫官、護士住宿，日本政府在醫院週邊與建日式房舍作為醫療人員的宿舍及儲物間等；民國38年(1949)，國民政府撤離至台灣，接收日遺房舍，將本來在大陸天津生產通訊器材和電池的聯勤204廠撤遷至此，而民國46年(1957)軍方因電池需求急速增加，原來產量不敷使用，即利用美援在礁溪與建新廠，而原宜蘭市廠房改作為聯勤204廠的倉庫。 聯勤204廠接管週邊的日遺房舍，提供給服務於電池廠的軍官，共56戶；後因宿舍不敷使用，約於民國53年由聯勤電池廠自行出資新建19戶，其中10間比較大間，9戶小間，並於民國54年分發，民國55年遷入，其分發原則係依服務年資、考績及眷口數。 化龍一村土地權屬原為國有財產局，惟使用權歸屬聯勤總部，管理權歸屬陸軍總部戰時期的聯勤204廠。近年經宜蘭縣政府與國防部協議交換土地，現辦理都更計畫相關作業。",
               "南館市場的前身是成立於明治44年（西元1911年）的宜蘭市場，當時約有134家賣店，主要以餐飲、食品為主，其周邊的崇聖街、昇平街、南興街也是商店雲集；根據文獻，明治44年12月16日（西元1911年）宜蘭街始設立「宜蘭街食品料小賣市場」，其建於今昇平街至民生街之街廊內，一般民眾皆簡稱「市場」，為當時宜蘭街唯一的公有市場；市場當時呈「工字形」，中間部分有前後二個對稱的主入口，東側中山路入口處兩旁有矮樹叢，門前還有一棵大樹；市場內販賣蔬菜、豬肉、魚肉，生意興隆，周邊的康樂街、昇平街也非常熱鬧，形成宜蘭街的商業中心。昭和14年（西元1939年）為配合「宜蘭街」升等為「宜蘭市」的計畫，將今中山路拓寬及光復路開通至中山路的工程同時進行，因此今昇平街至民生新街的整個街廊一分為二，舊市場中段部分拆除，剩下南北邊，從此大家稱為「南館、北館市場」；在當時一般普通的台灣人家庭都是前往南館採購消費，日本人或富裕的家庭都去北館，直到光復後消費型態仍未改變。",
               "2011年5月正式開始營業的 THE WALL 賣捌所，是 THE WALL MUSIC與宜蘭縣文化局合作的「舊宜蘭煙草賣捌所」古蹟再造計畫，並沿用賣捌所這個別具時代意義的名字。這棟從1938年就誕生的日式木造建物裡，除了 THE WALL MUSIC一直以來著力的獨立創作樂團演出之外，還有很多書、很多音樂、很多電影、很多用心餐飲、很多手工DIY的物品和精神，在這裡可以自在地渡過一整天。而賣捌所獨特環境下所採取的「不插電」演出，更釋放出樂團們的音樂本質，不少樂團在此改變以往編曲呈現不同風貌，週末午後來場老屋音樂體驗，感受流動在充滿古樸之美的宜蘭新聲色彩。",
               "本會於1887年4月8日由馬偕牧師在宜蘭市的三結仔街開設，為噶瑪蘭族的教會中，最早有漢人來禮拜的教會，屢經遷移及與附近噶瑪蘭族的教會合併，至1914年得『偕田噹』先生捐獻土地245坪，遷移現址，嗣經加拿大寡婦獨資捐建，1916年落成命名『讓安韓達紀念禮拜堂』，面積約50建坪，採哥德式建築，造型壯麗殊堪永誌。惟因使用年限悠久，且逐年遭受颱風地震侵襲，尤以1986年十月宜蘭大地震，鐘樓裂痕危及安全於1989年7月2日破土發包興建，終於1992年元月二日落成獻堂。",
               "本局源自日據時代，於西元1895年(明治28年)在宜蘭開設野戰郵便局，歷經日據、民國之變遷迄今，經過百年汲汲經營，從一個小郵便局，發展至今成為宜蘭責任中心局。本局歷經2次改建，成為目前郵政大樓，提供 顧客最佳的用郵環境與服務。本局所轄支局現有36個支局，員工人數共為 4百餘人，以客為尊、提供誠信效率的服務是我們的經營理念。",
               "台灣過去務農，每個地方都有打鐵街，不過隨著時代變遷，打鐵街也面臨轉型，宜蘭打鐵街在武營街，以前專門製作鋤頭、除草刀具、各式各樣的農具，只是現在這條街上，打鐵舖依然存在，但已經看不見昔日的榮景，紛紛都兼著做開鎖的行業。主要交易行為，已經從打鐵變成開鎖，對於打鐵這項技藝，老師傅已經不再當作吃飯的工具，而是當作對傳統的一種堅持。",
               "中山國小創校已一百零五年了，自本校前身──宜蘭國語傳習所於民國前十六年八月二十日創立，先後在羅東、頭圍設立分校，至民國前十四年十月一日，「宜蘭公學校」正式創立（至此本校創立），從此奠定本校在宜蘭地區的龍首地位。往後，再分別於礁溪、員山、四結、壯圍庄等地設立分校，並在民國七年四月一日設立「宜蘭女子公學校」（現宜蘭國民小學），男女分開招收，原校女生移轉該校，本校則開始專收男生。在此同時，土圍、大坡、美福分校也相繼成立。",
               "本校創立於日本大正七年(1918)4月1日，行政區屬台北縣宜蘭廳管轄，校名為「宜蘭女子公學校」，先以西門文武廟五夫子祠(今宜蘭市西門街文昌宮)為上課地點，當時是宜蘭地區第一所全部招收女學童的公學校。修業六年，採三學期制。大正9年(1920)7月，因行政區重劃，更名為「台北州宜蘭郡女子公學校」。大正13年(1924)再增設二年制高等科。昭和5年(1930)增設「宜蘭女子國語(日語)講習所」。昭和15年(1940)10月宜蘭市成立，更名為「台北州宜蘭市女子公學校」。隔年(1941)3月25日又更名為「台北州宜蘭市向陽國民學校」。此時期主要是配合教育政策，並以推展女子教育為目的，其中裁縫和家事科目是本校的特色課程。",
               "獻馘碑的『馘』指的是首級的意思，以前泰雅人有出草的習俗，所謂『出草』就是下山來獵取漢人或噶瑪蘭人的首級，泰雅人會出草的情況有二：第一是部落有災禍或慶祝活動時，要以貢品來祭拜祖靈，而人頭即是最高貴的貢品，第二是泰雅族的男性表示成年的象徵，即是獵取人頭。到了日治時代，宜蘭廳長覺得此行為過於野蠻，故發動出兵圍剿，泰雅人在不敵的情況下投降，雙方並訂約廢除出草習俗，故泰雅人將一些出草用的番刀、弓箭及獵取的人頭交予日本政府，並由日本政府設碑，將這些東西埋於碑下，故此碑的涵義，也可代表漢人、泰雅人與噶瑪蘭人的和平對待相處，立碑人皆為當時地方士紳或秀才、舉人。",
               "本建築物建築年代不詳，為鋼筋混凝土加強磚造之二層樓建築，初為辦公室之一，後改為員工宿舍。其為早期二層磚造公有宿舍之代表，亦反應該時期政經環境、生活條件與建築技術。 本建築物建築年代不詳，初為辦公室之一，後改為員工宿舍。",
               "清代楊士芳自幼苦學，榮晉進士，又應聘為仰山書院山長，成就甚高，後人為了景仰而設立了此林園。此園區有展覽空間不定時會有特展，也有廁所供遊客使用。週邊的鄂王社區也是有經過許多社區匠師和藝術家合作，經由社區營造創造出許多有趣的小角落，可以讓遊客細細品味。",
               "建於清嘉慶年間已二百年歷史的潘宅古井，是國內罕存的活水井體，為昭應宮第一代匠師所鑿建，後匠師聚居於此並帶動工藝產業的繁榮。",
               "紅磚屋的前身是「舊米穀檢查所宜蘭出張所」，建於西元1930年，負責評檢當地生產的稻米品級，再分級銷售。日本在明治37年12月發布「米穀檢查規則」，規定宜蘭境內生產的米穀都要一律由官方依照米粒形狀、色澤、米質和碾米技術，將稻米分成三個等級，一級品直銷日本，二級品內銷台灣，三級品則在宜蘭境內自銷，紅磚屋當時就是作為分類的檢查所之用。二次大戰後，紅磚屋又改為台灣省糧食局和鐵路局使用，也曾作為宜蘭農產品展銷中心，直到3年前由縣府委託黃大魚劇團經營，轉為百果樹紅磚屋咖啡館。",
               "1.第一銀行創立於日明治32年（1899）11月26日，當時定名為「臺灣貯蓄銀行」；1912年與「臺灣商工銀行」合併，仍沿用「臺灣商工銀行」名稱；民國12年（1923）又合併「嘉義」、「新高」兩銀行。2.民國36年（1947），台灣商工銀行由台灣省行政長官公署接收改組，更名為台灣工商銀行，民國38年（1949）3月1日再改名為「台灣第一商業銀行」，民國65年改稱「第一商業銀行」，民國87年1月22日由公營體制轉型為民營銀行，民國92年（2003）1月2日正式成立「第一金融控股股份有限公司」後改納入第一金控集團下之子公司，經營迄今已逾百年。3.台灣商工銀行宜蘭支店之設立為大正4年（1915）5月1日於宜蘭街坤門八番地（今宜蘭市中山路3段77號），該區是當時宜蘭街最繁華之商業區。4.民國36年（1947）3月1日改稱為宜蘭分行。",
               "速度越快，心則慢。因為知名男星金城武到此拍攝廣告的原因，使宜蘭文學館聲名大噪。這裡是日治時期舊農校校長宿舍內，舊農校就是現在的宜蘭大學喔！文學館免費參觀，保存良好的古建築使人一進入這個空間就感受到思古之幽情呢！記得繞進來好好參觀一下吧！",
               "宜蘭市公所計畫新建的第92號道路，讓宜蘭市民思考路與老樹的關係，當地民眾發動了護樹行動，並獲得來自各界的支持聲援，以及6000多人連署。除了11月初完成列管老樹，居民更進一步依據《文化資產保存法》提出登錄為文化景觀的申請，經過審議獲得全體委員同意登錄，宜蘭縣政府也於1月28日完成公告，將「宜蘭醫院樟樹群」登錄文化景觀。宜蘭醫院樟樹群登錄文化景觀的理由：一、宜蘭陽明醫院樟樹群為原宜蘭醫院開放空間之重要元素，一方面彰顯樹群作為日治時期城市公共醫療空間元素的重要性，另方面作為院區醫療空間與醫事人員宿舍之間的地景緩衝，表現人類與自然互動的文化意義。二、宜蘭陽明醫院樟樹群位址是清代噶瑪蘭廳署、日治初期宜蘭廳舍、1908（明治41）年以來迄今宜蘭醫院之所在，長久以來皆是作為宜蘭舊城區之重要公共空間而存在，樟樹群同時見證了原宜蘭醫院舊城在近代之發展與變遷歷程，具紀念性、代表性之歷史、文化與科學價值。三、宜蘭陽明醫院曾是宜蘭地區最重要之公共醫療空間，樟樹群是宜蘭民眾至醫院就醫探病以及宜蘭醫院醫事人員集會之場所，是形塑集體記憶之重要地景元素；且樟樹群保存事件，是宜蘭舊城區內首次由民眾自主發起並獲得廣大迴響與認同，具時代與社會意義。四、宜蘭陽明醫院樟樹群為宜蘭舊城區內少見之老樹群，具罕見性。（資料來源：宜蘭縣政府公告）"
    ]
var myIndex = 0

class ListTableViewController: UITableViewController {
    
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return pets.count
    }
    
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath)
        
        cell.textLabel?.text = pets[indexPath.row]
        
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        myIndex = indexPath.row
        performSegue(withIdentifier: "segue", sender: self)
    }
}
