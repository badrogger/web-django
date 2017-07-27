from django.conf.urls import patterns, include, url
from qa.views import test, question, qa_list_all, qa_popular_all, ask_add, answer_add, signup_add, login_add

urlpatterns = patterns('',
   url(r'^$', index, name='main'),
   url(r'^\?page=(?P<page>\d+)', index, name='main'),
   url(r'^login/', index, name='login'),
   url(r'^signup/', index, name='signup'),
   url(r'^question/(?P<id>\d+)/', index, name='question'),
   url(r'^ask/', index, name='ask'),
   url(r'^answer/', index, name='answer'),
   url(r'^popular/', index, name='popular'),
   url(r'^popular/\?page=(?P<page>\d+)', index, name='popular'),
   url(r'^new/', index, name='new'),
)
