import os

# print dir(__file__)
print "__file__:\t\t", __file__
print "dirname(__file__):\t", os.path.dirname(__file__)
print "basename(__file__):\t", os.path.basename(__file__)
print "abspath(__file__):\t", os.path.abspath(__file__)
print "normpath(__file__):\t", os.path.normpath(__file__)
print "os.getcwd():\t\t", os.getcwd()
print "os.pardir:\t\t", os.pardir
print "Join abs and pardir:\t", os.path.join(os.path.abspath(__file__), os.pardir)
print "normpath the joined:\t", os.path.normpath(
        os.path.join(os.path.abspath(__file__), os.pardir))
