\ Model tindor_dates
\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  stress_time_Emma + stress_time_Hanna + stress_time_Mia + stress_time_Lelli
   + stress_time_Sofia + stress_time_Lina + stress_time_Mila
   + stress_time_Tanja + stress_time_Lea + stress_time_Marie
   + stress_time_Ella + stress_time_Ben + stress_time_Leon
   + stress_time_Paul + stress_time_Jonas + stress_time_Felix
   + stress_time_Noah + stress_time_Marco + stress_time_Finn
   + stress_time_Luis + stress_time_Elias + stress_time_Lukas
   + stress_time_Günther + stress_time_Frank
Subject To
 R0: time_Emma_dummy = 0
 R1: C240 = 1
 R2: C241 = 1
 R3: C242 = 1
 R4: time_Hanna_dummy = 0
 R5: C243 = 1
 R6: C244 = 1
 R7: C245 = 1
 R8: time_Mia_dummy = 0
 R9: C246 = 1
 R10: C247 = 1
 R11: C248 = 1
 R12: time_Lelli_dummy = 0
 R13: C249 = 1
 R14: C250 = 1
 R15: C251 = 1
 R16: time_Sofia_dummy = 0
 R17: C252 = 1
 R18: C253 = 1
 R19: C254 = 1
 R20: time_Lina_dummy = 0
 R21: C255 = 1
 R22: C256 = 1
 R23: C257 = 1
 R24: time_Mila_dummy = 0
 R25: C258 = 1
 R26: C259 = 1
 R27: C260 = 1
 R28: time_Tanja_dummy = 0
 R29: C261 = 1
 R30: C262 = 1
 R31: C263 = 1
 R32: time_Lea_dummy = 0
 R33: C264 = 1
 R34: C265 = 1
 R35: C266 = 1
 R36: time_Marie_dummy = 0
 R37: C267 = 1
 R38: C268 = 1
 R39: C269 = 1
 R40: time_Ella_dummy = 0
 R41: C270 = 1
 R42: C271 = 1
 R43: C272 = 1
 R44: time_Ben_dummy = 0
 R45: C273 = 1
 R46: C274 = 1
 R47: C275 = 1
 R48: time_Leon_dummy = 0
 R49: C276 = 1
 R50: C277 = 1
 R51: C278 = 1
 R52: time_Paul_dummy = 0
 R53: C279 = 1
 R54: C280 = 1
 R55: C281 = 1
 R56: time_Jonas_dummy = 0
 R57: C282 = 1
 R58: C283 = 1
 R59: C284 = 1
 R60: time_Felix_dummy = 0
 R61: C285 = 1
 R62: C286 = 1
 R63: C287 = 1
 R64: time_Noah_dummy = 0
 R65: C288 = 1
 R66: C289 = 1
 R67: C290 = 1
 R68: time_Marco_dummy = 0
 R69: C291 = 1
 R70: C292 = 1
 R71: C293 = 1
 R72: time_Finn_dummy = 0
 R73: C294 = 1
 R74: C295 = 1
 R75: C296 = 1
 R76: time_Luis_dummy = 0
 R77: C297 = 1
 R78: C298 = 1
 R79: C299 = 1
 R80: time_Elias_dummy = 0
 R81: C300 = 1
 R82: C301 = 1
 R83: C302 = 1
 R84: time_Lukas_dummy = 0
 R85: C303 = 1
 R86: C304 = 1
 R87: C305 = 1
 R88: time_Günther_dummy = 0
 R89: C306 = 1
 R90: C307 = 1
 R91: C308 = 1
 R92: time_Frank_dummy = 0
 R93: C309 = 1
 R94: C310 = 1
 R95: C311 = 1
 R96: time_Emma_Lousberg - time_Leon_Lousberg = 0
 R97: time_Emma_Sowiso - time_Frank_Sowiso = 0
 R98: time_Hanna_Lousberg - time_Sofia_Lousberg = 0
 R99: time_Hanna_Frankenberger_Park - time_Marie_Frankenberger_Park = 0
 R100: time_Mia_chair_of_Operations_Research
   - time_Noah_chair_of_Operations_Research = 0
 R101: time_Mia_Lousberg - time_Marco_Lousberg = 0
 R102: time_Lelli_Lulus_Coffee - time_Leon_Lulus_Coffee = 0
 R103: time_Lelli_Pennerrondell - time_Frank_Pennerrondell = 0
 R104: - time_Hanna_Lousberg + time_Sofia_Lousberg = 0
 R105: time_Sofia_Aposto - time_Finn_Aposto = 0
 R106: time_Lina_Frankenberger_Park - time_Noah_Frankenberger_Park = 0
 R107: time_Lina_Guinness_House - time_Marco_Guinness_House = 0
 R108: time_Mila_Lulus_Coffee - time_Jonas_Lulus_Coffee = 0
 R109: time_Mila_Cafe_Hase - time_Luis_Cafe_Hase = 0
 R110: time_Tanja_Frankenberger_Park - time_Jonas_Frankenberger_Park = 0
 R111: time_Tanja_Lulus_Coffee - time_Luis_Lulus_Coffee = 0
 R112: time_Lea_Aposto - time_Lukas_Aposto = 0
 R113: time_Lea_Cafe_Hase - time_Günther_Cafe_Hase = 0
 R114: - time_Hanna_Frankenberger_Park + time_Marie_Frankenberger_Park = 0
 R115: time_Marie_Sowiso - time_Paul_Sowiso = 0
 R116: time_Ella_Lulus_Coffee - time_Lukas_Lulus_Coffee = 0
 R117: time_Ella_Guinness_House - time_Günther_Guinness_House = 0
 R118: time_Ben_chair_of_Operations_Research
   - time_Felix_chair_of_Operations_Research = 0
 R119: time_Ben_Guinness_House - time_Elias_Guinness_House = 0
 R120: - time_Emma_Lousberg + time_Leon_Lousberg = 0
 R121: - time_Lelli_Lulus_Coffee + time_Leon_Lulus_Coffee = 0
 R122: - time_Marie_Sowiso + time_Paul_Sowiso = 0
 R123: time_Paul_Cafe_Hase - time_Finn_Cafe_Hase = 0
 R124: - time_Mila_Lulus_Coffee + time_Jonas_Lulus_Coffee = 0
 R125: - time_Tanja_Frankenberger_Park + time_Jonas_Frankenberger_Park = 0
 R126: - time_Ben_chair_of_Operations_Research
   + time_Felix_chair_of_Operations_Research = 0
 R127: time_Felix_Die_Kiste - time_Elias_Die_Kiste = 0
 R128: - time_Mia_chair_of_Operations_Research
   + time_Noah_chair_of_Operations_Research = 0
 R129: - time_Lina_Frankenberger_Park + time_Noah_Frankenberger_Park = 0
 R130: - time_Mia_Lousberg + time_Marco_Lousberg = 0
 R131: - time_Lina_Guinness_House + time_Marco_Guinness_House = 0
 R132: - time_Sofia_Aposto + time_Finn_Aposto = 0
 R133: - time_Paul_Cafe_Hase + time_Finn_Cafe_Hase = 0
 R134: - time_Mila_Cafe_Hase + time_Luis_Cafe_Hase = 0
 R135: - time_Tanja_Lulus_Coffee + time_Luis_Lulus_Coffee = 0
 R136: - time_Ben_Guinness_House + time_Elias_Guinness_House = 0
 R137: - time_Felix_Die_Kiste + time_Elias_Die_Kiste = 0
 R138: - time_Lea_Aposto + time_Lukas_Aposto = 0
 R139: - time_Ella_Lulus_Coffee + time_Lukas_Lulus_Coffee = 0
 R140: - time_Lea_Cafe_Hase + time_Günther_Cafe_Hase = 0
 R141: - time_Ella_Guinness_House + time_Günther_Guinness_House = 0
 R142: - time_Emma_Sowiso + time_Frank_Sowiso = 0
 R143: - time_Lelli_Pennerrondell + time_Frank_Pennerrondell = 0
 R144: travel_Emma_Lousberg_Sowiso + travel_Emma_Lousberg_dummy - C240 = 0
 R145: travel_Emma_Sowiso_Lousberg + travel_Emma_Sowiso_dummy - C241 = 0
 R146: travel_Emma_dummy_Lousberg + travel_Emma_dummy_Sowiso - C242 = 0
 R147: travel_Hanna_Lousberg_Frankenberger_Park
   + travel_Hanna_Lousberg_dummy - C243 = 0
 R148: travel_Hanna_Frankenberger_Park_Lousberg
   + travel_Hanna_Frankenberger_Park_dummy - C244 = 0
 R149: travel_Hanna_dummy_Lousberg + travel_Hanna_dummy_Frankenberger_Park
   - C245 = 0
 R150: travel_Mia_chair_of_Operations_Research_Lousberg
   + travel_Mia_chair_of_Operations_Research_dummy - C246 = 0
 R151: travel_Mia_Lousberg_chair_of_Operations_Research
   + travel_Mia_Lousberg_dummy - C247 = 0
 R152: travel_Mia_dummy_chair_of_Operations_Research
   + travel_Mia_dummy_Lousberg - C248 = 0
 R153: travel_Lelli_Lulus_Coffee_Pennerrondell
   + travel_Lelli_Lulus_Coffee_dummy - C249 = 0
 R154: travel_Lelli_Pennerrondell_Lulus_Coffee
   + travel_Lelli_Pennerrondell_dummy - C250 = 0
 R155: travel_Lelli_dummy_Lulus_Coffee + travel_Lelli_dummy_Pennerrondell
   - C251 = 0
 R156: travel_Sofia_Lousberg_Aposto + travel_Sofia_Lousberg_dummy - C252
   = 0
 R157: travel_Sofia_Aposto_Lousberg + travel_Sofia_Aposto_dummy - C253 = 0
 R158: travel_Sofia_dummy_Lousberg + travel_Sofia_dummy_Aposto - C254 = 0
 R159: travel_Lina_Frankenberger_Park_Guinness_House
   + travel_Lina_Frankenberger_Park_dummy - C255 = 0
 R160: travel_Lina_Guinness_House_Frankenberger_Park
   + travel_Lina_Guinness_House_dummy - C256 = 0
 R161: travel_Lina_dummy_Frankenberger_Park
   + travel_Lina_dummy_Guinness_House - C257 = 0
 R162: travel_Mila_Lulus_Coffee_Cafe_Hase + travel_Mila_Lulus_Coffee_dummy
   - C258 = 0
 R163: travel_Mila_Cafe_Hase_Lulus_Coffee + travel_Mila_Cafe_Hase_dummy
   - C259 = 0
 R164: travel_Mila_dummy_Lulus_Coffee + travel_Mila_dummy_Cafe_Hase - C260
   = 0
 R165: travel_Tanja_Frankenberger_Park_Lulus_Coffee
   + travel_Tanja_Frankenberger_Park_dummy - C261 = 0
 R166: travel_Tanja_Lulus_Coffee_Frankenberger_Park
   + travel_Tanja_Lulus_Coffee_dummy - C262 = 0
 R167: travel_Tanja_dummy_Frankenberger_Park
   + travel_Tanja_dummy_Lulus_Coffee - C263 = 0
 R168: travel_Lea_Aposto_Cafe_Hase + travel_Lea_Aposto_dummy - C264 = 0
 R169: travel_Lea_Cafe_Hase_Aposto + travel_Lea_Cafe_Hase_dummy - C265 = 0
 R170: travel_Lea_dummy_Aposto + travel_Lea_dummy_Cafe_Hase - C266 = 0
 R171: travel_Marie_Frankenberger_Park_Sowiso
   + travel_Marie_Frankenberger_Park_dummy - C267 = 0
 R172: travel_Marie_Sowiso_Frankenberger_Park + travel_Marie_Sowiso_dummy
   - C268 = 0
 R173: travel_Marie_dummy_Frankenberger_Park + travel_Marie_dummy_Sowiso
   - C269 = 0
 R174: travel_Ella_Lulus_Coffee_Guinness_House
   + travel_Ella_Lulus_Coffee_dummy - C270 = 0
 R175: travel_Ella_Guinness_House_Lulus_Coffee
   + travel_Ella_Guinness_House_dummy - C271 = 0
 R176: travel_Ella_dummy_Lulus_Coffee + travel_Ella_dummy_Guinness_House
   - C272 = 0
 R177: travel_Ben_chair_of_Operations_Research_Guinness_House
   + travel_Ben_chair_of_Operations_Research_dummy - C273 = 0
 R178: travel_Ben_Guinness_House_chair_of_Operations_Research
   + travel_Ben_Guinness_House_dummy - C274 = 0
 R179: travel_Ben_dummy_chair_of_Operations_Research
   + travel_Ben_dummy_Guinness_House - C275 = 0
 R180: travel_Leon_Lousberg_Lulus_Coffee + travel_Leon_Lousberg_dummy
   - C276 = 0
 R181: travel_Leon_Lulus_Coffee_Lousberg + travel_Leon_Lulus_Coffee_dummy
   - C277 = 0
 R182: travel_Leon_dummy_Lousberg + travel_Leon_dummy_Lulus_Coffee - C278
   = 0
 R183: travel_Paul_Sowiso_Cafe_Hase + travel_Paul_Sowiso_dummy - C279 = 0
 R184: travel_Paul_Cafe_Hase_Sowiso + travel_Paul_Cafe_Hase_dummy - C280
   = 0
 R185: travel_Paul_dummy_Sowiso + travel_Paul_dummy_Cafe_Hase - C281 = 0
 R186: travel_Jonas_Lulus_Coffee_Frankenberger_Park
   + travel_Jonas_Lulus_Coffee_dummy - C282 = 0
 R187: travel_Jonas_Frankenberger_Park_Lulus_Coffee
   + travel_Jonas_Frankenberger_Park_dummy - C283 = 0
 R188: travel_Jonas_dummy_Lulus_Coffee
   + travel_Jonas_dummy_Frankenberger_Park - C284 = 0
 R189: travel_Felix_chair_of_Operations_Research_Die_Kiste
   + travel_Felix_chair_of_Operations_Research_dummy - C285 = 0
 R190: travel_Felix_Die_Kiste_chair_of_Operations_Research
   + travel_Felix_Die_Kiste_dummy - C286 = 0
 R191: travel_Felix_dummy_chair_of_Operations_Research
   + travel_Felix_dummy_Die_Kiste - C287 = 0
 R192: travel_Noah_chair_of_Operations_Research_Frankenberger_Park
   + travel_Noah_chair_of_Operations_Research_dummy - C288 = 0
 R193: travel_Noah_Frankenberger_Park_chair_of_Operations_Research
   + travel_Noah_Frankenberger_Park_dummy - C289 = 0
 R194: travel_Noah_dummy_chair_of_Operations_Research
   + travel_Noah_dummy_Frankenberger_Park - C290 = 0
 R195: travel_Marco_Lousberg_Guinness_House + travel_Marco_Lousberg_dummy
   - C291 = 0
 R196: travel_Marco_Guinness_House_Lousberg
   + travel_Marco_Guinness_House_dummy - C292 = 0
 R197: travel_Marco_dummy_Lousberg + travel_Marco_dummy_Guinness_House
   - C293 = 0
 R198: travel_Finn_Aposto_Cafe_Hase + travel_Finn_Aposto_dummy - C294 = 0
 R199: travel_Finn_Cafe_Hase_Aposto + travel_Finn_Cafe_Hase_dummy - C295
   = 0
 R200: travel_Finn_dummy_Aposto + travel_Finn_dummy_Cafe_Hase - C296 = 0
 R201: travel_Luis_Cafe_Hase_Lulus_Coffee + travel_Luis_Cafe_Hase_dummy
   - C297 = 0
 R202: travel_Luis_Lulus_Coffee_Cafe_Hase + travel_Luis_Lulus_Coffee_dummy
   - C298 = 0
 R203: travel_Luis_dummy_Cafe_Hase + travel_Luis_dummy_Lulus_Coffee - C299
   = 0
 R204: travel_Elias_Guinness_House_Die_Kiste
   + travel_Elias_Guinness_House_dummy - C300 = 0
 R205: travel_Elias_Die_Kiste_Guinness_House + travel_Elias_Die_Kiste_dummy
   - C301 = 0
 R206: travel_Elias_dummy_Guinness_House + travel_Elias_dummy_Die_Kiste
   - C302 = 0
 R207: travel_Lukas_Aposto_Lulus_Coffee + travel_Lukas_Aposto_dummy - C303
   = 0
 R208: travel_Lukas_Lulus_Coffee_Aposto + travel_Lukas_Lulus_Coffee_dummy
   - C304 = 0
 R209: travel_Lukas_dummy_Aposto + travel_Lukas_dummy_Lulus_Coffee - C305
   = 0
 R210: travel_Günther_Cafe_Hase_Guinness_House
   + travel_Günther_Cafe_Hase_dummy - C306 = 0
 R211: travel_Günther_Guinness_House_Cafe_Hase
   + travel_Günther_Guinness_House_dummy - C307 = 0
 R212: travel_Günther_dummy_Cafe_Hase
   + travel_Günther_dummy_Guinness_House - C308 = 0
 R213: travel_Frank_Sowiso_Pennerrondell + travel_Frank_Sowiso_dummy - C309
   = 0
 R214: travel_Frank_Pennerrondell_Sowiso + travel_Frank_Pennerrondell_dummy
   - C310 = 0
 R215: travel_Frank_dummy_Sowiso + travel_Frank_dummy_Pennerrondell - C311
   = 0
 R216: travel_Emma_Sowiso_Lousberg + travel_Emma_dummy_Lousberg - C240 = 0
 R217: travel_Emma_Lousberg_Sowiso + travel_Emma_dummy_Sowiso - C241 = 0
 R218: travel_Emma_Lousberg_dummy + travel_Emma_Sowiso_dummy - C242 = 0
 R219: travel_Hanna_Frankenberger_Park_Lousberg
   + travel_Hanna_dummy_Lousberg - C243 = 0
 R220: travel_Hanna_Lousberg_Frankenberger_Park
   + travel_Hanna_dummy_Frankenberger_Park - C244 = 0
 R221: travel_Hanna_Lousberg_dummy + travel_Hanna_Frankenberger_Park_dummy
   - C245 = 0
 R222: travel_Mia_Lousberg_chair_of_Operations_Research
   + travel_Mia_dummy_chair_of_Operations_Research - C246 = 0
 R223: travel_Mia_chair_of_Operations_Research_Lousberg
   + travel_Mia_dummy_Lousberg - C247 = 0
 R224: travel_Mia_chair_of_Operations_Research_dummy
   + travel_Mia_Lousberg_dummy - C248 = 0
 R225: travel_Lelli_Pennerrondell_Lulus_Coffee
   + travel_Lelli_dummy_Lulus_Coffee - C249 = 0
 R226: travel_Lelli_Lulus_Coffee_Pennerrondell
   + travel_Lelli_dummy_Pennerrondell - C250 = 0
 R227: travel_Lelli_Lulus_Coffee_dummy + travel_Lelli_Pennerrondell_dummy
   - C251 = 0
 R228: travel_Sofia_Aposto_Lousberg + travel_Sofia_dummy_Lousberg - C252
   = 0
 R229: travel_Sofia_Lousberg_Aposto + travel_Sofia_dummy_Aposto - C253 = 0
 R230: travel_Sofia_Lousberg_dummy + travel_Sofia_Aposto_dummy - C254 = 0
 R231: travel_Lina_Guinness_House_Frankenberger_Park
   + travel_Lina_dummy_Frankenberger_Park - C255 = 0
 R232: travel_Lina_Frankenberger_Park_Guinness_House
   + travel_Lina_dummy_Guinness_House - C256 = 0
 R233: travel_Lina_Frankenberger_Park_dummy
   + travel_Lina_Guinness_House_dummy - C257 = 0
 R234: travel_Mila_Cafe_Hase_Lulus_Coffee + travel_Mila_dummy_Lulus_Coffee
   - C258 = 0
 R235: travel_Mila_Lulus_Coffee_Cafe_Hase + travel_Mila_dummy_Cafe_Hase
   - C259 = 0
 R236: travel_Mila_Lulus_Coffee_dummy + travel_Mila_Cafe_Hase_dummy - C260
   = 0
 R237: travel_Tanja_Lulus_Coffee_Frankenberger_Park
   + travel_Tanja_dummy_Frankenberger_Park - C261 = 0
 R238: travel_Tanja_Frankenberger_Park_Lulus_Coffee
   + travel_Tanja_dummy_Lulus_Coffee - C262 = 0
 R239: travel_Tanja_Frankenberger_Park_dummy
   + travel_Tanja_Lulus_Coffee_dummy - C263 = 0
 R240: travel_Lea_Cafe_Hase_Aposto + travel_Lea_dummy_Aposto - C264 = 0
 R241: travel_Lea_Aposto_Cafe_Hase + travel_Lea_dummy_Cafe_Hase - C265 = 0
 R242: travel_Lea_Aposto_dummy + travel_Lea_Cafe_Hase_dummy - C266 = 0
 R243: travel_Marie_Sowiso_Frankenberger_Park
   + travel_Marie_dummy_Frankenberger_Park - C267 = 0
 R244: travel_Marie_Frankenberger_Park_Sowiso + travel_Marie_dummy_Sowiso
   - C268 = 0
 R245: travel_Marie_Frankenberger_Park_dummy + travel_Marie_Sowiso_dummy
   - C269 = 0
 R246: travel_Ella_Guinness_House_Lulus_Coffee
   + travel_Ella_dummy_Lulus_Coffee - C270 = 0
 R247: travel_Ella_Lulus_Coffee_Guinness_House
   + travel_Ella_dummy_Guinness_House - C271 = 0
 R248: travel_Ella_Lulus_Coffee_dummy + travel_Ella_Guinness_House_dummy
   - C272 = 0
 R249: travel_Ben_Guinness_House_chair_of_Operations_Research
   + travel_Ben_dummy_chair_of_Operations_Research - C273 = 0
 R250: travel_Ben_chair_of_Operations_Research_Guinness_House
   + travel_Ben_dummy_Guinness_House - C274 = 0
 R251: travel_Ben_chair_of_Operations_Research_dummy
   + travel_Ben_Guinness_House_dummy - C275 = 0
 R252: travel_Leon_Lulus_Coffee_Lousberg + travel_Leon_dummy_Lousberg
   - C276 = 0
 R253: travel_Leon_Lousberg_Lulus_Coffee + travel_Leon_dummy_Lulus_Coffee
   - C277 = 0
 R254: travel_Leon_Lousberg_dummy + travel_Leon_Lulus_Coffee_dummy - C278
   = 0
 R255: travel_Paul_Cafe_Hase_Sowiso + travel_Paul_dummy_Sowiso - C279 = 0
 R256: travel_Paul_Sowiso_Cafe_Hase + travel_Paul_dummy_Cafe_Hase - C280
   = 0
 R257: travel_Paul_Sowiso_dummy + travel_Paul_Cafe_Hase_dummy - C281 = 0
 R258: travel_Jonas_Frankenberger_Park_Lulus_Coffee
   + travel_Jonas_dummy_Lulus_Coffee - C282 = 0
 R259: travel_Jonas_Lulus_Coffee_Frankenberger_Park
   + travel_Jonas_dummy_Frankenberger_Park - C283 = 0
 R260: travel_Jonas_Lulus_Coffee_dummy
   + travel_Jonas_Frankenberger_Park_dummy - C284 = 0
 R261: travel_Felix_Die_Kiste_chair_of_Operations_Research
   + travel_Felix_dummy_chair_of_Operations_Research - C285 = 0
 R262: travel_Felix_chair_of_Operations_Research_Die_Kiste
   + travel_Felix_dummy_Die_Kiste - C286 = 0
 R263: travel_Felix_chair_of_Operations_Research_dummy
   + travel_Felix_Die_Kiste_dummy - C287 = 0
 R264: travel_Noah_Frankenberger_Park_chair_of_Operations_Research
   + travel_Noah_dummy_chair_of_Operations_Research - C288 = 0
 R265: travel_Noah_chair_of_Operations_Research_Frankenberger_Park
   + travel_Noah_dummy_Frankenberger_Park - C289 = 0
 R266: travel_Noah_chair_of_Operations_Research_dummy
   + travel_Noah_Frankenberger_Park_dummy - C290 = 0
 R267: travel_Marco_Guinness_House_Lousberg + travel_Marco_dummy_Lousberg
   - C291 = 0
 R268: travel_Marco_Lousberg_Guinness_House
   + travel_Marco_dummy_Guinness_House - C292 = 0
 R269: travel_Marco_Lousberg_dummy + travel_Marco_Guinness_House_dummy
   - C293 = 0
 R270: travel_Finn_Cafe_Hase_Aposto + travel_Finn_dummy_Aposto - C294 = 0
 R271: travel_Finn_Aposto_Cafe_Hase + travel_Finn_dummy_Cafe_Hase - C295
   = 0
 R272: travel_Finn_Aposto_dummy + travel_Finn_Cafe_Hase_dummy - C296 = 0
 R273: travel_Luis_Lulus_Coffee_Cafe_Hase + travel_Luis_dummy_Cafe_Hase
   - C297 = 0
 R274: travel_Luis_Cafe_Hase_Lulus_Coffee + travel_Luis_dummy_Lulus_Coffee
   - C298 = 0
 R275: travel_Luis_Cafe_Hase_dummy + travel_Luis_Lulus_Coffee_dummy - C299
   = 0
 R276: travel_Elias_Die_Kiste_Guinness_House
   + travel_Elias_dummy_Guinness_House - C300 = 0
 R277: travel_Elias_Guinness_House_Die_Kiste + travel_Elias_dummy_Die_Kiste
   - C301 = 0
 R278: travel_Elias_Guinness_House_dummy + travel_Elias_Die_Kiste_dummy
   - C302 = 0
 R279: travel_Lukas_Lulus_Coffee_Aposto + travel_Lukas_dummy_Aposto - C303
   = 0
 R280: travel_Lukas_Aposto_Lulus_Coffee + travel_Lukas_dummy_Lulus_Coffee
   - C304 = 0
 R281: travel_Lukas_Aposto_dummy + travel_Lukas_Lulus_Coffee_dummy - C305
   = 0
 R282: travel_Günther_Guinness_House_Cafe_Hase
   + travel_Günther_dummy_Cafe_Hase - C306 = 0
 R283: travel_Günther_Cafe_Hase_Guinness_House
   + travel_Günther_dummy_Guinness_House - C307 = 0
 R284: travel_Günther_Cafe_Hase_dummy
   + travel_Günther_Guinness_House_dummy - C308 = 0
 R285: travel_Frank_Pennerrondell_Sowiso + travel_Frank_dummy_Sowiso - C309
   = 0
 R286: travel_Frank_Sowiso_Pennerrondell + travel_Frank_dummy_Pennerrondell
   - C310 = 0
 R287: travel_Frank_Sowiso_dummy + travel_Frank_Pennerrondell_dummy - C311
   = 0
 R288: time_Emma_Lousberg >= 0
 R289: time_Emma_Lousberg <= 702.54
 R290: time_Emma_Sowiso >= 60
 R291: time_Emma_Sowiso <= 712.794
 R292: time_Hanna_Lousberg >= 0
 R293: time_Hanna_Lousberg <= 713.124
 R294: time_Hanna_Frankenberger_Park >= 0
 R295: time_Hanna_Frankenberger_Park <= 755.682
 R296: time_Mia_chair_of_Operations_Research >= 0
 R297: time_Mia_chair_of_Operations_Research <= 506.496
 R298: time_Mia_Lousberg >= 0
 R299: time_Mia_Lousberg <= 743.088
 R300: time_Lelli_Lulus_Coffee >= 0
 R301: time_Lelli_Lulus_Coffee <= 490.368
 R302: time_Lelli_Pennerrondell >= 0
 R303: time_Lelli_Pennerrondell <= 710.622
 R304: time_Sofia_Lousberg >= 0
 R305: time_Sofia_Lousberg <= 713.124
 R306: time_Sofia_Aposto >= 120
 R307: time_Sofia_Aposto <= 682.902
 R308: time_Lina_Frankenberger_Park >= 0
 R309: time_Lina_Frankenberger_Park <= 738.21
 R310: time_Lina_Guinness_House >= 540
 R311: time_Lina_Guinness_House <= 734.802
 R312: time_Mila_Lulus_Coffee >= 0
 R313: time_Mila_Lulus_Coffee <= 471.102
 R314: time_Mila_Cafe_Hase >= 0
 R315: time_Mila_Cafe_Hase <= 462.618
 R316: time_Tanja_Frankenberger_Park >= 0
 R317: time_Tanja_Frankenberger_Park <= 683.58
 R318: time_Tanja_Lulus_Coffee >= 0
 R319: time_Tanja_Lulus_Coffee <= 465.096
 R320: time_Lea_Aposto >= 120
 R321: time_Lea_Aposto <= 722.52
 R322: time_Lea_Cafe_Hase >= 0
 R323: time_Lea_Cafe_Hase <= 520.476
 R324: time_Marie_Frankenberger_Park >= 0
 R325: time_Marie_Frankenberger_Park <= 755.682
 R326: time_Marie_Sowiso >= 60
 R327: time_Marie_Sowiso <= 724.422
 R328: time_Ella_Lulus_Coffee >= 0
 R329: time_Ella_Lulus_Coffee <= 510.288
 R330: time_Ella_Guinness_House >= 540
 R331: time_Ella_Guinness_House <= 728.244
 R332: time_Ben_chair_of_Operations_Research >= 0
 R333: time_Ben_chair_of_Operations_Research <= 467.964
 R334: time_Ben_Guinness_House >= 540
 R335: time_Ben_Guinness_House <= 704.25
 R336: time_Leon_Lousberg >= 0
 R337: time_Leon_Lousberg <= 702.54
 R338: time_Leon_Lulus_Coffee >= 0
 R339: time_Leon_Lulus_Coffee <= 490.368
 R340: time_Paul_Sowiso >= 60
 R341: time_Paul_Sowiso <= 724.422
 R342: time_Paul_Cafe_Hase >= 0
 R343: time_Paul_Cafe_Hase <= 473.514
 R344: time_Jonas_Lulus_Coffee >= 0
 R345: time_Jonas_Lulus_Coffee <= 471.102
 R346: time_Jonas_Frankenberger_Park >= 0
 R347: time_Jonas_Frankenberger_Park <= 683.58
 R348: time_Felix_chair_of_Operations_Research >= 0
 R349: time_Felix_chair_of_Operations_Research <= 467.964
 R350: time_Felix_Die_Kiste >= 660
 R351: time_Felix_Die_Kiste <= 697.866
 R352: time_Noah_chair_of_Operations_Research >= 0
 R353: time_Noah_chair_of_Operations_Research <= 506.496
 R354: time_Noah_Frankenberger_Park >= 0
 R355: time_Noah_Frankenberger_Park <= 738.21
 R356: time_Marco_Lousberg >= 0
 R357: time_Marco_Lousberg <= 743.088
 R358: time_Marco_Guinness_House >= 540
 R359: time_Marco_Guinness_House <= 734.802
 R360: time_Finn_Aposto >= 120
 R361: time_Finn_Aposto <= 682.902
 R362: time_Finn_Cafe_Hase >= 0
 R363: time_Finn_Cafe_Hase <= 473.514
 R364: time_Luis_Cafe_Hase >= 0
 R365: time_Luis_Cafe_Hase <= 462.618
 R366: time_Luis_Lulus_Coffee >= 0
 R367: time_Luis_Lulus_Coffee <= 465.096
 R368: time_Elias_Guinness_House >= 540
 R369: time_Elias_Guinness_House <= 704.25
 R370: time_Elias_Die_Kiste >= 660
 R371: time_Elias_Die_Kiste <= 697.866
 R372: time_Lukas_Aposto >= 120
 R373: time_Lukas_Aposto <= 722.52
 R374: time_Lukas_Lulus_Coffee >= 0
 R375: time_Lukas_Lulus_Coffee <= 510.288
 R376: time_Günther_Cafe_Hase >= 0
 R377: time_Günther_Cafe_Hase <= 520.476
 R378: time_Günther_Guinness_House >= 540
 R379: time_Günther_Guinness_House <= 728.244
 R380: time_Frank_Sowiso >= 60
 R381: time_Frank_Sowiso <= 712.794
 R382: time_Frank_Pennerrondell >= 0
 R383: time_Frank_Pennerrondell <= 710.622
 R384: 800 travel_Emma_Lousberg_Sowiso + time_Emma_Lousberg
   - time_Emma_Sowiso <= 707.54
 R385: 800 travel_Emma_Sowiso_Lousberg - time_Emma_Lousberg
   + time_Emma_Sowiso <= 717.794
 R386: 800 travel_Hanna_Lousberg_Frankenberger_Park + time_Hanna_Lousberg
   - time_Hanna_Frankenberger_Park <= 692.324
 R387: 800 travel_Hanna_Frankenberger_Park_Lousberg - time_Hanna_Lousberg
   + time_Hanna_Frankenberger_Park <= 734.882
 R388: 800 travel_Mia_chair_of_Operations_Research_Lousberg
   + time_Mia_chair_of_Operations_Research - time_Mia_Lousberg
   <= 739.7102857142858
 R389: 800 travel_Mia_Lousberg_chair_of_Operations_Research
   - time_Mia_chair_of_Operations_Research + time_Mia_Lousberg
   <= 736.3022857142857
 R390: 800 travel_Lelli_Lulus_Coffee_Pennerrondell
   + time_Lelli_Lulus_Coffee - time_Lelli_Pennerrondell
   <= 711.0952727272727
 R391: 800 travel_Lelli_Pennerrondell_Lulus_Coffee
   - time_Lelli_Lulus_Coffee + time_Lelli_Pennerrondell
   <= 721.3492727272727
 R392: 800 travel_Sofia_Lousberg_Aposto + time_Sofia_Lousberg
   - time_Sofia_Aposto <= 703.7906666666667
 R393: 800 travel_Sofia_Aposto_Lousberg - time_Sofia_Lousberg
   + time_Sofia_Aposto <= 673.5686666666667
 R394: 800 travel_Lina_Frankenberger_Park_Guinness_House
   + time_Lina_Frankenberger_Park - time_Lina_Guinness_House <= 730.61
 R395: 800 travel_Lina_Guinness_House_Frankenberger_Park
   - time_Lina_Frankenberger_Park + time_Lina_Guinness_House <= 727.202
 R396: 800 travel_Mila_Lulus_Coffee_Cafe_Hase + time_Mila_Lulus_Coffee
   - time_Mila_Cafe_Hase <= 675.902
 R397: 800 travel_Mila_Cafe_Hase_Lulus_Coffee - time_Mila_Lulus_Coffee
   + time_Mila_Cafe_Hase <= 667.418
 R398: 800 travel_Tanja_Frankenberger_Park_Lulus_Coffee
   + time_Tanja_Frankenberger_Park - time_Tanja_Lulus_Coffee
   <= 677.8657142857143
 R399: 800 travel_Tanja_Lulus_Coffee_Frankenberger_Park
   - time_Tanja_Frankenberger_Park + time_Tanja_Lulus_Coffee
   <= 669.3817142857142
 R400: 800 travel_Lea_Aposto_Cafe_Hase + time_Lea_Aposto
   - time_Lea_Cafe_Hase <= 722.52
 R401: 800 travel_Lea_Cafe_Hase_Aposto - time_Lea_Aposto
   + time_Lea_Cafe_Hase <= 730.476
 R402: 800 travel_Marie_Frankenberger_Park_Sowiso
   + time_Marie_Frankenberger_Park - time_Marie_Sowiso
   <= 744.5281538461538
 R403: 800 travel_Marie_Sowiso_Frankenberger_Park
   - time_Marie_Frankenberger_Park + time_Marie_Sowiso
   <= 713.2681538461538
 R404: 800 travel_Ella_Lulus_Coffee_Guinness_House + time_Ella_Lulus_Coffee
   - time_Ella_Guinness_House <= 735.819914893617
 R405: 800 travel_Ella_Guinness_House_Lulus_Coffee - time_Ella_Lulus_Coffee
   + time_Ella_Guinness_House <= 743.775914893617
 R406: 800 travel_Ben_chair_of_Operations_Research_Guinness_House
   + time_Ben_chair_of_Operations_Research - time_Ben_Guinness_House
   <= 703.964
 R407: 800 travel_Ben_Guinness_House_chair_of_Operations_Research
   - time_Ben_chair_of_Operations_Research + time_Ben_Guinness_House
   <= 700.25
 R408: 800 travel_Leon_Lousberg_Lulus_Coffee + time_Leon_Lousberg
   - time_Leon_Lulus_Coffee <= 703.79
 R409: 800 travel_Leon_Lulus_Coffee_Lousberg - time_Leon_Lousberg
   + time_Leon_Lulus_Coffee <= 701.618
 R410: 800 travel_Paul_Sowiso_Cafe_Hase + time_Paul_Sowiso
   - time_Paul_Cafe_Hase <= 714.9674545454545
 R411: 800 travel_Paul_Cafe_Hase_Sowiso - time_Paul_Sowiso
   + time_Paul_Cafe_Hase <= 674.0594545454545
 R412: 800 travel_Jonas_Lulus_Coffee_Frankenberger_Park
   + time_Jonas_Lulus_Coffee - time_Jonas_Frankenberger_Park <= 673.102
 R413: 800 travel_Jonas_Frankenberger_Park_Lulus_Coffee
   - time_Jonas_Lulus_Coffee + time_Jonas_Frankenberger_Park <= 675.58
 R414: 800 travel_Felix_chair_of_Operations_Research_Die_Kiste
   + time_Felix_chair_of_Operations_Research - time_Felix_Die_Kiste
   <= 694.214
 R415: 800 travel_Felix_Die_Kiste_chair_of_Operations_Research
   - time_Felix_chair_of_Operations_Research + time_Felix_Die_Kiste
   <= 684.116
 R416: 800 travel_Noah_chair_of_Operations_Research_Frankenberger_Park
   + time_Noah_chair_of_Operations_Research - time_Noah_Frankenberger_Park
   <= 711.296
 R417: 800 travel_Noah_Frankenberger_Park_chair_of_Operations_Research
   - time_Noah_chair_of_Operations_Research + time_Noah_Frankenberger_Park
   <= 703.01
 R418: 800 travel_Marco_Lousberg_Guinness_House + time_Marco_Lousberg
   - time_Marco_Guinness_House <= 746.288
 R419: 800 travel_Marco_Guinness_House_Lousberg - time_Marco_Lousberg
   + time_Marco_Guinness_House <= 738.002
 R420: 800 travel_Finn_Aposto_Cafe_Hase + time_Finn_Aposto
   - time_Finn_Cafe_Hase <= 682.0856734693878
 R421: 800 travel_Finn_Cafe_Hase_Aposto - time_Finn_Aposto
   + time_Finn_Cafe_Hase <= 682.6976734693877
 R422: 800 travel_Luis_Cafe_Hase_Lulus_Coffee + time_Luis_Cafe_Hase
   - time_Luis_Lulus_Coffee <= 668.3872307692308
 R423: 800 travel_Luis_Lulus_Coffee_Cafe_Hase - time_Luis_Cafe_Hase
   + time_Luis_Lulus_Coffee <= 670.8652307692307
 R424: 800 travel_Elias_Guinness_House_Die_Kiste
   + time_Elias_Guinness_House - time_Elias_Die_Kiste <= 719.45
 R425: 800 travel_Elias_Die_Kiste_Guinness_House
   - time_Elias_Guinness_House + time_Elias_Die_Kiste <= 713.066
 R426: 800 travel_Lukas_Aposto_Lulus_Coffee + time_Lukas_Aposto
   - time_Lukas_Lulus_Coffee <= 731.27
 R427: 800 travel_Lukas_Lulus_Coffee_Aposto - time_Lukas_Aposto
   + time_Lukas_Lulus_Coffee <= 729.038
 R428: 800 travel_Günther_Cafe_Hase_Guinness_House
   + time_Günther_Cafe_Hase - time_Günther_Guinness_House
   <= 725.3850909090909
 R429: 800 travel_Günther_Guinness_House_Cafe_Hase
   - time_Günther_Cafe_Hase + time_Günther_Guinness_House
   <= 723.1530909090909
 R430: 800 travel_Frank_Sowiso_Pennerrondell + time_Frank_Sowiso
   - time_Frank_Pennerrondell <= 730.394
 R431: 800 travel_Frank_Pennerrondell_Sowiso - time_Frank_Sowiso
   + time_Frank_Pennerrondell <= 728.222
 R432: - time_Emma_Lousberg + stress_time_Emma >= 77.46
 R433: stress_time_Emma <= 780
 R434: - time_Emma_Sowiso + stress_time_Emma >= 67.206
 R435: stress_time_Emma <= 780
 R436: - time_Hanna_Lousberg + stress_time_Hanna >= 66.876
 R437: stress_time_Hanna <= 780
 R438: - time_Hanna_Frankenberger_Park + stress_time_Hanna >= 24.318
 R439: stress_time_Hanna <= 780
 R440: - time_Mia_chair_of_Operations_Research + stress_time_Mia >= 33.504
 R441: stress_time_Mia <= 780
 R442: - time_Mia_Lousberg + stress_time_Mia >= 36.912
 R443: stress_time_Mia <= 780
 R444: - time_Lelli_Lulus_Coffee + stress_time_Lelli >= 79.632
 R445: stress_time_Lelli <= 780
 R446: - time_Lelli_Pennerrondell + stress_time_Lelli >= 69.378
 R447: stress_time_Lelli <= 780
 R448: - time_Sofia_Lousberg + stress_time_Sofia >= 66.876
 R449: stress_time_Sofia <= 780
 R450: - time_Sofia_Aposto + stress_time_Sofia >= 97.098
 R451: stress_time_Sofia <= 780
 R452: - time_Lina_Frankenberger_Park + stress_time_Lina >= 41.79
 R453: stress_time_Lina <= 780
 R454: - time_Lina_Guinness_House + stress_time_Lina >= 45.198
 R455: stress_time_Lina <= 780
 R456: - time_Mila_Lulus_Coffee + stress_time_Mila >= 98.898
 R457: stress_time_Mila <= 780
 R458: - time_Mila_Cafe_Hase + stress_time_Mila >= 107.382
 R459: stress_time_Mila <= 780
 R460: - time_Tanja_Frankenberger_Park + stress_time_Tanja >= 96.42
 R461: stress_time_Tanja <= 780
 R462: - time_Tanja_Lulus_Coffee + stress_time_Tanja >= 104.904
 R463: stress_time_Tanja <= 780
 R464: - time_Lea_Aposto + stress_time_Lea >= 57.48
 R465: stress_time_Lea <= 780
 R466: - time_Lea_Cafe_Hase + stress_time_Lea >= 49.524
 R467: stress_time_Lea <= 780
 R468: - time_Marie_Frankenberger_Park + stress_time_Marie >= 24.318
 R469: stress_time_Marie <= 780
 R470: - time_Marie_Sowiso + stress_time_Marie >= 55.578
 R471: stress_time_Marie <= 780
 R472: - time_Ella_Lulus_Coffee + stress_time_Ella >= 59.712
 R473: stress_time_Ella <= 780
 R474: - time_Ella_Guinness_House + stress_time_Ella >= 51.756
 R475: stress_time_Ella <= 780
 R476: - time_Ben_chair_of_Operations_Research + stress_time_Ben >= 72.036
 R477: stress_time_Ben <= 780
 R478: - time_Ben_Guinness_House + stress_time_Ben >= 75.75
 R479: stress_time_Ben <= 780
 R480: - time_Leon_Lousberg + stress_time_Leon >= 77.46
 R481: stress_time_Leon <= 780
 R482: - time_Leon_Lulus_Coffee + stress_time_Leon >= 79.632
 R483: stress_time_Leon <= 780
 R484: - time_Paul_Sowiso + stress_time_Paul >= 55.578
 R485: stress_time_Paul <= 780
 R486: - time_Paul_Cafe_Hase + stress_time_Paul >= 96.486
 R487: stress_time_Paul <= 780
 R488: - time_Jonas_Lulus_Coffee + stress_time_Jonas >= 98.898
 R489: stress_time_Jonas <= 780
 R490: - time_Jonas_Frankenberger_Park + stress_time_Jonas >= 96.42
 R491: stress_time_Jonas <= 780
 R492: - time_Felix_chair_of_Operations_Research + stress_time_Felix
   >= 72.036
 R493: stress_time_Felix <= 780
 R494: - time_Felix_Die_Kiste + stress_time_Felix >= 82.134
 R495: stress_time_Felix <= 780
 R496: - time_Noah_chair_of_Operations_Research + stress_time_Noah
   >= 33.504
 R497: stress_time_Noah <= 780
 R498: - time_Noah_Frankenberger_Park + stress_time_Noah >= 41.79
 R499: stress_time_Noah <= 780
 R500: - time_Marco_Lousberg + stress_time_Marco >= 36.912
 R501: stress_time_Marco <= 780
 R502: - time_Marco_Guinness_House + stress_time_Marco >= 45.198
 R503: stress_time_Marco <= 780
 R504: - time_Finn_Aposto + stress_time_Finn >= 97.098
 R505: stress_time_Finn <= 780
 R506: - time_Finn_Cafe_Hase + stress_time_Finn >= 96.486
 R507: stress_time_Finn <= 780
 R508: - time_Luis_Cafe_Hase + stress_time_Luis >= 107.382
 R509: stress_time_Luis <= 780
 R510: - time_Luis_Lulus_Coffee + stress_time_Luis >= 104.904
 R511: stress_time_Luis <= 780
 R512: - time_Elias_Guinness_House + stress_time_Elias >= 75.75
 R513: stress_time_Elias <= 780
 R514: - time_Elias_Die_Kiste + stress_time_Elias >= 82.134
 R515: stress_time_Elias <= 780
 R516: - time_Lukas_Aposto + stress_time_Lukas >= 57.48
 R517: stress_time_Lukas <= 780
 R518: - time_Lukas_Lulus_Coffee + stress_time_Lukas >= 59.712
 R519: stress_time_Lukas <= 780
 R520: - time_Günther_Cafe_Hase + stress_time_Günther >= 49.524
 R521: stress_time_Günther <= 780
 R522: - time_Günther_Guinness_House + stress_time_Günther >= 51.756
 R523: stress_time_Günther <= 780
 R524: - time_Frank_Sowiso + stress_time_Frank >= 67.206
 R525: stress_time_Frank <= 780
 R526: - time_Frank_Pennerrondell + stress_time_Frank >= 69.378
 R527: stress_time_Frank <= 780
