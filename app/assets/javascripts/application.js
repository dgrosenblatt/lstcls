// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

var ready = function () {
  articles.init()
};

var articles = {
  init: function() {
    $(".title-0").css("opacity", 0.85);
    $(".title-0").slideDown(400);
    $(".container").mouseenter(this.reveal);
    $("header").mouseenter(this.headChange);
    $("header").mouseleave(this.headChange);
  },

  headChange: function () {
    $(this).toggleClass("header-hover");
    $(this).find("a").toggleClass("header-hover-link");
  },

  reveal: function() {
    $(this).children(".article").animate({
      opacity: 1
    }, 300, function() {
      $(this).animate({opacity: 0.85}, 200);
    });

    $(this).next(".container").children(".article").slideDown(1000);
  }
};

$(document).ready(ready);
$(document).on('page:load', ready);
