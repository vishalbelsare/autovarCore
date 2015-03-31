context('needs_trend')

testdata_matrix_without_trend <- function() {
  structure(c(37.0946589754894, 26.6211274184752, 11.9400804867037,
              7.2097196849063, 15.2464740776923, 30.3457106333226, 38.6795215709135,
              27.3229851438664, 17.9705999998841, 39.4222185094841, 33.4933691383339,
              20.2757697675843, 36.1346552334726, 37.2362845449243, 10.9004323631525,
              6.79571247287095, 14.2329496515449, 26.9298630221747, 11.2600896966178,
              33.987371498486, 32.6417363432702, 15.7670020880178, 7.17274955543689,
              7.35726679791696, 38.9825627317186, 13.5076930827927, 30.4255789464805,
              25.1134898422752, 33.4083127959166, 21.4383503776044, 11.0948172709905,
              22.7213406588417, 8.53196820081212, 23.2847778764553, 37.3756207106635,
              34.9011008387897, 39.1696335810702, 34.1140556228347, 20.1387100296561,
              25.2706241817214, 1.63059071660973, 33.4225160412025, 12.3869466066826,
              27.1434690470342, 10.3902588181663, 23.6235299156979, 18.0492790446151,
              33.1026939379517, 27.2886936492287, 3.39947865135036, 3.45108685898595,
              6.0945149557665, 18.8648817853536, 28.5492777831387, 11.6902261057403,
              1.56856617890298, 22.7998035447672, 26.1503895572387, 20.1039614824113,
              2.35415222076699, 36.4866949145216, 18.7973799624015, 34.5832606952172,
              24.5537615392823, 30.7746425007936, 37.9939152374864, 32.0111969762947,
              11.9073869963177, 3.11650930438191, 37.3616923016962, 24.6194161646999,
              36.2685350715183, 4.6478437515907, 26.1837912003975, 24.8675667184871,
              22.0115568835754, 22.3815628346056, 22.6752819165122, 22.0923744703177,
              20.7023978661746, 15.4024761917535, 16.4781057985965, 6.34510046290234,
              13.9072361879516, 39.8383019447792, 14.575094317086, 6.83470691298135,
              38.5173437530175, 5.64802930434234, 28.1325007418636, 34.5924209796358,
              32.2777520562522, 19.4461388243362, 11.1760756745934, 24.1950610433705,
              29.9819018612616, 8.82148141623475, 4.51797436084598, 23.1785942695569,
              4.26770240883343, 36.0470884705428, 26.7855786858127, 36.0383550827391,
              34.7070135681424, 1.8671946763061, 36.6739659502637, 28.9110419135541,
              36.0932794960681, 10.9948652395979, 3.8884900722187, 21.4660766285378,
              8.8759731487371, 13.8053985398728, 37.2506833546795, 2.78032856970094,
              31.351307956269, 36.4403122472577, 26.1789587684907, 32.927754678065,
              1.61852264450863), .Dim = c(40L, 3L), .Dimnames = list(NULL,
                                                                     c("rumination", "happiness", "activity")))
}