Bounds
Binaries
 travel_Emma_Lousberg_Sowiso travel_Emma_Lousberg_dummy
 travel_Emma_Sowiso_Lousberg travel_Emma_Sowiso_dummy
 travel_Emma_dummy_Lousberg travel_Emma_dummy_Sowiso
 travel_Hanna_Lousberg_Frankenberger_Park travel_Hanna_Lousberg_dummy
 travel_Hanna_Frankenberger_Park_Lousberg
 travel_Hanna_Frankenberger_Park_dummy travel_Hanna_dummy_Lousberg
 travel_Hanna_dummy_Frankenberger_Park
 travel_Mia_chair_of_Operations_Research_Lousberg
 travel_Mia_chair_of_Operations_Research_dummy
 travel_Mia_Lousberg_chair_of_Operations_Research travel_Mia_Lousberg_dummy
 travel_Mia_dummy_chair_of_Operations_Research travel_Mia_dummy_Lousberg
 travel_Lelli_Lulus_Coffee_Pennerrondell travel_Lelli_Lulus_Coffee_dummy
 travel_Lelli_Pennerrondell_Lulus_Coffee travel_Lelli_Pennerrondell_dummy
 travel_Lelli_dummy_Lulus_Coffee travel_Lelli_dummy_Pennerrondell
 travel_Sofia_Lousberg_Aposto travel_Sofia_Lousberg_dummy
 travel_Sofia_Aposto_Lousberg travel_Sofia_Aposto_dummy
 travel_Sofia_dummy_Lousberg travel_Sofia_dummy_Aposto
 travel_Lina_Frankenberger_Park_Guinness_House
 travel_Lina_Frankenberger_Park_dummy
 travel_Lina_Guinness_House_Frankenberger_Park
 travel_Lina_Guinness_House_dummy travel_Lina_dummy_Frankenberger_Park
 travel_Lina_dummy_Guinness_House travel_Mila_Lulus_Coffee_Cafe_Hase
 travel_Mila_Lulus_Coffee_dummy travel_Mila_Cafe_Hase_Lulus_Coffee
 travel_Mila_Cafe_Hase_dummy travel_Mila_dummy_Lulus_Coffee
 travel_Mila_dummy_Cafe_Hase travel_Tanja_Frankenberger_Park_Lulus_Coffee
 travel_Tanja_Frankenberger_Park_dummy
 travel_Tanja_Lulus_Coffee_Frankenberger_Park
 travel_Tanja_Lulus_Coffee_dummy travel_Tanja_dummy_Frankenberger_Park
 travel_Tanja_dummy_Lulus_Coffee travel_Lea_Aposto_Cafe_Hase
 travel_Lea_Aposto_dummy travel_Lea_Cafe_Hase_Aposto
 travel_Lea_Cafe_Hase_dummy travel_Lea_dummy_Aposto
 travel_Lea_dummy_Cafe_Hase travel_Marie_Frankenberger_Park_Sowiso
 travel_Marie_Frankenberger_Park_dummy
 travel_Marie_Sowiso_Frankenberger_Park travel_Marie_Sowiso_dummy
 travel_Marie_dummy_Frankenberger_Park travel_Marie_dummy_Sowiso
 travel_Ella_Lulus_Coffee_Guinness_House travel_Ella_Lulus_Coffee_dummy
 travel_Ella_Guinness_House_Lulus_Coffee travel_Ella_Guinness_House_dummy
 travel_Ella_dummy_Lulus_Coffee travel_Ella_dummy_Guinness_House
 travel_Ben_chair_of_Operations_Research_Guinness_House
 travel_Ben_chair_of_Operations_Research_dummy
 travel_Ben_Guinness_House_chair_of_Operations_Research
 travel_Ben_Guinness_House_dummy
 travel_Ben_dummy_chair_of_Operations_Research
 travel_Ben_dummy_Guinness_House travel_Leon_Lousberg_Lulus_Coffee
 travel_Leon_Lousberg_dummy travel_Leon_Lulus_Coffee_Lousberg
 travel_Leon_Lulus_Coffee_dummy travel_Leon_dummy_Lousberg
 travel_Leon_dummy_Lulus_Coffee travel_Paul_Sowiso_Cafe_Hase
 travel_Paul_Sowiso_dummy travel_Paul_Cafe_Hase_Sowiso
 travel_Paul_Cafe_Hase_dummy travel_Paul_dummy_Sowiso
 travel_Paul_dummy_Cafe_Hase travel_Jonas_Lulus_Coffee_Frankenberger_Park
 travel_Jonas_Lulus_Coffee_dummy
 travel_Jonas_Frankenberger_Park_Lulus_Coffee
 travel_Jonas_Frankenberger_Park_dummy travel_Jonas_dummy_Lulus_Coffee
 travel_Jonas_dummy_Frankenberger_Park
 travel_Felix_chair_of_Operations_Research_Die_Kiste
 travel_Felix_chair_of_Operations_Research_dummy
 travel_Felix_Die_Kiste_chair_of_Operations_Research
 travel_Felix_Die_Kiste_dummy
 travel_Felix_dummy_chair_of_Operations_Research
 travel_Felix_dummy_Die_Kiste
 travel_Noah_chair_of_Operations_Research_Frankenberger_Park
 travel_Noah_chair_of_Operations_Research_dummy
 travel_Noah_Frankenberger_Park_chair_of_Operations_Research
 travel_Noah_Frankenberger_Park_dummy
 travel_Noah_dummy_chair_of_Operations_Research
 travel_Noah_dummy_Frankenberger_Park travel_Marco_Lousberg_Guinness_House
 travel_Marco_Lousberg_dummy travel_Marco_Guinness_House_Lousberg
 travel_Marco_Guinness_House_dummy travel_Marco_dummy_Lousberg
 travel_Marco_dummy_Guinness_House travel_Finn_Aposto_Cafe_Hase
 travel_Finn_Aposto_dummy travel_Finn_Cafe_Hase_Aposto
 travel_Finn_Cafe_Hase_dummy travel_Finn_dummy_Aposto
 travel_Finn_dummy_Cafe_Hase travel_Luis_Cafe_Hase_Lulus_Coffee
 travel_Luis_Cafe_Hase_dummy travel_Luis_Lulus_Coffee_Cafe_Hase
 travel_Luis_Lulus_Coffee_dummy travel_Luis_dummy_Cafe_Hase
 travel_Luis_dummy_Lulus_Coffee travel_Elias_Guinness_House_Die_Kiste
 travel_Elias_Guinness_House_dummy travel_Elias_Die_Kiste_Guinness_House
 travel_Elias_Die_Kiste_dummy travel_Elias_dummy_Guinness_House
 travel_Elias_dummy_Die_Kiste travel_Lukas_Aposto_Lulus_Coffee
 travel_Lukas_Aposto_dummy travel_Lukas_Lulus_Coffee_Aposto
 travel_Lukas_Lulus_Coffee_dummy travel_Lukas_dummy_Aposto
 travel_Lukas_dummy_Lulus_Coffee travel_Günther_Cafe_Hase_Guinness_House
 travel_Günther_Cafe_Hase_dummy travel_Günther_Guinness_House_Cafe_Hase
 travel_Günther_Guinness_House_dummy travel_Günther_dummy_Cafe_Hase
 travel_Günther_dummy_Guinness_House travel_Frank_Sowiso_Pennerrondell
 travel_Frank_Sowiso_dummy travel_Frank_Pennerrondell_Sowiso
 travel_Frank_Pennerrondell_dummy travel_Frank_dummy_Sowiso
 travel_Frank_dummy_Pennerrondell C240 C241 C242 C243 C244 C245 C246 C247
 C248 C249 C250 C251 C252 C253 C254 C255 C256 C257 C258 C259 C260 C261 C262
 C263 C264 C265 C266 C267 C268 C269 C270 C271 C272 C273 C274 C275 C276 C277
 C278 C279 C280 C281 C282 C283 C284 C285 C286 C287 C288 C289 C290 C291 C292
 C293 C294 C295 C296 C297 C298 C299 C300 C301 C302 C303 C304 C305 C306 C307
 C308 C309 C310 C311
