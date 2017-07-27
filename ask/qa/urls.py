from django.conf.urls import include, url
from qa.views import test, question, qa_list_all, qa_popular_all, ask_add, answer_add, signup_add, login_add

urlpatterns = [
   url(r'^$', test, name='main'),
#  url(r'^\?page=(?P<page>\d+)', index, name='main'),
   url(r'^login/', test, name='login'),
   url(r'^signup/', test, name='signup'),
   url(r'^question/\d+/', test, name='question'),
   url(r'^ask/', test, name='ask'),
#  url(r'^answer/', index, name='answer'),
   url(r'^popular/', test, name='popular'),
#   url(r'^popular/\?page=(?P<page>\d+)', index, name='popular'),
   url(r'^new/', test, name='new'),
]
