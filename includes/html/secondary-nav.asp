<template v-if="secondaryNavContent.secondaryNav != undefined">
  <div class="container-fluid background__dark-blue">
    <!-- Container -->
    <div class="container">
      <nav
        class="navbar navbar-expand-lg navbar-dark shadow-none justify-content-between px-md-4 px-0 py-1 secondary-header__nav-container"
      >
        <a
          class="navbar-brand text-white"
          v-bind:href="secondaryNavContent.secondaryNav.titleLinkTarget"
        >
          {{ secondaryNavContent.secondaryNav.title }}
        </a>
        <button
          class="navbar-toggler"
          type="button"
          data-toggle="collapse"
          data-target="#secondaryNavContent"
          aria-controls="secondaryNavContent"
          aria-expanded="false"
          aria-label="Toggle navigation"
        >
          <span class="navbar-toggler-icon"></span>
        </button>

        <div
          class="collapse navbar-collapse flex-grow-0 text-center"
          id="secondaryNavContent"
        >
          <ul
            class="navbar-nav mr-auto px-2"
            v-for="(item, index) in secondaryNavContent.secondaryNav.navItems"
          >
            <li v-if="item.dropdown" class="nav-item dropdown">
              <a
                class="nav-link dropdown-toggle rounded"
                v-bind:id="'secondaryProductsDropdown' + index"
                data-toggle="dropdown"
                aria-haspopup="true"
                aria-expanded="false"
              >
                {{ item.dropdown.title }}
              </a>
              <div
                class="dropdown-menu secondary-dropdown-menu"
                v-bind:aria-labelledby="'secondaryProductsDropdown' + index"
              >
                <template v-for="(dropdownItem, index) in item.dropdown.links">
                  <a v-bind:href="dropdownItem.linkTarget">
                    {{ dropdownItem.linkTitle }}
                  </a>
                </template>
              </div>
            </li>
            <li v-if="item.linkTitle" class="nav-item">
              <a class="nav-link rounded px-3" v-bind:href="item.linkTarget">
                {{ item.linkTitle }}
              </a>
            </li>
          </ul>
          <a class="secondary-btn" href="/contact" type="submit">
            Request Info
          </a>
        </div>
      </nav>
    </div>
  </div>
</template>
