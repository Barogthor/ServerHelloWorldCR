- active = context.request.path == "/" ? "active" : ""
li.nav-item class=active
  a.nav-link href="/" Home
- if (current_user = context.current_user)
  - active = context.request.path == "/profile" ? "active" : ""
  li.nav-item class=active
    a.nav-link href="/profile"
      == current_user.email
  li.nav-item
    a.nav-link href="/signout" Sign Out
  li.nav-item
    a.nav-link href="/chat" Chat
- else
  - active = context.request.path == "/signin" ? "active" : ""
  li.nav-item class=active
    a.nav-link href="/signin" Sign In
  - active = context.request.path == "/signup" ? "active" : ""
  li.nav-item class=active
    a.nav-link href="/signup" Sign Up
