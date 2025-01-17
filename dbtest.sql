--
-- PostgreSQL database dump
--

-- Dumped from database version 13.4
-- Dumped by pg_dump version 13.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: countries; Type: TABLE; Schema: public; Owner: fajrulakram
--

CREATE TABLE public.countries (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    names jsonb,
    capital character varying(255) NOT NULL,
    flag character varying(255) NOT NULL,
    code character varying(4) NOT NULL,
    alt_code character varying(4),
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.countries OWNER TO fajrulakram;

--
-- Name: countries_id_seq; Type: SEQUENCE; Schema: public; Owner: fajrulakram
--

CREATE SEQUENCE public.countries_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.countries_id_seq OWNER TO fajrulakram;

--
-- Name: countries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: fajrulakram
--

ALTER SEQUENCE public.countries_id_seq OWNED BY public.countries.id;


--
-- Name: countries id; Type: DEFAULT; Schema: public; Owner: fajrulakram
--

ALTER TABLE ONLY public.countries ALTER COLUMN id SET DEFAULT nextval('public.countries_id_seq'::regclass);


--
-- Data for Name: countries; Type: TABLE DATA; Schema: public; Owner: fajrulakram
--

COPY public.countries (id, name, names, capital, flag, code, alt_code, created_at) FROM stdin;
1	International	{"cn": "国际的", "en": "International", "id": "Internasional", "jp": "国際的", "kr": "국제적인"}					2021-09-03 09:39:41.156034
2	Afghanistan	{"cn": "阿富汗", "en": "Afghanistan", "id": "Afganistan", "jp": "アフガニスタン", "kr": "아프가니스탄"}	Kabul	https://restcountries.eu/data/afg.svg	AF	AFG	2021-09-03 09:39:41.156034
3	Åland Islands	{"cn": "奥兰群岛", "en": "Åland Islands", "id": "Pulau Aland", "jp": "オーランド諸島", "kr": "올란드 제도"}	Mariehamn	https://restcountries.eu/data/ala.svg	AX	ALA	2021-09-03 09:39:41.156034
4	Albania	{"cn": "阿尔巴尼亚", "en": "Albania", "id": "Albania", "jp": "アルバニア", "kr": "알바니아"}	Tirana	https://restcountries.eu/data/alb.svg	AL	ALB	2021-09-03 09:39:41.156034
5	Algeria	{"cn": "阿尔及利亚", "en": "Algeria", "id": "Aljazair", "jp": "アルジェリア", "kr": "알제리"}	Algiers	https://restcountries.eu/data/dza.svg	DZ	DZA	2021-09-03 09:39:41.156034
6	American Samoa	{"cn": "美属萨摩亚", "en": "American Samoa", "id": "Samoa Amerika", "jp": "アメリカ領サモア", "kr": "아메리칸 사모아"}	Pago Pago	https://restcountries.eu/data/asm.svg	AS	ASM	2021-09-03 09:39:41.156034
7	Andorra	{"cn": "安道尔", "en": "Andorra", "id": "Andora", "jp": "アンドラ", "kr": "안도라"}	Andorra la Vella	https://restcountries.eu/data/and.svg	AD	AND	2021-09-03 09:39:41.156034
8	Angola	{"cn": "安哥拉", "en": "Angola", "id": "Angola", "jp": "アンゴラ", "kr": "앙골라"}	Luanda	https://restcountries.eu/data/ago.svg	AO	AGO	2021-09-03 09:39:41.156034
9	Anguilla	{"cn": "安圭拉", "en": "Anguilla", "id": "Anguila", "jp": "アンギラ", "kr": "앵귈라"}	The Valley	https://restcountries.eu/data/aia.svg	AI	AIA	2021-09-03 09:39:41.156034
10	Antarctica	{"cn": "南极洲", "en": "Antarctica", "id": "Antartika", "jp": "南極大陸", "kr": "남극"}		https://restcountries.eu/data/ata.svg	AQ	ATA	2021-09-03 09:39:41.156034
11	Antigua and Barbuda	{"cn": "安提瓜和巴布达", "en": "Antigua and Barbuda", "id": "Antigua dan Barbuda", "jp": "アンティグアバーブーダ", "kr": "앤티가바부다"}	Saint John's	https://restcountries.eu/data/atg.svg	AG	ATG	2021-09-03 09:39:41.156034
12	Argentina	{"cn": "阿根廷", "en": "Argentina", "id": "Argentina", "jp": "アルゼンチン", "kr": "아르헨티나"}	Buenos Aires	https://restcountries.eu/data/arg.svg	AR	ARG	2021-09-03 09:39:41.156034
13	Armenia	{"cn": "亚美尼亚", "en": "Armenia", "id": "Armenia", "jp": "アルメニア", "kr": "아르메니아"}	Yerevan	https://restcountries.eu/data/arm.svg	AM	ARM	2021-09-03 09:39:41.156034
14	Aruba	{"cn": "阿鲁巴岛", "en": "Aruba", "id": "Aruba", "jp": "アルバ", "kr": "아루바"}	Oranjestad	https://restcountries.eu/data/abw.svg	AW	ABW	2021-09-03 09:39:41.156034
15	Australia	{"cn": "澳大利亚", "en": "Australia", "id": "Australia", "jp": "オーストラリア", "kr": "호주"}	Canberra	https://restcountries.eu/data/aus.svg	AU	AUS	2021-09-03 09:39:41.156034
16	Austria	{"cn": "奥地利", "en": "Austria", "id": "Austria", "jp": "オーストリア", "kr": "오스트리아"}	Vienna	https://restcountries.eu/data/aut.svg	AT	AUT	2021-09-03 09:39:41.156034
17	Azerbaijan	{"cn": "阿塞拜疆", "en": "Azerbaijan", "id": "Azerbaijan", "jp": "アゼルバイジャン", "kr": "아제르바이잔"}	Baku	https://restcountries.eu/data/aze.svg	AZ	AZE	2021-09-03 09:39:41.156034
18	Bahamas	{"cn": "巴哈马", "en": "Bahamas", "id": "Bahama", "jp": "バハマ", "kr": "바하마"}	Nassau	https://restcountries.eu/data/bhs.svg	BS	BHS	2021-09-03 09:39:41.156034
19	Bahrain	{"cn": "巴林", "en": "Bahrain", "id": "Bahrain", "jp": "バーレーン", "kr": "바레인"}	Manama	https://restcountries.eu/data/bhr.svg	BH	BHR	2021-09-03 09:39:41.156034
20	Bangladesh	{"cn": "孟加拉国", "en": "Bangladesh", "id": "Bangladesh", "jp": "バングラデシュ", "kr": "방글라데시"}	Dhaka	https://restcountries.eu/data/bgd.svg	BD	BGD	2021-09-03 09:39:41.156034
21	Barbados	{"cn": "巴巴多斯", "en": "Barbados", "id": "Barbados", "jp": "バルバドス", "kr": "바베이도스"}	Bridgetown	https://restcountries.eu/data/brb.svg	BB	BRB	2021-09-03 09:39:41.156034
22	Belarus	{"cn": "白俄罗斯", "en": "Belarus", "id": "Belarusia", "jp": "ベラルーシ", "kr": "벨라루스"}	Minsk	https://restcountries.eu/data/blr.svg	BY	BLR	2021-09-03 09:39:41.156034
23	Belgium	{"cn": "比利时", "en": "Belgium", "id": "Belgium", "jp": "ベルギー", "kr": "벨기에"}	Brussels	https://restcountries.eu/data/bel.svg	BE	BEL	2021-09-03 09:39:41.156034
24	Belize	{"cn": "伯利兹", "en": "Belize", "id": "Belize", "jp": "ベリーズ", "kr": "벨리즈"}	Belmopan	https://restcountries.eu/data/blz.svg	BZ	BLZ	2021-09-03 09:39:41.156034
25	Benin	{"cn": "贝宁", "en": "Benin", "id": "Benin", "jp": "ベナン", "kr": "베냉"}	Porto-Novo	https://restcountries.eu/data/ben.svg	BJ	BEN	2021-09-03 09:39:41.156034
26	Bermuda	{"cn": "百慕大", "en": "Bermuda", "id": "Bermuda", "jp": "バミューダ", "kr": "버뮤다"}	Hamilton	https://restcountries.eu/data/bmu.svg	BM	BMU	2021-09-03 09:39:41.156034
27	Bhutan	{"cn": "不丹", "en": "Bhutan", "id": "Bhutan", "jp": "ブータン", "kr": "부탄"}	Thimphu	https://restcountries.eu/data/btn.svg	BT	BTN	2021-09-03 09:39:41.156034
28	Bolivia (Plurinational State of)	{"cn": "玻利维亚（多民族国）", "en": "Bolivia (Plurinational State of)", "id": "Bolivia (Negara Plurinasional)", "jp": "ボリビア（多国籍）", "kr": "볼리비아(다민족 국가)"}	Sucre	https://restcountries.eu/data/bol.svg	BO	BOL	2021-09-03 09:39:41.156034
29	Bonaire, Sint Eustatius and Saba	{"cn": "博内尔岛、圣尤斯特歇斯和萨巴岛", "en": "Bonaire, Sint Eustatius and Saba", "id": "Bonaire, Sint Eustatius dan Saba", "jp": "ボネール、シントユースタティウス、サバ", "kr": "보네르, 신트 유스타티우스, 사바"}	Kralendijk	https://restcountries.eu/data/bes.svg	BQ	BES	2021-09-03 09:39:41.156034
30	Bosnia and Herzegovina	{"cn": "波斯尼亚和黑塞哥维那（简称：波黑", "en": "Bosnia and Herzegovina", "id": "Bosnia dan Herzegovina", "jp": "ボスニア・ヘルツェゴビナ", "kr": "보스니아 헤르체고비나"}	Sarajevo	https://restcountries.eu/data/bih.svg	BA	BIH	2021-09-03 09:39:41.156034
31	Botswana	{"cn": "博茨瓦纳", "en": "Botswana", "id": "Botswana", "jp": "ボツワナ", "kr": "보츠와나"}	Gaborone	https://restcountries.eu/data/bwa.svg	BW	BWA	2021-09-03 09:39:41.156034
32	Bouvet Island	{"cn": "布韦岛", "en": "Bouvet Island", "id": "Pulau Bouvet", "jp": "ブーベ島", "kr": "부베 아일랜드"}		https://restcountries.eu/data/bvt.svg	BV	BVT	2021-09-03 09:39:41.156034
33	Brazil	{"cn": "巴西", "en": "Brazil", "id": "Brazil", "jp": "ブラジル", "kr": "브라질"}	Brasília	https://restcountries.eu/data/bra.svg	BR	BRA	2021-09-03 09:39:41.156034
34	British Indian Ocean Territory	{"cn": "英属印度洋领地", "en": "British Indian Ocean Territory", "id": "Wilayah Samudra Hindia Britania", "jp": "イギリス領インド洋地域", "kr": "영국령 인도양 영토"}	Diego Garcia	https://restcountries.eu/data/iot.svg	IO	IOT	2021-09-03 09:39:41.156034
69	Egypt	{"cn": "埃及", "en": "Egypt", "id": "Mesir", "jp": "エジプト", "kr": "이집트"}	Cairo	https://restcountries.eu/data/egy.svg	EG	EGY	2021-09-03 09:39:41.156034
35	United States Minor Outlying Islands	{"cn": "美国本土外小岛屿", "en": "United States Minor Outlying Islands", "id": "Kepulauan Terluar Kecil Amerika Serikat", "jp": "合衆国領有小島", "kr": "미국 작은 외딴 섬"}		https://restcountries.eu/data/umi.svg	UM	UMI	2021-09-03 09:39:41.156034
36	Virgin Islands (British)	{"cn": "维尔京群岛（英属）", "en": "Virgin Islands (British)", "id": "Kepulauan Virgin (Inggris)", "jp": "バージン諸島（イギリス）", "kr": "버진 아일랜드(영국)"}	Road Town	https://restcountries.eu/data/vgb.svg	VG	VGB	2021-09-03 09:39:41.156034
37	Virgin Islands (U.S.)	{"cn": "维尔京群岛（美国）", "en": "Virgin Islands (U.S.)", "id": "Kepulauan Virgin (AS)", "jp": "バージン諸島（米国）", "kr": "버진 아일랜드(미국)"}	Charlotte Amalie	https://restcountries.eu/data/vir.svg	VI	VIR	2021-09-03 09:39:41.156034
38	Brunei Darussalam	{"cn": "文莱达鲁萨兰国", "en": "Brunei Darussalam", "id": "Brunei Darussalam", "jp": "ブルネイダルサラーム", "kr": "브루나이 다루살람"}	Bandar Seri Begawan	https://restcountries.eu/data/brn.svg	BN	BRN	2021-09-03 09:39:41.156034
39	Bulgaria	{"cn": "保加利亚", "en": "Bulgaria", "id": "Bulgaria", "jp": "ブルガリア", "kr": "불가리아"}	Sofia	https://restcountries.eu/data/bgr.svg	BG	BGR	2021-09-03 09:39:41.156034
40	Burkina Faso	{"cn": "布基纳法索", "en": "Burkina Faso", "id": "Burkina Faso", "jp": "ブルキナファソ", "kr": "부키 나 파소"}	Ouagadougou	https://restcountries.eu/data/bfa.svg	BF	BFA	2021-09-03 09:39:41.156034
41	Burundi	{"cn": "布隆迪", "en": "Burundi", "id": "Burundi", "jp": "ブルンジ", "kr": "부룬디"}	Bujumbura	https://restcountries.eu/data/bdi.svg	BI	BDI	2021-09-03 09:39:41.156034
42	Cambodia	{"cn": "柬埔寨", "en": "Cambodia", "id": "Kamboja", "jp": "カンボジア", "kr": "캄보디아"}	Phnom Penh	https://restcountries.eu/data/khm.svg	KH	KHM	2021-09-03 09:39:41.156034
43	Cameroon	{"cn": "喀麦隆", "en": "Cameroon", "id": "Kamerun", "jp": "カメルーン", "kr": "카메룬"}	Yaoundé	https://restcountries.eu/data/cmr.svg	CM	CMR	2021-09-03 09:39:41.156034
44	Canada	{"cn": "加拿大", "en": "Canada", "id": "Kanada", "jp": "カナダ", "kr": "캐나다"}	Ottawa	https://restcountries.eu/data/can.svg	CA	CAN	2021-09-03 09:39:41.156034
45	Cabo Verde	{"cn": "佛得角", "en": "Cabo Verde", "id": "Tanjung Verde", "jp": "カーボベルデ", "kr": "카보베르데"}	Praia	https://restcountries.eu/data/cpv.svg	CV	CPV	2021-09-03 09:39:41.156034
46	Cayman Islands	{"cn": "开曼群岛", "en": "Cayman Islands", "id": "Pulau cayman", "jp": "ケイマン諸島", "kr": "케이맨 제도"}	George Town	https://restcountries.eu/data/cym.svg	KY	CYM	2021-09-03 09:39:41.156034
47	Central African Republic	{"cn": "中非共和国", "en": "Central African Republic", "id": "Republik Afrika Tengah", "jp": "中央アフリカ共和国", "kr": "중앙 아프리카 공화국"}	Bangui	https://restcountries.eu/data/caf.svg	CF	CAF	2021-09-03 09:39:41.156034
48	Chad	{"cn": "乍得", "en": "Chad", "id": "Chad", "jp": "チャド", "kr": "차드"}	N'Djamena	https://restcountries.eu/data/tcd.svg	TD	TCD	2021-09-03 09:39:41.156034
49	Chile	{"cn": "辣椒", "en": "Chile", "id": "cabai", "jp": "チリ", "kr": "칠리"}	Santiago	https://restcountries.eu/data/chl.svg	CL	CHL	2021-09-03 09:39:41.156034
50	China	{"cn": "中国", "en": "China", "id": "Cina", "jp": "中国", "kr": "중국"}	Beijing	https://restcountries.eu/data/chn.svg	CN	CHN	2021-09-03 09:39:41.156034
51	Christmas Island	{"cn": "圣诞岛", "en": "Christmas Island", "id": "Pulau Natal", "jp": "クリスマス島", "kr": "크리스마스 섬"}	Flying Fish Cove	https://restcountries.eu/data/cxr.svg	CX	CXR	2021-09-03 09:39:41.156034
52	Cocos (Keeling) Islands	{"cn": "科科斯（基林）群岛", "en": "Cocos (Keeling) Islands", "id": "Kepulauan Cocos (Keeling)", "jp": "ココス（キーリング）諸島", "kr": "코코스(킬링) 제도"}	West Island	https://restcountries.eu/data/cck.svg	CC	CCK	2021-09-03 09:39:41.156034
53	Colombia	{"cn": "哥伦比亚", "en": "Colombia", "id": "Kolumbia", "jp": "コロンビア", "kr": "콜롬비아"}	Bogotá	https://restcountries.eu/data/col.svg	CO	COL	2021-09-03 09:39:41.156034
54	Comoros	{"cn": "科摩罗", "en": "Comoros", "id": "Komoro", "jp": "コモロ", "kr": "코모로"}	Moroni	https://restcountries.eu/data/com.svg	KM	COM	2021-09-03 09:39:41.156034
55	Congo	{"cn": "刚果", "en": "Congo", "id": "Kongo", "jp": "コンゴ", "kr": "콩고"}	Brazzaville	https://restcountries.eu/data/cog.svg	CG	COG	2021-09-03 09:39:41.156034
56	Congo (Democratic Republic of the)	{"cn": "刚果（民主共和国）", "en": "Congo (Democratic Republic of the)", "id": "Kongo (Republik Demokratik)", "jp": "コンゴ（コンゴ民主共和国）", "kr": "콩고(민주공화국)"}	Kinshasa	https://restcountries.eu/data/cod.svg	CD	COD	2021-09-03 09:39:41.156034
57	Cook Islands	{"cn": "库克群岛", "en": "Cook Islands", "id": "Kepulauan Cook", "jp": "クック諸島", "kr": "쿡 제도"}	Avarua	https://restcountries.eu/data/cok.svg	CK	COK	2021-09-03 09:39:41.156034
58	Costa Rica	{"cn": "哥斯达黎加", "en": "Costa Rica", "id": "Kosta Rika", "jp": "コスタリカ", "kr": "코스타리카"}	San José	https://restcountries.eu/data/cri.svg	CR	CRI	2021-09-03 09:39:41.156034
59	Croatia	{"cn": "克罗地亚", "en": "Croatia", "id": "Kroasia", "jp": "クロアチア", "kr": "크로아티아"}	Zagreb	https://restcountries.eu/data/hrv.svg	HR	HRV	2021-09-03 09:39:41.156034
60	Cuba	{"cn": "古巴", "en": "Cuba", "id": "Kuba", "jp": "キューバ", "kr": "쿠바"}	Havana	https://restcountries.eu/data/cub.svg	CU	CUB	2021-09-03 09:39:41.156034
61	Curaçao	{"cn": "库拉索", "en": "Curaçao", "id": "Curacao", "jp": "キュラソー", "kr": "퀴라소"}	Willemstad	https://restcountries.eu/data/cuw.svg	CW	CUW	2021-09-03 09:39:41.156034
62	Cyprus	{"cn": "塞浦路斯", "en": "Cyprus", "id": "Siprus", "jp": "キプロス", "kr": "키프로스"}	Nicosia	https://restcountries.eu/data/cyp.svg	CY	CYP	2021-09-03 09:39:41.156034
63	Czech Republic	{"cn": "捷克共和国", "en": "Czech Republic", "id": "Republik Ceko", "jp": "チェコ共和国", "kr": "체코 공화국"}	Prague	https://restcountries.eu/data/cze.svg	CZ	CZE	2021-09-03 09:39:41.156034
64	Denmark	{"cn": "丹麦", "en": "Denmark", "id": "Denmark", "jp": "デンマーク", "kr": "덴마크"}	Copenhagen	https://restcountries.eu/data/dnk.svg	DK	DNK	2021-09-03 09:39:41.156034
65	Djibouti	{"cn": "吉布提", "en": "Djibouti", "id": "Djibouti", "jp": "ジブチ", "kr": "지부티"}	Djibouti	https://restcountries.eu/data/dji.svg	DJ	DJI	2021-09-03 09:39:41.156034
66	Dominica	{"cn": "多米尼加", "en": "Dominica", "id": "Dominika", "jp": "ドミニカ", "kr": "도미니카"}	Roseau	https://restcountries.eu/data/dma.svg	DM	DMA	2021-09-03 09:39:41.156034
67	Dominican Republic	{"cn": "多明尼加共和国", "en": "Dominican Republic", "id": "Republik Dominika", "jp": "ドミニカ共和国", "kr": "도미니카 공화국"}	Santo Domingo	https://restcountries.eu/data/dom.svg	DO	DOM	2021-09-03 09:39:41.156034
68	Ecuador	{"cn": "厄瓜多尔", "en": "Ecuador", "id": "Ekuador", "jp": "エクアドル", "kr": "에콰도르"}	Quito	https://restcountries.eu/data/ecu.svg	EC	ECU	2021-09-03 09:39:41.156034
70	El Salvador	{"cn": "救星", "en": "El Salvador", "id": "Penyelamat", "jp": "救世主", "kr": "구세주"}	San Salvador	https://restcountries.eu/data/slv.svg	SV	SLV	2021-09-03 09:39:41.156034
71	Equatorial Guinea	{"cn": "赤道几内亚", "en": "Equatorial Guinea", "id": "Guinea ekuator", "jp": "赤道ギニア", "kr": "적도 기니"}	Malabo	https://restcountries.eu/data/gnq.svg	GQ	GNQ	2021-09-03 09:39:41.156034
72	Eritrea	{"cn": "厄立特里亚", "en": "Eritrea", "id": "Eritrea", "jp": "エリトリア", "kr": "에리트레아"}	Asmara	https://restcountries.eu/data/eri.svg	ER	ERI	2021-09-03 09:39:41.156034
73	Estonia	{"cn": "爱沙尼亚", "en": "Estonia", "id": "Estonia", "jp": "エストニア", "kr": "에스토니아"}	Tallinn	https://restcountries.eu/data/est.svg	EE	EST	2021-09-03 09:39:41.156034
74	Ethiopia	{"cn": "埃塞俄比亚", "en": "Ethiopia", "id": "Etiopia", "jp": "エチオピア", "kr": "에티오피아"}	Addis Ababa	https://restcountries.eu/data/eth.svg	ET	ETH	2021-09-03 09:39:41.156034
75	Falkland Islands (Malvinas)	{"cn": "福克兰群岛（马尔维纳斯）", "en": "Falkland Islands (Malvinas)", "id": "Kepulauan Falkland (Malvinas)", "jp": "フォークランド諸島（マルビナス）", "kr": "포클랜드 제도(말비나스)"}	Stanley	https://restcountries.eu/data/flk.svg	FK	FLK	2021-09-03 09:39:41.156034
76	Faroe Islands	{"cn": "法罗群岛", "en": "Faroe Islands", "id": "Kepulauan Faroe", "jp": "フェロー諸島", "kr": "페로 제도"}	Tórshavn	https://restcountries.eu/data/fro.svg	FO	FRO	2021-09-03 09:39:41.156034
77	Fiji	{"cn": "斐济", "en": "Fiji", "id": "Fiji", "jp": "フィジー", "kr": "피지"}	Suva	https://restcountries.eu/data/fji.svg	FJ	FJI	2021-09-03 09:39:41.156034
78	Finland	{"cn": "芬兰", "en": "Finland", "id": "Finlandia", "jp": "フィンランド", "kr": "핀란드"}	Helsinki	https://restcountries.eu/data/fin.svg	FI	FIN	2021-09-03 09:39:41.156034
79	France	{"cn": "法国", "en": "France", "id": "Perancis", "jp": "フランス", "kr": "프랑스"}	Paris	https://restcountries.eu/data/fra.svg	FR	FRA	2021-09-03 09:39:41.156034
80	French Guiana	{"cn": "法属圭亚那", "en": "French Guiana", "id": "Guyana Perancis", "jp": "フランス領ギアナ", "kr": "프랑스령 기아나"}	Cayenne	https://restcountries.eu/data/guf.svg	GF	GUF	2021-09-03 09:39:41.156034
81	French Polynesia	{"cn": "法属波利尼西亚", "en": "French Polynesia", "id": "Polinesia Perancis", "jp": "フランス領ポリネシア", "kr": "프랑스 령 폴리네시아의"}	Papeetē	https://restcountries.eu/data/pyf.svg	PF	PYF	2021-09-03 09:39:41.156034
82	French Southern Territories	{"cn": "法属南部领地", "en": "French Southern Territories", "id": "Wilayah Selatan Prancis", "jp": "フランス領南方南方領土", "kr": "프랑스 남부 지역"}	Port-aux-Français	https://restcountries.eu/data/atf.svg	TF	ATF	2021-09-03 09:39:41.156034
83	Gabon	{"cn": "加蓬", "en": "Gabon", "id": "Gabon", "jp": "ガボン", "kr": "가봉"}	Libreville	https://restcountries.eu/data/gab.svg	GA	GAB	2021-09-03 09:39:41.156034
84	Gambia	{"cn": "冈比亚", "en": "Gambia", "id": "Gambia", "jp": "ガンビア", "kr": "감비아"}	Banjul	https://restcountries.eu/data/gmb.svg	GM	GMB	2021-09-03 09:39:41.156034
85	Georgia	{"cn": "乔治亚州", "en": "Georgia", "id": "Georgia", "jp": "ジョージア", "kr": "그루지야"}	Tbilisi	https://restcountries.eu/data/geo.svg	GE	GEO	2021-09-03 09:39:41.156034
86	Germany	{"cn": "德国", "en": "Germany", "id": "Jerman", "jp": "ドイツ", "kr": "독일"}	Berlin	https://restcountries.eu/data/deu.svg	DE	DEU	2021-09-03 09:39:41.156034
87	Ghana	{"cn": "加纳", "en": "Ghana", "id": "Ghana", "jp": "ガーナ", "kr": "가나"}	Accra	https://restcountries.eu/data/gha.svg	GH	GHA	2021-09-03 09:39:41.156034
88	Gibraltar	{"cn": "直布罗陀", "en": "Gibraltar", "id": "Gibraltar", "jp": "ジブラルタル", "kr": "지브롤터"}	Gibraltar	https://restcountries.eu/data/gib.svg	GI	GIB	2021-09-03 09:39:41.156034
89	Greece	{"cn": "希腊", "en": "Greece", "id": "Yunani", "jp": "ギリシャ", "kr": "그리스"}	Athens	https://restcountries.eu/data/grc.svg	GR	GRC	2021-09-03 09:39:41.156034
90	Greenland	{"cn": "格陵兰", "en": "Greenland", "id": "Tanah penggembalaan", "jp": "グリーンランド", "kr": "그린란드"}	Nuuk	https://restcountries.eu/data/grl.svg	GL	GRL	2021-09-03 09:39:41.156034
91	Grenada	{"cn": "格林纳达", "en": "Grenada", "id": "Grenada", "jp": "グレナダ", "kr": "그레나다"}	St. George's	https://restcountries.eu/data/grd.svg	GD	GRD	2021-09-03 09:39:41.156034
92	Guadeloupe	{"cn": "瓜德罗普岛", "en": "Guadeloupe", "id": "Guadeloupe", "jp": "グアドループ", "kr": "과들루프"}	Basse-Terre	https://restcountries.eu/data/glp.svg	GP	GLP	2021-09-03 09:39:41.156034
93	Guam	{"cn": "关岛", "en": "Guam", "id": "Guam", "jp": "グアム", "kr": "괌"}	Hagåtña	https://restcountries.eu/data/gum.svg	GU	GUM	2021-09-03 09:39:41.156034
94	Guatemala	{"cn": "危地马拉", "en": "Guatemala", "id": "Guatemala", "jp": "グアテマラ", "kr": "과테말라"}	Guatemala City	https://restcountries.eu/data/gtm.svg	GT	GTM	2021-09-03 09:39:41.156034
95	Guernsey	{"cn": "根西岛", "en": "Guernsey", "id": "Guernsey", "jp": "ガーンジー", "kr": "건지"}	St. Peter Port	https://restcountries.eu/data/ggy.svg	GG	GGY	2021-09-03 09:39:41.156034
96	Guinea	{"cn": "几内亚", "en": "Guinea", "id": "Guinea", "jp": "ギニア", "kr": "기니"}	Conakry	https://restcountries.eu/data/gin.svg	GN	GIN	2021-09-03 09:39:41.156034
97	Guinea-Bissau	{"cn": "几内亚比绍", "en": "Guinea-Bissau", "id": "Guinea-Bissau", "jp": "ギニアビサウ", "kr": "기니비사우"}	Bissau	https://restcountries.eu/data/gnb.svg	GW	GNB	2021-09-03 09:39:41.156034
98	Guyana	{"cn": "圭亚那", "en": "Guyana", "id": "Guyana", "jp": "ガイアナ", "kr": "가이아나"}	Georgetown	https://restcountries.eu/data/guy.svg	GY	GUY	2021-09-03 09:39:41.156034
99	Haiti	{"cn": "海地", "en": "Haiti", "id": "Haiti", "jp": "ハイチ", "kr": "아이티"}	Port-au-Prince	https://restcountries.eu/data/hti.svg	HT	HTI	2021-09-03 09:39:41.156034
100	Heard Island and McDonald Islands	{"cn": "赫德岛和麦克唐纳群岛", "en": "Heard Island and McDonald Islands", "id": "Pulau Heard dan Kepulauan McDonald", "jp": "ハード島とマクドナルド諸島", "kr": "허드 아일랜드와 맥도날드 아일랜드"}		https://restcountries.eu/data/hmd.svg	HM	HMD	2021-09-03 09:39:41.156034
101	Holy See	{"cn": "教廷", "en": "Holy See", "id": "Takhta Suci", "jp": "聖座", "kr": "교황청"}	Rome	https://restcountries.eu/data/vat.svg	VA	VAT	2021-09-03 09:39:41.156034
102	Honduras	{"cn": "洪都拉斯", "en": "Honduras", "id": "Honduras", "jp": "ホンジュラス", "kr": "온두라스"}	Tegucigalpa	https://restcountries.eu/data/hnd.svg	HN	HND	2021-09-03 09:39:41.156034
103	Hong Kong	{"cn": "香港", "en": "Hong Kong", "id": "Hongkong", "jp": "香港", "kr": "홍콩"}	City of Victoria	https://restcountries.eu/data/hkg.svg	HK	HKG	2021-09-03 09:39:41.156034
104	Hungary	{"cn": "匈牙利", "en": "Hungary", "id": "Hungaria", "jp": "ハンガリー", "kr": "헝가리"}	Budapest	https://restcountries.eu/data/hun.svg	HU	HUN	2021-09-03 09:39:41.156034
105	Iceland	{"cn": "冰岛", "en": "Iceland", "id": "Islandia", "jp": "アイスランド", "kr": "아이슬란드"}	Reykjavík	https://restcountries.eu/data/isl.svg	IS	ISL	2021-09-03 09:39:41.156034
106	India	{"cn": "印度", "en": "India", "id": "India", "jp": "インド", "kr": "인도"}	New Delhi	https://restcountries.eu/data/ind.svg	IN	IND	2021-09-03 09:39:41.156034
107	Indonesia	{"cn": "印度尼西亚", "en": "Indonesia", "id": "Indonesia", "jp": "インドネシア", "kr": "인도네시아"}	Jakarta	https://restcountries.eu/data/idn.svg	ID	IDN	2021-09-03 09:39:41.156034
108	Côte d'Ivoire	{"cn": "象牙海岸", "en": "Côte d'Ivoire", "id": "pantai Gading", "jp": "コートジボワール", "kr": "아이보리 해안"}	Yamoussoukro	https://restcountries.eu/data/civ.svg	CI	CIV	2021-09-03 09:39:41.156034
109	Iran (Islamic Republic of)	{"cn": "伊朗（伊斯兰共和国）", "en": "Iran (Islamic Republic of)", "id": "Iran (Republik Islam)", "jp": "イラン（イスラム共和国）", "kr": "이란(이슬람 공화국)"}	Tehran	https://restcountries.eu/data/irn.svg	IR	IRN	2021-09-03 09:39:41.156034
110	Iraq	{"cn": "伊拉克", "en": "Iraq", "id": "Irak", "jp": "イラク", "kr": "이라크"}	Baghdad	https://restcountries.eu/data/irq.svg	IQ	IRQ	2021-09-03 09:39:41.156034
111	Ireland	{"cn": "爱尔兰", "en": "Ireland", "id": "Irlandia", "jp": "アイルランド", "kr": "아일랜드"}	Dublin	https://restcountries.eu/data/irl.svg	IE	IRL	2021-09-03 09:39:41.156034
112	Isle of Man	{"cn": "马恩岛", "en": "Isle of Man", "id": "Pulau manusia", "jp": "マン島", "kr": "맨 섬"}	Douglas	https://restcountries.eu/data/imn.svg	IM	IMN	2021-09-03 09:39:41.156034
113	Israel	{"cn": "以色列", "en": "Israel", "id": "Israel", "jp": "イスラエル", "kr": "이스라엘"}	Jerusalem	https://restcountries.eu/data/isr.svg	IL	ISR	2021-09-03 09:39:41.156034
114	Italy	{"cn": "意大利", "en": "Italy", "id": "Italia", "jp": "イタリア", "kr": "이탈리아"}	Rome	https://restcountries.eu/data/ita.svg	IT	ITA	2021-09-03 09:39:41.156034
115	Jamaica	{"cn": "牙买加", "en": "Jamaica", "id": "Jamaika", "jp": "ジャマイカ", "kr": "자메이카"}	Kingston	https://restcountries.eu/data/jam.svg	JM	JAM	2021-09-03 09:39:41.156034
116	Japan	{"cn": "日本", "en": "Japan", "id": "Jepang", "jp": "日本", "kr": "일본"}	Tokyo	https://restcountries.eu/data/jpn.svg	JP	JPN	2021-09-03 09:39:41.156034
117	Jersey	{"cn": "球衣", "en": "Jersey", "id": "baju kaos", "jp": "ジャージー", "kr": "저지"}	Saint Helier	https://restcountries.eu/data/jey.svg	JE	JEY	2021-09-03 09:39:41.156034
118	Jordan	{"cn": "约旦", "en": "Jordan", "id": "Yordania", "jp": "ヨルダン", "kr": "요르단"}	Amman	https://restcountries.eu/data/jor.svg	JO	JOR	2021-09-03 09:39:41.156034
119	Kazakhstan	{"cn": "哈萨克斯坦", "en": "Kazakhstan", "id": "Kazakstan", "jp": "カザフスタン", "kr": "카자흐스탄"}	Astana	https://restcountries.eu/data/kaz.svg	KZ	KAZ	2021-09-03 09:39:41.156034
120	Kenya	{"cn": "肯尼亚", "en": "Kenya", "id": "Kenya", "jp": "ケニア", "kr": "케냐"}	Nairobi	https://restcountries.eu/data/ken.svg	KE	KEN	2021-09-03 09:39:41.156034
121	Kiribati	{"cn": "基里巴斯", "en": "Kiribati", "id": "Kiribati", "jp": "キリバス", "kr": "키리바시"}	South Tarawa	https://restcountries.eu/data/kir.svg	KI	KIR	2021-09-03 09:39:41.156034
122	Kuwait	{"cn": "科威特", "en": "Kuwait", "id": "Kuwait", "jp": "クウェート", "kr": "쿠웨이트"}	Kuwait City	https://restcountries.eu/data/kwt.svg	KW	KWT	2021-09-03 09:39:41.156034
123	Kyrgyzstan	{"cn": "吉尔吉斯斯坦", "en": "Kyrgyzstan", "id": "Kirgistan", "jp": "キルギスタン", "kr": "키르기스스탄"}	Bishkek	https://restcountries.eu/data/kgz.svg	KG	KGZ	2021-09-03 09:39:41.156034
124	Lao People's Democratic Republic	{"cn": "老挝人民民主共和国", "en": "Lao People's Democratic Republic", "id": "Republik Demokratik Rakyat Laos", "jp": "ラオス人民民主共和国", "kr": "라오스 인민 민주 공화국"}	Vientiane	https://restcountries.eu/data/lao.svg	LA	LAO	2021-09-03 09:39:41.156034
125	Latvia	{"cn": "拉脱维亚", "en": "Latvia", "id": "Latvia", "jp": "ラトビア", "kr": "라트비아"}	Riga	https://restcountries.eu/data/lva.svg	LV	LVA	2021-09-03 09:39:41.156034
126	Lebanon	{"cn": "黎巴嫩", "en": "Lebanon", "id": "Libanon", "jp": "レバノン", "kr": "레바논"}	Beirut	https://restcountries.eu/data/lbn.svg	LB	LBN	2021-09-03 09:39:41.156034
127	Lesotho	{"cn": "莱索托", "en": "Lesotho", "id": "Lesotho", "jp": "レソト", "kr": "레소토"}	Maseru	https://restcountries.eu/data/lso.svg	LS	LSO	2021-09-03 09:39:41.156034
128	Liberia	{"cn": "利比里亚", "en": "Liberia", "id": "Liberia", "jp": "リベリア", "kr": "라이베리아"}	Monrovia	https://restcountries.eu/data/lbr.svg	LR	LBR	2021-09-03 09:39:41.156034
129	Libya	{"cn": "利比亚", "en": "Libya", "id": "Libya", "jp": "リビア", "kr": "리비아"}	Tripoli	https://restcountries.eu/data/lby.svg	LY	LBY	2021-09-03 09:39:41.156034
130	Liechtenstein	{"cn": "列支敦士登", "en": "Liechtenstein", "id": "Liechtenstein", "jp": "リヒテンシュタイン", "kr": "리히텐슈타인"}	Vaduz	https://restcountries.eu/data/lie.svg	LI	LIE	2021-09-03 09:39:41.156034
131	Lithuania	{"cn": "立陶宛", "en": "Lithuania", "id": "Lithuania", "jp": "リトアニア", "kr": "리투아니아"}	Vilnius	https://restcountries.eu/data/ltu.svg	LT	LTU	2021-09-03 09:39:41.156034
132	Luxembourg	{"cn": "卢森堡", "en": "Luxembourg", "id": "Luksemburg", "jp": "ルクセンブルク", "kr": "룩셈부르크"}	Luxembourg	https://restcountries.eu/data/lux.svg	LU	LUX	2021-09-03 09:39:41.156034
133	Macao	{"cn": "澳门", "en": "Macao", "id": "Makau", "jp": "マカオ", "kr": "마카오"}		https://restcountries.eu/data/mac.svg	MO	MAC	2021-09-03 09:39:41.156034
134	Macedonia (the former Yugoslav Republic of)	{"cn": "马其顿（前南斯拉夫共和国）", "en": "Macedonia (the former Yugoslav Republic of)", "id": "Makedonia (bekas Republik Yugoslavia)", "jp": "マケドニア（旧ユーゴスラビア共和国）", "kr": "마케도니아(구 유고슬라비아 공화국)"}	Skopje	https://restcountries.eu/data/mkd.svg	MK	MKD	2021-09-03 09:39:41.156034
135	Madagascar	{"cn": "马达加斯加", "en": "Madagascar", "id": "Madagaskar", "jp": "マダガスカル", "kr": "마다가스카르"}	Antananarivo	https://restcountries.eu/data/mdg.svg	MG	MDG	2021-09-03 09:39:41.156034
136	Malawi	{"cn": "马拉维", "en": "Malawi", "id": "Malawi", "jp": "マラウイ", "kr": "말라위"}	Lilongwe	https://restcountries.eu/data/mwi.svg	MW	MWI	2021-09-03 09:39:41.156034
137	Malaysia	{"cn": "马来西亚", "en": "Malaysia", "id": "Malaysia", "jp": "マレーシア", "kr": "말레이시아"}	Kuala Lumpur	https://restcountries.eu/data/mys.svg	MY	MYS	2021-09-03 09:39:41.156034
138	Maldives	{"cn": "马尔代夫", "en": "Maldives", "id": "Maladewa", "jp": "モルディブ", "kr": "몰디브"}	Malé	https://restcountries.eu/data/mdv.svg	MV	MDV	2021-09-03 09:39:41.156034
139	Mali	{"cn": "马里", "en": "Mali", "id": "mali", "jp": "マリ", "kr": "말리"}	Bamako	https://restcountries.eu/data/mli.svg	ML	MLI	2021-09-03 09:39:41.156034
140	Malta	{"cn": "马耳他", "en": "Malta", "id": "Malta", "jp": "マルタ", "kr": "몰타"}	Valletta	https://restcountries.eu/data/mlt.svg	MT	MLT	2021-09-03 09:39:41.156034
141	Marshall Islands	{"cn": "马绍尔群岛", "en": "Marshall Islands", "id": "Pulau Marshall", "jp": "マーシャル諸島", "kr": "마셜 제도"}	Majuro	https://restcountries.eu/data/mhl.svg	MH	MHL	2021-09-03 09:39:41.156034
142	Martinique	{"cn": "马提尼克", "en": "Martinique", "id": "Martinik", "jp": "マルティニーク", "kr": "마르티니크"}	Fort-de-France	https://restcountries.eu/data/mtq.svg	MQ	MTQ	2021-09-03 09:39:41.156034
143	Mauritania	{"cn": "毛里塔尼亚", "en": "Mauritania", "id": "Mauritania", "jp": "モーリタニア", "kr": "모리타니"}	Nouakchott	https://restcountries.eu/data/mrt.svg	MR	MRT	2021-09-03 09:39:41.156034
144	Mauritius	{"cn": "毛里求斯", "en": "Mauritius", "id": "Mauritius", "jp": "モーリシャス", "kr": "모리셔스"}	Port Louis	https://restcountries.eu/data/mus.svg	MU	MUS	2021-09-03 09:39:41.156034
145	Mayotte	{"cn": "马约特岛", "en": "Mayotte", "id": "mayotte", "jp": "Mayotte", "kr": "Mayotte"}	Mamoudzou	https://restcountries.eu/data/myt.svg	YT	MYT	2021-09-03 09:39:41.156034
146	Mexico	{"cn": "墨西哥", "en": "Mexico", "id": "Meksiko", "jp": "メキシコ", "kr": "멕시코"}	Mexico City	https://restcountries.eu/data/mex.svg	MX	MEX	2021-09-03 09:39:41.156034
147	Micronesia (Federated States of)	{"cn": "密克罗尼西亚联邦", "en": "Micronesia (Federated States of)", "id": "Mikronesia (Negara Federasi)", "jp": "ミクロネシア（連邦）", "kr": "미크로네시아(연방)"}	Palikir	https://restcountries.eu/data/fsm.svg	FM	FSM	2021-09-03 09:39:41.156034
148	Moldova (Republic of)	{"cn": "摩尔多瓦（共和国）", "en": "Moldova (Republic of)", "id": "Moldova (Republik)", "jp": "モルドバ（共和国）", "kr": "몰도바(공화국)"}	Chișinău	https://restcountries.eu/data/mda.svg	MD	MDA	2021-09-03 09:39:41.156034
149	Monaco	{"cn": "摩纳哥", "en": "Monaco", "id": "Monako", "jp": "モナコ", "kr": "모나코"}	Monaco	https://restcountries.eu/data/mco.svg	MC	MCO	2021-09-03 09:39:41.156034
150	Mongolia	{"cn": "蒙古", "en": "Mongolia", "id": "Mongolia", "jp": "モンゴル", "kr": "몽골리아"}	Ulan Bator	https://restcountries.eu/data/mng.svg	MN	MNG	2021-09-03 09:39:41.156034
151	Montenegro	{"cn": "黑山", "en": "Montenegro", "id": "Montenegro", "jp": "モンテネグロ", "kr": "몬테네그로"}	Podgorica	https://restcountries.eu/data/mne.svg	ME	MNE	2021-09-03 09:39:41.156034
152	Montserrat	{"cn": "蒙特塞拉特", "en": "Montserrat", "id": "Montserrat", "jp": "モントセラト", "kr": "몬세라트"}	Plymouth	https://restcountries.eu/data/msr.svg	MS	MSR	2021-09-03 09:39:41.156034
153	Morocco	{"cn": "摩洛哥", "en": "Morocco", "id": "Maroko", "jp": "モロッコ", "kr": "모로코"}	Rabat	https://restcountries.eu/data/mar.svg	MA	MAR	2021-09-03 09:39:41.156034
154	Mozambique	{"cn": "莫桑比克", "en": "Mozambique", "id": "Mozambik", "jp": "モザンビーク", "kr": "모잠비크"}	Maputo	https://restcountries.eu/data/moz.svg	MZ	MOZ	2021-09-03 09:39:41.156034
155	Myanmar	{"cn": "缅甸", "en": "Myanmar", "id": "Myanmar", "jp": "ミャンマー", "kr": "미얀마"}	Naypyidaw	https://restcountries.eu/data/mmr.svg	MM	MMR	2021-09-03 09:39:41.156034
156	Namibia	{"cn": "纳米比亚", "en": "Namibia", "id": "Namibia", "jp": "ナミビア", "kr": "나미비아"}	Windhoek	https://restcountries.eu/data/nam.svg	NA	NAM	2021-09-03 09:39:41.156034
157	Nauru	{"cn": "瑙鲁", "en": "Nauru", "id": "Nauru", "jp": "ナウル", "kr": "나우루"}	Yaren	https://restcountries.eu/data/nru.svg	NR	NRU	2021-09-03 09:39:41.156034
158	Nepal	{"cn": "尼泊尔", "en": "Nepal", "id": "Nepal", "jp": "ネパール", "kr": "네팔"}	Kathmandu	https://restcountries.eu/data/npl.svg	NP	NPL	2021-09-03 09:39:41.156034
159	Netherlands	{"cn": "荷兰", "en": "Netherlands", "id": "Belanda", "jp": "オランダ", "kr": "네덜란드"}	Amsterdam	https://restcountries.eu/data/nld.svg	NL	NLD	2021-09-03 09:39:41.156034
160	New Caledonia	{"cn": "新喀里多尼亚", "en": "New Caledonia", "id": "Kaledonia Baru", "jp": "ニューカレドニア", "kr": "뉴 칼레도니아"}	Nouméa	https://restcountries.eu/data/ncl.svg	NC	NCL	2021-09-03 09:39:41.156034
161	New Zealand	{"cn": "新西兰", "en": "New Zealand", "id": "Selandia Baru", "jp": "ニュージーランド", "kr": "뉴질랜드"}	Wellington	https://restcountries.eu/data/nzl.svg	NZ	NZL	2021-09-03 09:39:41.156034
162	Nicaragua	{"cn": "尼加拉瓜", "en": "Nicaragua", "id": "Nikaragua", "jp": "ニカラグア", "kr": "니카라과"}	Managua	https://restcountries.eu/data/nic.svg	NI	NIC	2021-09-03 09:39:41.156034
163	Niger	{"cn": "尼日尔", "en": "Niger", "id": "Nigeria", "jp": "ニジェール", "kr": "니제르"}	Niamey	https://restcountries.eu/data/ner.svg	NE	NER	2021-09-03 09:39:41.156034
164	Nigeria	{"cn": "尼日利亚", "en": "Nigeria", "id": "Nigeria", "jp": "ナイジェリア", "kr": "나이지리아"}	Abuja	https://restcountries.eu/data/nga.svg	NG	NGA	2021-09-03 09:39:41.156034
165	Niue	{"cn": "纽埃", "en": "Niue", "id": "Niue", "jp": "ニウエ", "kr": "니우에"}	Alofi	https://restcountries.eu/data/niu.svg	NU	NIU	2021-09-03 09:39:41.156034
166	Norfolk Island	{"cn": "诺福克岛", "en": "Norfolk Island", "id": "Pulau Norfolk", "jp": "ノーフォーク島", "kr": "노퍽 섬"}	Kingston	https://restcountries.eu/data/nfk.svg	NF	NFK	2021-09-03 09:39:41.156034
167	Korea (Democratic People's Republic of)	{"cn": "朝鲜（民主人民共和国）", "en": "Korea (Democratic People's Republic of)", "id": "Korea (Republik Rakyat Demokratik)", "jp": "韓国（朝鮮民主主義人民共和国）", "kr": "조선(조선민주주의인민공화국)"}	Pyongyang	https://restcountries.eu/data/prk.svg	KP	PRK	2021-09-03 09:39:41.156034
168	Northern Mariana Islands	{"cn": "北马里亚纳群岛", "en": "Northern Mariana Islands", "id": "Kepulauan Mariana Utara", "jp": "北マリアナ諸島", "kr": "북마리아나 제도"}	Saipan	https://restcountries.eu/data/mnp.svg	MP	MNP	2021-09-03 09:39:41.156034
169	Norway	{"cn": "挪威", "en": "Norway", "id": "Norway", "jp": "ノルウェー", "kr": "노르웨이"}	Oslo	https://restcountries.eu/data/nor.svg	NO	NOR	2021-09-03 09:39:41.156034
170	Oman	{"cn": "阿曼", "en": "Oman", "id": "Oman", "jp": "オマーン", "kr": "오만"}	Muscat	https://restcountries.eu/data/omn.svg	OM	OMN	2021-09-03 09:39:41.156034
171	Pakistan	{"cn": "巴基斯坦", "en": "Pakistan", "id": "pakistan", "jp": "パキスタン", "kr": "파키스탄"}	Islamabad	https://restcountries.eu/data/pak.svg	PK	PAK	2021-09-03 09:39:41.156034
172	Palau	{"cn": "帕劳", "en": "Palau", "id": "Palau", "jp": "パラオ", "kr": "팔라우"}	Ngerulmud	https://restcountries.eu/data/plw.svg	PW	PLW	2021-09-03 09:39:41.156034
173	Palestine, State of	{"cn": "巴勒斯坦国", "en": "Palestine, State of", "id": "Palestina, Negara Bagian", "jp": "パレスチナ、州", "kr": "팔레스타인,"}	Ramallah	https://restcountries.eu/data/pse.svg	PS	PSE	2021-09-03 09:39:41.156034
174	Panama	{"cn": "巴拿马", "en": "Panama", "id": "Panama", "jp": "パナマ", "kr": "파나마"}	Panama City	https://restcountries.eu/data/pan.svg	PA	PAN	2021-09-03 09:39:41.156034
175	Papua New Guinea	{"cn": "巴布亚新几内亚", "en": "Papua New Guinea", "id": "Papua Nugini", "jp": "パプアニューギニア", "kr": "파푸아 뉴기니"}	Port Moresby	https://restcountries.eu/data/png.svg	PG	PNG	2021-09-03 09:39:41.156034
176	Paraguay	{"cn": "巴拉圭", "en": "Paraguay", "id": "Paraguay", "jp": "パラグアイ", "kr": "파라과이"}	Asunción	https://restcountries.eu/data/pry.svg	PY	PRY	2021-09-03 09:39:41.156034
177	Peru	{"cn": "秘鲁", "en": "Peru", "id": "Peru", "jp": "ペルー", "kr": "페루"}	Lima	https://restcountries.eu/data/per.svg	PE	PER	2021-09-03 09:39:41.156034
178	Philippines	{"cn": "菲律宾", "en": "Philippines", "id": "Filipina", "jp": "フィリピン", "kr": "필리핀 제도"}	Manila	https://restcountries.eu/data/phl.svg	PH	PHL	2021-09-03 09:39:41.156034
179	Pitcairn	{"cn": "皮特凯恩", "en": "Pitcairn", "id": "Pitcairn", "jp": "ピトケアン", "kr": "핏케언"}	Adamstown	https://restcountries.eu/data/pcn.svg	PN	PCN	2021-09-03 09:39:41.156034
180	Poland	{"cn": "波兰", "en": "Poland", "id": "Polandia", "jp": "ポーランド", "kr": "폴란드"}	Warsaw	https://restcountries.eu/data/pol.svg	PL	POL	2021-09-03 09:39:41.156034
181	Portugal	{"cn": "葡萄牙", "en": "Portugal", "id": "Portugal", "jp": "ポルトガル", "kr": "포르투갈"}	Lisbon	https://restcountries.eu/data/prt.svg	PT	PRT	2021-09-03 09:39:41.156034
182	Puerto Rico	{"cn": "波多黎各", "en": "Puerto Rico", "id": "Puerto Riko", "jp": "プエルトリコ", "kr": "푸에르토 리코"}	San Juan	https://restcountries.eu/data/pri.svg	PR	PRI	2021-09-03 09:39:41.156034
183	Qatar	{"cn": "卡塔尔", "en": "Qatar", "id": "Qatar", "jp": "カタール", "kr": "카타르"}	Doha	https://restcountries.eu/data/qat.svg	QA	QAT	2021-09-03 09:39:41.156034
184	Republic of Kosovo	{"cn": "科索沃共和国", "en": "Republic of Kosovo", "id": "Republik Kosovo", "jp": "コソボ共和国", "kr": "코소보 공화국"}	Pristina	https://restcountries.eu/data/kos.svg	XK	KOS	2021-09-03 09:39:41.156034
185	Réunion	{"cn": "会议", "en": "Réunion", "id": "Pertemuan", "jp": "ミーティング", "kr": "회의"}	Saint-Denis	https://restcountries.eu/data/reu.svg	RE	REU	2021-09-03 09:39:41.156034
186	Romania	{"cn": "罗马尼亚", "en": "Romania", "id": "Rumania", "jp": "ルーマニア", "kr": "루마니아"}	Bucharest	https://restcountries.eu/data/rou.svg	RO	ROU	2021-09-03 09:39:41.156034
187	Russian Federation	{"cn": "俄罗斯联邦", "en": "Russian Federation", "id": "Federasi Rusia", "jp": "ロシア連邦", "kr": "러시아 연방"}	Moscow	https://restcountries.eu/data/rus.svg	RU	RUS	2021-09-03 09:39:41.156034
188	Rwanda	{"cn": "卢旺达", "en": "Rwanda", "id": "Rwanda", "jp": "ルワンダ", "kr": "르완다"}	Kigali	https://restcountries.eu/data/rwa.svg	RW	RWA	2021-09-03 09:39:41.156034
189	Saint Barthélemy	{"cn": "圣巴塞洛缪", "en": "Saint Barthélemy", "id": "Santo Bartolomeus", "jp": "聖バルトロマイ", "kr": "성 바돌로매"}	Gustavia	https://restcountries.eu/data/blm.svg	BL	BLM	2021-09-03 09:39:41.156034
190	Saint Helena, Ascension and Tristan da Cunha	{"cn": "圣赫勒拿、阿森松和特里斯坦达库尼亚", "en": "Saint Helena, Ascension and Tristan da Cunha", "id": "Saint Helena, Ascension dan Tristan da Cunha", "jp": "セントヘレナ、アセンション、トリスタンダクーニャ", "kr": "세인트 헬레나, 승천과 트리스탄 다 쿠냐"}	Jamestown	https://restcountries.eu/data/shn.svg	SH	SHN	2021-09-03 09:39:41.156034
191	Saint Kitts and Nevis	{"cn": "圣基茨和尼维斯", "en": "Saint Kitts and Nevis", "id": "Saint Kitts dan Nevis", "jp": "セントクリストファーネイビス", "kr": "세인트키츠네비스"}	Basseterre	https://restcountries.eu/data/kna.svg	KN	KNA	2021-09-03 09:39:41.156034
192	Saint Lucia	{"cn": "圣卢西亚", "en": "Saint Lucia", "id": "Saint Lucia", "jp": "セントルシア", "kr": "세인트루시아"}	Castries	https://restcountries.eu/data/lca.svg	LC	LCA	2021-09-03 09:39:41.156034
193	Saint Martin (French part)	{"cn": "圣马丁（法语部分）", "en": "Saint Martin (French part)", "id": "Saint Martin (bagian Prancis)", "jp": "サンマルタン（フランス語部）", "kr": "Saint Martin(프랑스어 부분)"}	Marigot	https://restcountries.eu/data/maf.svg	MF	MAF	2021-09-03 09:39:41.156034
194	Saint Pierre and Miquelon	{"cn": "圣皮埃尔和密克隆", "en": "Saint Pierre and Miquelon", "id": "Saint Pierre dan Miquelon", "jp": "サンピエール島とミクロン島", "kr": "생 피에르와 미클롱"}	Saint-Pierre	https://restcountries.eu/data/spm.svg	PM	SPM	2021-09-03 09:39:41.156034
195	Saint Vincent and the Grenadines	{"cn": "圣文森特和格林纳丁斯", "en": "Saint Vincent and the Grenadines", "id": "Saint Vincent dan Grenadines", "jp": "セントビンセントおよびグレナディーン諸島", "kr": "세인트 빈센트 그레나딘"}	Kingstown	https://restcountries.eu/data/vct.svg	VC	VCT	2021-09-03 09:39:41.156034
196	Samoa	{"cn": "萨摩亚", "en": "Samoa", "id": "Samoa", "jp": "サモア", "kr": "사모아"}	Apia	https://restcountries.eu/data/wsm.svg	WS	WSM	2021-09-03 09:39:41.156034
197	San Marino	{"cn": "圣马力诺", "en": "San Marino", "id": "San Marino", "jp": "サンマリノ", "kr": "산 마리노"}	City of San Marino	https://restcountries.eu/data/smr.svg	SM	SMR	2021-09-03 09:39:41.156034
198	Sao Tome and Principe	{"cn": "圣多美和普林西比", "en": "Sao Tome and Principe", "id": "Sao Tome dan Principe", "jp": "サントメ・プリンシペ", "kr": "상투메프린시페"}	São Tomé	https://restcountries.eu/data/stp.svg	ST	STP	2021-09-03 09:39:41.156034
199	Saudi Arabia	{"cn": "沙特阿拉伯", "en": "Saudi Arabia", "id": "Arab Saudi", "jp": "サウジアラビア", "kr": "사우디 아라비아"}	Riyadh	https://restcountries.eu/data/sau.svg	SA	SAU	2021-09-03 09:39:41.156034
200	Senegal	{"cn": "塞内加尔", "en": "Senegal", "id": "Senegal", "jp": "セネガル", "kr": "세네갈"}	Dakar	https://restcountries.eu/data/sen.svg	SN	SEN	2021-09-03 09:39:41.156034
201	Serbia	{"cn": "塞尔维亚", "en": "Serbia", "id": "Serbia", "jp": "セルビア", "kr": "세르비아"}	Belgrade	https://restcountries.eu/data/srb.svg	RS	SRB	2021-09-03 09:39:41.156034
202	Seychelles	{"cn": "塞舌尔", "en": "Seychelles", "id": "Seychelles", "jp": "セイシェル", "kr": "세이셸"}	Victoria	https://restcountries.eu/data/syc.svg	SC	SYC	2021-09-03 09:39:41.156034
203	Sierra Leone	{"cn": "塞拉利昂", "en": "Sierra Leone", "id": "Sierra Leone", "jp": "シエラレオネ", "kr": "시에라리온"}	Freetown	https://restcountries.eu/data/sle.svg	SL	SLE	2021-09-03 09:39:41.156034
204	Singapore	{"cn": "新加坡", "en": "Singapore", "id": "Singapura", "jp": "シンガポール", "kr": "싱가포르"}	Singapore	https://restcountries.eu/data/sgp.svg	SG	SGP	2021-09-03 09:39:41.156034
205	Sint Maarten (Dutch part)	{"cn": "圣马丁岛（荷兰部分）", "en": "Sint Maarten (Dutch part)", "id": "Sint Maarten (bagian Belanda)", "jp": "シント・マールテン（オランダ語部分）", "kr": "신트 마르텐(네덜란드 부분)"}	Philipsburg	https://restcountries.eu/data/sxm.svg	SX	SXM	2021-09-03 09:39:41.156034
206	Slovakia	{"cn": "斯洛伐克", "en": "Slovakia", "id": "Slowakia", "jp": "スロバキア", "kr": "슬로바키아"}	Bratislava	https://restcountries.eu/data/svk.svg	SK	SVK	2021-09-03 09:39:41.156034
207	Slovenia	{"cn": "斯洛文尼亚", "en": "Slovenia", "id": "Slovenia", "jp": "スロベニア", "kr": "슬로베니아"}	Ljubljana	https://restcountries.eu/data/svn.svg	SI	SVN	2021-09-03 09:39:41.156034
208	Solomon Islands	{"cn": "所罗门群岛", "en": "Solomon Islands", "id": "Pulau Solomon", "jp": "ソロモン諸島", "kr": "솔로몬 제도"}	Honiara	https://restcountries.eu/data/slb.svg	SB	SLB	2021-09-03 09:39:41.156034
209	Somalia	{"cn": "索马里", "en": "Somalia", "id": "Somalia", "jp": "ソマリア", "kr": "소말리아"}	Mogadishu	https://restcountries.eu/data/som.svg	SO	SOM	2021-09-03 09:39:41.156034
210	South Africa	{"cn": "南非", "en": "South Africa", "id": "Afrika Selatan", "jp": "南アフリカ", "kr": "남아프리카"}	Pretoria	https://restcountries.eu/data/zaf.svg	ZA	ZAF	2021-09-03 09:39:41.156034
211	South Georgia and the South Sandwich Islands	{"cn": "南乔治亚岛和南桑威奇群岛", "en": "South Georgia and the South Sandwich Islands", "id": "Georgia Selatan dan Kepulauan Sandwich Selatan", "jp": "サウスジョージア島とサウスサンドイッチ諸島", "kr": "사우스 조지아 및 사우스 샌드위치 제도"}	King Edward Point	https://restcountries.eu/data/sgs.svg	GS	SGS	2021-09-03 09:39:41.156034
212	Korea (Republic of)	{"cn": "大韩民国", "en": "Korea (Republic of)", "id": "Korea (Republik)", "jp": "大韓民国）", "kr": "대한민국)"}	Seoul	https://restcountries.eu/data/kor.svg	KR	KOR	2021-09-03 09:39:41.156034
213	South Sudan	{"cn": "南苏丹", "en": "South Sudan", "id": "Sudan Selatan", "jp": "南スーダン", "kr": "남 수단"}	Juba	https://restcountries.eu/data/ssd.svg	SS	SSD	2021-09-03 09:39:41.156034
214	Spain	{"cn": "西班牙", "en": "Spain", "id": "Spanyol", "jp": "スペイン", "kr": "스페인"}	Madrid	https://restcountries.eu/data/esp.svg	ES	ESP	2021-09-03 09:39:41.156034
215	Sri Lanka	{"cn": "斯里兰卡", "en": "Sri Lanka", "id": "Srilanka", "jp": "スリランカ", "kr": "스리랑카"}	Colombo	https://restcountries.eu/data/lka.svg	LK	LKA	2021-09-03 09:39:41.156034
216	Sudan	{"cn": "苏丹", "en": "Sudan", "id": "Sudan", "jp": "スーダン", "kr": "수단"}	Khartoum	https://restcountries.eu/data/sdn.svg	SD	SDN	2021-09-03 09:39:41.156034
217	Suriname	{"cn": "苏里南", "en": "Suriname", "id": "Suriname", "jp": "スリナム", "kr": "수리남"}	Paramaribo	https://restcountries.eu/data/sur.svg	SR	SUR	2021-09-03 09:39:41.156034
218	Svalbard and Jan Mayen	{"cn": "斯瓦尔巴和扬马延", "en": "Svalbard and Jan Mayen", "id": "Svalbard dan Jan Mayen", "jp": "スバールバル諸島およびヤンマイエン", "kr": "스발바르와 얀 마옌"}	Longyearbyen	https://restcountries.eu/data/sjm.svg	SJ	SJM	2021-09-03 09:39:41.156034
219	Swaziland	{"cn": "斯威士兰", "en": "Swaziland", "id": "Swaziland", "jp": "スワジランド", "kr": "스와질랜드"}	Lobamba	https://restcountries.eu/data/swz.svg	SZ	SWZ	2021-09-03 09:39:41.156034
220	Sweden	{"cn": "瑞典", "en": "Sweden", "id": "Swedia", "jp": "スウェーデン", "kr": "스웨덴"}	Stockholm	https://restcountries.eu/data/swe.svg	SE	SWE	2021-09-03 09:39:41.156034
221	Switzerland	{"cn": "瑞士", "en": "Switzerland", "id": "Swiss", "jp": "スイス", "kr": "스위스"}	Bern	https://restcountries.eu/data/che.svg	CH	CHE	2021-09-03 09:39:41.156034
222	Syrian Arab Republic	{"cn": "阿拉伯叙利亚共和国", "en": "Syrian Arab Republic", "id": "Republik Arab Syria", "jp": "シリアアラブ共和国", "kr": "시리아 아랍 공화국"}	Damascus	https://restcountries.eu/data/syr.svg	SY	SYR	2021-09-03 09:39:41.156034
223	Taiwan	{"cn": "台湾", "en": "Taiwan", "id": "Taiwan", "jp": "台湾", "kr": "대만"}	Taipei	https://restcountries.eu/data/twn.svg	TW	TWN	2021-09-03 09:39:41.156034
224	Tajikistan	{"cn": "塔吉克斯坦", "en": "Tajikistan", "id": "Tajikistan", "jp": "タジキスタン", "kr": "타지키스탄"}	Dushanbe	https://restcountries.eu/data/tjk.svg	TJ	TJK	2021-09-03 09:39:41.156034
225	Tanzania, United Republic of	{"cn": "坦桑尼亚联合共和国", "en": "Tanzania, United Republic of", "id": "Tanzania, Republik Bersatu", "jp": "タンザニア、連合共和国", "kr": "탄자니아, 연합 공화국"}	Dodoma	https://restcountries.eu/data/tza.svg	TZ	TZA	2021-09-03 09:39:41.156034
226	Thailand	{"cn": "泰国", "en": "Thailand", "id": "Thailand", "jp": "タイ", "kr": "태국"}	Bangkok	https://restcountries.eu/data/tha.svg	TH	THA	2021-09-03 09:39:41.156034
227	Timor-Leste	{"cn": "东帝汶", "en": "Timor-Leste", "id": "Timor Timur", "jp": "東ティモール", "kr": "동 티모르"}	Dili	https://restcountries.eu/data/tls.svg	TL	TLS	2021-09-03 09:39:41.156034
228	Togo	{"cn": "多哥", "en": "Togo", "id": "Untuk pergi", "jp": "トーゴ", "kr": "토고"}	Lomé	https://restcountries.eu/data/tgo.svg	TG	TGO	2021-09-03 09:39:41.156034
229	Tokelau	{"cn": "托克劳", "en": "Tokelau", "id": "Tokelau", "jp": "トケラウ", "kr": "토켈라우"}	Fakaofo	https://restcountries.eu/data/tkl.svg	TK	TKL	2021-09-03 09:39:41.156034
230	Tonga	{"cn": "汤加", "en": "Tonga", "id": "Tonga", "jp": "トンガ", "kr": "통가"}	Nuku'alofa	https://restcountries.eu/data/ton.svg	TO	TON	2021-09-03 09:39:41.156034
231	Trinidad and Tobago	{"cn": "特立尼达和多巴哥", "en": "Trinidad and Tobago", "id": "Trinidad dan Tobago", "jp": "トリニダード・トバゴ", "kr": "트리니다드토바고"}	Port of Spain	https://restcountries.eu/data/tto.svg	TT	TTO	2021-09-03 09:39:41.156034
232	Tunisia	{"cn": "突尼斯", "en": "Tunisia", "id": "Tunisia", "jp": "チュニジア", "kr": "튀니지"}	Tunis	https://restcountries.eu/data/tun.svg	TN	TUN	2021-09-03 09:39:41.156034
233	Turkey	{"cn": "火鸡", "en": "Turkey", "id": "Turki", "jp": "七面鳥", "kr": "칠면조"}	Ankara	https://restcountries.eu/data/tur.svg	TR	TUR	2021-09-03 09:39:41.156034
234	Turkmenistan	{"cn": "土库曼斯坦", "en": "Turkmenistan", "id": "Turkmenistan", "jp": "トルクメニスタン", "kr": "투르크메니스탄"}	Ashgabat	https://restcountries.eu/data/tkm.svg	TM	TKM	2021-09-03 09:39:41.156034
235	Turks and Caicos Islands	{"cn": "特克斯和凯科斯群岛", "en": "Turks and Caicos Islands", "id": "Kepulauan Turks dan Caicos", "jp": "タークス・カイコス諸島", "kr": "터크스케이커스 제도"}	Cockburn Town	https://restcountries.eu/data/tca.svg	TC	TCA	2021-09-03 09:39:41.156034
236	Tuvalu	{"cn": "图瓦卢", "en": "Tuvalu", "id": "Tuvalu", "jp": "ツバル", "kr": "투발루"}	Funafuti	https://restcountries.eu/data/tuv.svg	TV	TUV	2021-09-03 09:39:41.156034
237	Uganda	{"cn": "乌干达", "en": "Uganda", "id": "Uganda", "jp": "ウガンダ", "kr": "우간다"}	Kampala	https://restcountries.eu/data/uga.svg	UG	UGA	2021-09-03 09:39:41.156034
238	Ukraine	{"cn": "乌克兰", "en": "Ukraine", "id": "Ukraina", "jp": "ウクライナ", "kr": "우크라이나"}	Kiev	https://restcountries.eu/data/ukr.svg	UA	UKR	2021-09-03 09:39:41.156034
239	United Arab Emirates	{"cn": "阿拉伯联合酋长国", "en": "United Arab Emirates", "id": "Uni Emirat Arab", "jp": "アラブ首長国連邦", "kr": "아랍 에미리트"}	Abu Dhabi	https://restcountries.eu/data/are.svg	AE	ARE	2021-09-03 09:39:41.156034
240	United Kingdom of Great Britain and Northern Ireland	{"cn": "大不列颠及北爱尔兰联合王国", "en": "United Kingdom of Great Britain and Northern Ireland", "id": "Kerajaan Inggris Raya dan Irlandia Utara", "jp": "グレートブリテンおよび北アイルランド連合王国", "kr": "그레이트브리튼 및 북아일랜드 연합왕국"}	London	https://restcountries.eu/data/gbr.svg	GB	GBR	2021-09-03 09:39:41.156034
241	United States of America	{"cn": "美国", "en": "United States of America", "id": "Amerika Serikat", "jp": "アメリカ合衆国", "kr": "미국"}	Washington, D.C.	https://restcountries.eu/data/usa.svg	US	USA	2021-09-03 09:39:41.156034
242	Uruguay	{"cn": "乌拉圭", "en": "Uruguay", "id": "Uruguay", "jp": "ウルグアイ", "kr": "우루과이"}	Montevideo	https://restcountries.eu/data/ury.svg	UY	URY	2021-09-03 09:39:41.156034
243	Uzbekistan	{"cn": "乌兹别克斯坦", "en": "Uzbekistan", "id": "Uzbekistan", "jp": "ウズベキスタン", "kr": "우즈베키스탄"}	Tashkent	https://restcountries.eu/data/uzb.svg	UZ	UZB	2021-09-03 09:39:41.156034
244	Vanuatu	{"cn": "瓦努阿图", "en": "Vanuatu", "id": "Vanuatu", "jp": "バヌアツ", "kr": "바누아투"}	Port Vila	https://restcountries.eu/data/vut.svg	VU	VUT	2021-09-03 09:39:41.156034
245	Venezuela (Bolivarian Republic of)	{"cn": "委内瑞拉（玻利瓦尔共和国）", "en": "Venezuela (Bolivarian Republic of)", "id": "Venezuela (Republik Bolivia)", "jp": "ベネズエラ（ボリバル共和国）", "kr": "베네수엘라(볼리바리아 공화국)"}	Caracas	https://restcountries.eu/data/ven.svg	VE	VEN	2021-09-03 09:39:41.156034
246	Viet Nam	{"cn": "越南", "en": "Viet Nam", "id": "Vietnam", "jp": "ベトナム", "kr": "베트남"}	Hanoi	https://restcountries.eu/data/vnm.svg	VN	VNM	2021-09-03 09:39:41.156034
247	Wallis and Futuna	{"cn": "瓦利斯和富图纳", "en": "Wallis and Futuna", "id": "Wallis dan Futuna", "jp": "ウォリス・フツナ", "kr": "월리스와 푸투나"}	Mata-Utu	https://restcountries.eu/data/wlf.svg	WF	WLF	2021-09-03 09:39:41.156034
248	Western Sahara	{"cn": "西撒哈拉", "en": "Western Sahara", "id": "Sahara Barat", "jp": "西サハラ", "kr": "서부 사하라"}	El Aaiún	https://restcountries.eu/data/esh.svg	EH	ESH	2021-09-03 09:39:41.156034
249	Yemen	{"cn": "也门", "en": "Yemen", "id": "Yaman", "jp": "イエメン", "kr": "예멘"}	Sana'a	https://restcountries.eu/data/yem.svg	YE	YEM	2021-09-03 09:39:41.156034
250	Zambia	{"cn": "赞比亚", "en": "Zambia", "id": "Zambia", "jp": "ザンビア", "kr": "잠비아"}	Lusaka	https://restcountries.eu/data/zmb.svg	ZM	ZMB	2021-09-03 09:39:41.156034
251	Zimbabwe	{"cn": "津巴布韦", "en": "Zimbabwe", "id": "Zimbabwe", "jp": "ジンバブエ", "kr": "짐바브웨"}	Harare	https://restcountries.eu/data/zwe.svg	ZW	ZWE	2021-09-03 09:39:41.156034
\.


--
-- Name: countries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: fajrulakram
--

SELECT pg_catalog.setval('public.countries_id_seq', 251, true);


--
-- Name: countries countries_pkey; Type: CONSTRAINT; Schema: public; Owner: fajrulakram
--

ALTER TABLE ONLY public.countries
    ADD CONSTRAINT countries_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

