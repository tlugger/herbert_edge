from service_tests.service_test_case import NioServiceTestCase


class TestSample(NioServiceTestCase):

    service_name = 'PutServiceNameHere'

    def test_function(self):
        self.assertTrue(True)
