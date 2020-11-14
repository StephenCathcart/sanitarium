document.addEventListener("DOMContentLoaded", function() {

    const nav           = document.querySelector('#navbar'),
          popoverLink   = document.querySelector('[data-popover]'),
          getKillerBtn  = document.querySelector('#btn-get');
    let   navOffsetTop  = nav.offsetTop,
          tree;
  
    function init () {
      window.addEventListener('scroll', onScroll);
      window.addEventListener('resize', onResize);
      popoverLink.addEventListener('click', onPopoverClick)
      document.body.addEventListener('click', closePopover)
      getKillerBtn.addEventListener('click', getRandomKiller)
      initParticleJS()
      getRandomKiller()
    }

    function onScroll() {
      var scrollBarPosition = window.pageYOffset | document.body.scrollTop;
      if(navOffsetTop < scrollBarPosition && !hasClass(document.body, 'has-docked-nav')) {
        addClass(document.body, 'has-docked-nav')
      }
      if(navOffsetTop > scrollBarPosition && hasClass(document.body, 'has-docked-nav')) {
        removeClass(document.body, 'has-docked-nav')
      }
    }

    function onResize() {
      removeClass(document.body, 'has-docked-nav')
      navOffsetTop = nav.offsetTop
      onScroll()
    }

    function onPopoverClick(e) {
      e.preventDefault()
      closePopover();
      toggleClass(document.querySelector('.popover'), 'open')
      e.stopImmediatePropagation();
    }

    function closePopover(e) {
      if(document.querySelector(".popover.open")) {
        removeClass(document.querySelector('.popover'), 'open')
      }
    }

    function initParticleJS() {
      particlesJS.load('particles-js', 'assets/particlesjs-config.json', function() {
        console.debug('callback - particles.js config loaded');
      });
    }

    async function getRandomKiller() {
      const response = await fetch('https://api.sanitarium.io/killers/random');
      const json = await response.json();

      if (tree == null) {
        tree = jsonTree.create(json, document.getElementById("get-response"));
      }
      tree.loadData(json)
    }

    function hasClass(el, className) {
      return el.classList.contains(className)
    }

    function addClass(el, className) {
      el.classList.add(className);
    }

    function removeClass(el, className) {
      el.classList.remove(className);
    }

    function toggleClass(el, className) {
      el.classList.toggle(className);
    }

    init();
});