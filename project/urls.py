from django.contrib import admin
from django.urls import path, include

urlpatterns = [
    # django admin
    path('admin/', admin.site.urls),
    # user management
    path("accounts/", include("allauth.urls")),
    # local apps
    path("accounts/", include("accounts.urls")),
    path('', include('pages.urls')),
    path("books/", include("books.urls")),
]
