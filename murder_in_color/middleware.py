
from django.http import HttpResponse

class ExceptionLoggingMiddleware(object):
    def __init__(self, get_response):
        self.get_response = get_response

    def __call__(self, request):
        return self.get_response(request)

    def process_exception(self, request, exception): 
        import traceback
        print(traceback.format_exc())
