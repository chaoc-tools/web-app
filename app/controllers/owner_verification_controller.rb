class OwnerVerificationController < ApplicationController

  skip_before_filter :owner_verification, only: :new

  def new
  end

  def show
  end

#   def run_verification
#     require 'mechanize'
#     agent = Mechanize.new
#     page = agent.get('https://a836-acris.nyc.gov/DS/DocumentSearch/PartyName')
#     form = page.forms.first
#     form.edt_last = 'RAMSAY'
#     form.edt_first = 'JOHAN'
#     form.edt_ml = 'A'
#     form.submit(form.button_with(:value => 'Search')) #Mechanize::UnsupportedSchemeError
#     sleep(5.seconds)
#     agent2 = Mechanize.new
#     page = agent2.get('https://a836-acris.nyc.gov/DS/DocumentSearch/PartyNameResult')

# b.text_field(:name => 'edt_last').set 'RAMSAY'
# b.text_field(:name => 'edt_first').set 'JOHAN'
# b.button(:value => 'Search').click
    
    
#   end
end

# https://data.cityofnewyork.us/resource/636b-3b5g.json
# https://data.cityofnewyork.us/resource/636b-3b5g.json

 # #<Mechanize::Page
 # {url
 #  #<URI::HTTPS:0x007fdd7a34b868 URL:https://a836-acris.nyc.gov/DS/DocumentSearch/PartyName>}
 # {meta_refresh}
 # {title "ACRIS Search By Party Name"}
 # {iframes}
 # {frames}
 # {links #<Mechanize::Page::Link "Office of the City Register" "#">}
 # {forms
 #  #<Mechanize::Form
 #   {name "DATA"}
 #   {method "POST"}
 #   {action "Javascript:go_Submit()"}
 #   {fields
 #    [text:0x3feebd09b4c4 type: text name: edt_last value: ]
 #    [text:0x3feebd09a560 type: text name: edt_first value: ]
 #    [text:0x3feebd0977c0 type: text name: edt_ml value: ]
 #    [text:0x3feebd097130 type: text name: edt_suffix value: ]
 #    [text:0x3feebd093814 type: text name: edt_business value: ]
 #    [text:0x3feebd092928 type: text name: edt_fromm value: ]
 #    [text:0x3feebd09220c type: text name: edt_fromd value: ]
 #    [text:0x3feebd08e60c type: text name: edt_fromy value: ]
 #    [text:0x3feebd08a5c0 type: text name: edt_tom value: ]
 #    [text:0x3feebcd2aa38 type: text name: edt_tod value: ]
 #    [text:0x3feebcd27810 type: text name: edt_toy value: ]
 #    [selectlist:0x3feebcd132e8 type:  name: cmb_date value: To Current Date]
 #    [selectlist:0x3feebccd1c80 type:  name: cmb_party value: ]
 #    [selectlist:0x3feebcccc834 type:  name: borough value: All Boroughs/Counties ]
 #    [selectlist:0x3feebccb5d28 type:  name: combox_doc_doctype value: All Document Classes]}
 #   {radiobuttons
 #    [radiobutton:0x3feebd09bce4 type: radio name: radio_party value: I]
 #    [radiobutton:0x3feebd096820 type: radio name: radio_party value: B]}
 #   {checkboxes}
 #   {file_uploads}
 #   {buttons
 #    [submit:0x3feebcd262e4 type: submit name: Submit value: Search]
 #    [reset:0x3feebcd23224 type: Reset name: CLEAR value: Clear]}>
 #  #<Mechanize::Form
 #   {name "global"}
 #   {method "POST"}
 #   {action "https://a836-acris.nyc.gov/DS/DocumentSearch/PartyName"}
 #   {fields
 #    [hidden:0x3feebd00ad84 type: hidden name: __RequestVerificationToken value: 8sfFgyPZ6TciM3pIN2VhV3d3FdWhaYzQcYJhr5St4URLUfdGMatBMYcZYloSF4Eug68JBR3/F2YKZXh8DcyfDOUHV0Y2+n6Vcm19TmXL6Xed9jhy2TiOds9HuaM37bPNsBMhUeLLNI1jSFtebznrb6luxe++B2ieqUti0u5OA/o=]
 #    [hidden:0x3feebd0082a0 type: hidden name: hid_last value: ]
 #    [hidden:0x3feebd003dcc type: hidden name: hid_first value: ]
 #    [hidden:0x3feebd002a6c type: hidden name: hid_ml value: ]
 #    [hidden:0x3feebcc64c0c type: hidden name: hid_suffix value: ]
 #    [hidden:0x3feebcc608f0 type: hidden name: hid_business value: ]
 #    [hidden:0x3feebcc5dd30 type: hidden name: hid_selectdate value: ]
 #    [hidden:0x3feebcc5cf84 type: hidden name: hid_datefromm value: ]
 #    [hidden:0x3feebcc58a88 type: hidden name: hid_datefromd value: ]
 #    [hidden:0x3feebcc55180 type: hidden name: hid_datefromy value: ]
 #    [hidden:0x3feebcc55fb8 type: hidden name: hid_datetom value: ]
 #    [hidden:0x3feebcc50db0 type: hidden name: hid_datetod value: ]
 #    [hidden:0x3feebcc4dc28 type: hidden name: hid_datetoy value: ]
 #    [hidden:0x3feebcc49e84 type: hidden name: hid_partype value: ]
 #    [hidden:0x3feebcc493bc type: hidden name: hid_borough value: 0]
 #    [hidden:0x3feebcc45398 type: hidden name: hid_doctype value: ]
 #    [hidden:0x3feebcc3cb44 type: hidden name: hid_max_rows value: 10]
 #    [hidden:0x3feebcc2500c type: hidden name: hid_page value: 1]
 #    [hidden:0x3feebcc21628 type: hidden name: hid_partype_name value: ]
 #    [hidden:0x3feebcc20340 type: hidden name: hid_doctype_name value: ]
 #    [hidden:0x3feebcc1cc54 type: hidden name: hid_borough_name value: ]
 #    [hidden:0x3feebcc19018 type: hidden name: hid_ReqID value: ]
 #    [hidden:0x3feebcc18578 type: hidden name: hid_SearchType value: PARTYNAME]
 #    [hidden:0x3feebec1df58 type: hidden name: hid_ISIntranet value: N]
 #    [hidden:0x3feebec1ddb4 type: hidden name: hid_sort value: ]}
 #   {radiobuttons}
 #   {checkboxes}
 #   {file_uploads}
 #   {buttons}>}>
