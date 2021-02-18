<%
  Set con = Server.CreateObject("ADODB.Connection")
  con.Open "Provider=SQLNCLI11;Server=172.24.16.212;Database=ConferencePortal;UID=harvester;PWD=zUHeWud5;"
  Set rsNews = Server.CreateObject("ADODB.Recordset")      

  rsNews.CursorType = 3
  rsNews.LockType = 1

  SQL = "SELECT NewsTitle, NewsImage1URL, NewsDetails, NewsCategory, NewsDate, " &_
        "NewsFlagFeatured, NewsButtonText, NewsLink FROM CadmiumNews " &_
        "WHERE NewsFlagWebsiteType = 'White Paper' " &_
        "AND NOT NewsStatus = 'DELETED' ORDER BY NewsDate DESC"

  rsNews.Open SQL, Portal3
%>

<!-- Resources -->
<li class="nav-item dropdown mega-dropdown">
  <a 
    class="nav-link dropdown-toggle rounded px-3" 
    id="navbarDropdownMenuLink3" 
    data-toggle="dropdown" 
    aria-haspopup="true" 
    aria-expanded="false"
  >
    Resources
  </a>
  <div class="main-header-dropdown dropdown-menu mega-menu v-2 z-depth-1 p-3" aria-labelledby="navbarDropdownMenuLink3">
    <!-- Container -->
    <div class="container">
      <!-- Row -->
      <div class="row">
        <% If rsNews.EOF Then %>
          <div class="col-md-4 col-xl-4 sub-menu mb-xl-0 mb-4 p-2">
            <div id="noRecord">
              <h5 class="h5">No records found.</h5>
            </div>
          </div>

        <%
          Else

          TotalRecord = rsNews.RecordCount

          Num = 1

          Do While Not rsNews.EOF and Num <= TotalRecord

          NewsTitle = rsNews("NewsTitle")
          NewsImage1URL = rsNews("NewsImage1URL")
          NewsDetails = rsNews("NewsDetails")
          NewsCategory = rsNews("NewsCategory")
          NewsFlagFeatured = rsNews("NewsFlagFeatured")
          NewsButtonText = rsNews("NewsButtonText")
          NewsLink = rsNews("NewsLink")
        %>

        <% If NewsFlagFeatured = 1 Then %>
        <div class="col-md-4 col-xl-4 sub-menu mb-xl-0 mb-4 p-2">
          <h6 class="h6 main-header__sub-title p-2">Featured Resource</h6>
          <!--Featured image-->
          <a href="<% =NewsLink %>" class="view overlay z-depth-1 p-0 mb-2">
            <img src="<% =NewsImage1URL %>" class="img-fluid" alt="featured image">
            <div class="mask rgba-white-slight"></div>
          </a>
        </div>
        
        <%
          End If
          Num = Num + 1
          rsNews.MoveNext
          Loop
        %>

        <%
          End If
          con.Close
          rsNews.Close
          Set con = Nothing
          Set rsNews = Nothing
        %>
        <div class="col-md-4 col-xl-4 sub-menu mb-md-0 mb-4 p-2">
          <h6 class="h6 main-header__sub-title p-2">Learn</h6>
          <ul class="list-unstyled">
            <li>
              <a class="d-flex flex-row menu-item p-2 w-auto rounded" href="/blog/">
                <span class="nav-icon">
                  <i class="fas fa-mobile"></i>                          
                </span>
                <div>
                  <h5 class="h5 mb-0">Blog</h5>
                  <p class="subtext-small m-0 font-weight-light">Ideas & Insights for Planners</p>
                </div>
              </a>
            </li>
            <li>
              <a class="d-flex flex-row menu-item p-2 w-auto rounded" href="/webinars/">
                <span class="nav-icon">
                  <i class="fas fa-toolbox"></i>                          
                </span>
                <div>
                  <h5 class="h5 mb-0">Webinars</h5>
                  <p class="subtext-small m-0 font-weight-light">Best Practices & Examples</p>
                </div>
              </a>
            </li>
            <li>
              <a class="d-flex flex-row menu-item p-2 w-auto rounded" href="/resources/">
                <span class="nav-icon">
                  <i class="fas fa-chart-pie"></i>                          
                </span>
                <div>
                  <h5 class="h5 mb-0">Resources</h5>
                  <p class="subtext-small m-0 font-weight-light">White Papers, Workbooks, & More</p>
                </div>
              </a>
            </li>
          </ul>
        </div>

        <div class="col-md-4 col-xl-4 sub-menu mb-0 mb-4 p-2">
          <h6 class="h6 main-header__sub-title p-2">Blog</h6>
          <ul class="list-unstyled">
            <li>
              <a class="d-flex flex-row menu-item p-2 w-auto rounded" href="/blog/category/case-studies/">
                <span class="nav-icon">
                  <i class="fas fa-laptop"></i>                          
                </span>
                <div>
                  <h5 class="h5 mb-0">Case Studies</h5>
                  <p class="subtext-small m-0 font-weight-light">Client Stories & Product Uses</p>
                </div>
              </a>
            </li>
            <li>
              <a class="d-flex flex-row menu-item p-2 w-auto rounded" href="/blog/category/company-news/press-releases/">
                <span class="nav-icon">
                  <i class="fas fa-industry"></i>                          
                </span>
                <div>
                  <h5 class="h5 mb-0">Company News</h5>
                  <p class="subtext-small m-0 font-weight-light">Press Releases & Updates</p>
                </div>
              </a>
            </li>

            <li class="p-2">
              <a 
                href="/blog/subscribe/" 
                class="main-nav__contact-btn btn custom-btn__4 text-capitalize font-weight-bold m-0"
              >
                Subscribe
              </a>
            </li>
          </ul>
        </div>
      </div>
      <!-- /Row -->
    </div>
    <!-- /Container -->
  </div>
</li>
<!-- /Resources -->