Generals
 time_Emma_Lousberg time_Emma_Sowiso time_Emma_dummy time_Hanna_Lousberg
 time_Hanna_Frankenberger_Park time_Hanna_dummy
 time_Mia_chair_of_Operations_Research time_Mia_Lousberg time_Mia_dummy
 time_Lelli_Lulus_Coffee time_Lelli_Pennerrondell time_Lelli_dummy
 time_Sofia_Lousberg time_Sofia_Aposto time_Sofia_dummy
 time_Lina_Frankenberger_Park time_Lina_Guinness_House time_Lina_dummy
 time_Mila_Lulus_Coffee time_Mila_Cafe_Hase time_Mila_dummy
 time_Tanja_Frankenberger_Park time_Tanja_Lulus_Coffee time_Tanja_dummy
 time_Lea_Aposto time_Lea_Cafe_Hase time_Lea_dummy
 time_Marie_Frankenberger_Park time_Marie_Sowiso time_Marie_dummy
 time_Ella_Lulus_Coffee time_Ella_Guinness_House time_Ella_dummy
 time_Ben_chair_of_Operations_Research time_Ben_Guinness_House
 time_Ben_dummy time_Leon_Lousberg time_Leon_Lulus_Coffee time_Leon_dummy
 time_Paul_Sowiso time_Paul_Cafe_Hase time_Paul_dummy
 time_Jonas_Lulus_Coffee time_Jonas_Frankenberger_Park time_Jonas_dummy
 time_Felix_chair_of_Operations_Research time_Felix_Die_Kiste
 time_Felix_dummy time_Noah_chair_of_Operations_Research
 time_Noah_Frankenberger_Park time_Noah_dummy time_Marco_Lousberg
 time_Marco_Guinness_House time_Marco_dummy time_Finn_Aposto
 time_Finn_Cafe_Hase time_Finn_dummy time_Luis_Cafe_Hase
 time_Luis_Lulus_Coffee time_Luis_dummy time_Elias_Guinness_House
 time_Elias_Die_Kiste time_Elias_dummy time_Lukas_Aposto
 time_Lukas_Lulus_Coffee time_Lukas_dummy time_Günther_Cafe_Hase
 time_Günther_Guinness_House time_Günther_dummy time_Frank_Sowiso
 time_Frank_Pennerrondell time_Frank_dummy stress_time_Emma
 stress_time_Hanna stress_time_Mia stress_time_Lelli stress_time_Sofia
 stress_time_Lina stress_time_Mila stress_time_Tanja stress_time_Lea
 stress_time_Marie stress_time_Ella stress_time_Ben stress_time_Leon
 stress_time_Paul stress_time_Jonas stress_time_Felix stress_time_Noah
 stress_time_Marco stress_time_Finn stress_time_Luis stress_time_Elias
 stress_time_Lukas stress_time_Günther stress_time_Frank
End
