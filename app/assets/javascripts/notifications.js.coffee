$(document).ready ->
    $("#flash-notifications").hide()
    $("#flash-notifications > .flash-notice").each ->
        $.gritter.add {title: "-", text:($(this).html()), class_name: "success", sticky: true}
    $("#flash-notifications > .flash-alert").each ->
        $.gritter.add {title: ":(", text:($(this).html()), class_name: "alert", sticky: true}
