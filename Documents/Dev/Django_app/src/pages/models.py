from django.db import models
from django.contrib.auth.models import User
# Create your models here.

class Restaurant(models.Model):
    name = models.CharField()
    address = models.TextField()
    photo = ImageField(upload_to="food/photo", null=True, blank=True)
    menu = models.TextField()
    tags = models.CharField(max_length=200)
    pub_date = models.DateTimeField(auto_now_add=True)
    writer = models.ForeignKey(user)


def __str__(self):
    return self.name
