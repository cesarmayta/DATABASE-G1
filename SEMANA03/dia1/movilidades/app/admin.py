from django.contrib import admin

# Register your models here.
from .models import *

admin.site.register(TblAlumno)
admin.site.register(TblColegio)
admin.site.register(TblParentesco)
admin.site.register(TblApoderado)
admin.site.register(TblGrado)
admin.site.register(TblVehiculo)

@admin.register(TblMovilidad)
class Movilidad(admin.ModelAdmin):
    list_display = ('movilidad_turno','movilidad_seccion','movilidad_pago','alumno')
