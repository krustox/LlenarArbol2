$(document).ready ->
  $(".holding").on "change", ->
    $.ajax
      url: "/channels/get_enterprises"
      type: "GET"
      dataType: "script"
      data:
        holding_id: $('.holding').val()