testdata_matrix_with_trend <- function() {
  # This testdata has a linear trend in the second column.
  structure(c(28.5273074947763, 38.6530367915984, 38.4627433191054,
              24.9266510060988, 20.9567668288946, 36.6973488938529, 30.9265721666161,
              5.03860572422855, 17.2598400367424, 5.53779726685025, 38.9358810288832,
              38.0570686862338, 9.26705716666766, 22.8852582350373, 31.6187344181817,
              25.6434467986692, 4.29462277470157, 35.5548673842568, 29.977422765689,
              30.0527837614063, 24.2266254138667, 22.3847575264517, 20.5062089834828,
              3.93847872782499, 28.0249994697515, 33.4959861626849, 19.6290923501365,
              22.9797121689189, 36.0685175401159, 33.8799763580319, 18.7412725915201,
              25.9220210891217, 6.55202079261653, 16.1163218910806, 4.03054787754081,
              26.9326971860137, 4.21491981553845, 13.0085191742983, 4.55307051469572,
              25.4643862198573, 3.05335732270032, 41.5320277274586, 10.1498775384389,
              7.208881666651, 9.82416369463317, 30.8749164992478, 42.079321490135,
              39.8305753958412, 34.5564603274688, 28.895750207128, 26.6600564997643,
              34.1825468617026, 29.0973436201457, 26.156186416978, 37.2647042062599,
              20.3411071605515, 50.5976170501672, 20.7737180693075, 51.2461545786355,
              31.0703250390943, 47.2642076062039, 50.1066257019993, 35.8185503894929,
              29.4134694868699, 48.0588433537632, 35.1188422632404, 50.8485220840666,
              63.5815006643534, 30.5930061531253, 39.6762854848057, 67.4019644402433,
              55.1735984631814, 37.1291538947262, 40.1088400781155, 38.1705234989058,
              45.6809928251896, 54.7825911729597, 42.9508873187006, 43.8001615316607,
              71.9594481042586, 5.92936440720223, 21.8248566868715, 38.6845155521296,
              10.2234156476334, 24.6326572967228, 36.9116755297873, 7.68916477332823,
              15.7271074992605, 21.4971005066764, 22.2182383988984, 37.2091160027776,
              3.37171304598451, 2.69974791770801, 28.2078367120121, 3.65690057910979,
              32.5357223944739, 19.0335555272177, 1.92040264070965, 16.0058206743561,
              8.61291335802525, 20.5114707727917, 37.4501671404578, 33.8463094492909,
              10.4476480048615, 11.1743791934568, 38.253669537371, 20.5114275864325,
              17.8578789988533, 7.41358946496621, 36.3416352213826, 7.2221151960548,
              7.07556805247441, 13.752789627295, 25.4607327319682, 28.8035884769633,
              6.22019415278919, 3.19761433103122, 22.7502944066655, 9.35122473817319,
              6.38748891861178), .Dim = c(40L, 3L), .Dimnames = list(NULL,
                                                                     c("rumination", "happiness", "activity")))
}

test_that('needs_trend returns the expected result', {
  expect_true(autovarCore:::needs_trend(testdata_matrix_with_trend(), 1))
  expect_true(autovarCore:::needs_trend(testdata_matrix_with_trend(), 2))
  expect_false(autovarCore:::needs_trend(testdata_matrix_without_trend(), 1))
  expect_false(autovarCore:::needs_trend(testdata_matrix_without_trend(), 2))
})

test_that('needs_trend calls column_needs_trend the correct amount of times', {
  called_count <<- 0
  with_mock(
    `autovarCore:::column_needs_trend` = function(...) {
      called_count <<- called_count + 1
      TRUE
    },
    expect_true(autovarCore:::needs_trend(testdata_matrix_without_trend(), 1))
  )
  expect_equal(called_count, 1)
  called_count <<- 0
  with_mock(
    `autovarCore:::column_needs_trend` = function(...) {
      called_count <<- called_count + 1
      FALSE
    },
    expect_false(autovarCore:::needs_trend(testdata_matrix_with_trend(), 1))
  )
  expect_equal(called_count, 3)
  rm(list = 'called_count', pos = '.GlobalEnv')
})

test_that('column_needs_trend returns the expected result', {
  expect_true(autovarCore:::column_needs_trend(testdata_matrix_with_trend()[, 2], 1))
  expect_true(autovarCore:::column_needs_trend(testdata_matrix_with_trend()[, 2], 2))
  expect_false(autovarCore:::column_needs_trend(testdata_matrix_without_trend()[, 2], 1))
  expect_false(autovarCore:::column_needs_trend(testdata_matrix_without_trend()[, 2], 2))
})

test_that('column_needs_trend calls p_level_for_trend_significance', {
  p_level_for_trend_significance_count <<- 0
  with_mock(
    `autovarCore:::p_level_for_trend_significance` = function(...) {
      p_level_for_trend_significance_count <<- p_level_for_trend_significance_count + 1
      0.05
    },
    expect_true(autovarCore:::column_needs_trend((1:40) / 3 + 3 * rnorm(40), 1))
  )
  expect_equal(p_level_for_trend_significance_count, 1)
  rm(list = 'p_level_for_trend_significance_count', pos = '.GlobalEnv')
})
