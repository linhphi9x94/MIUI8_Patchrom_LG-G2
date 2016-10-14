.class public Lcyanogenmod/weather/WeatherLocation$Builder;
.super Ljava/lang/Object;
.source "WeatherLocation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/weather/WeatherLocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mCity:Ljava/lang/String;

.field mCityId:Ljava/lang/String;

.field mCountry:Ljava/lang/String;

.field mCountryId:Ljava/lang/String;

.field mPostal:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "cityId"    # Ljava/lang/String;
    .param p2, "cityName"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcyanogenmod/weather/WeatherLocation$Builder;->mCityId:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lcyanogenmod/weather/WeatherLocation$Builder;->mCity:Ljava/lang/String;

    .line 49
    return-void
.end method


# virtual methods
.method public build()Lcyanogenmod/weather/WeatherLocation;
    .locals 2

    .prologue
    .line 66
    new-instance v0, Lcyanogenmod/weather/WeatherLocation;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcyanogenmod/weather/WeatherLocation;-><init>(Lcyanogenmod/weather/WeatherLocation;)V

    .line 67
    .local v0, "weatherLocation":Lcyanogenmod/weather/WeatherLocation;
    iget-object v1, p0, Lcyanogenmod/weather/WeatherLocation$Builder;->mCityId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcyanogenmod/weather/WeatherLocation;->-set1(Lcyanogenmod/weather/WeatherLocation;Ljava/lang/String;)Ljava/lang/String;

    .line 68
    iget-object v1, p0, Lcyanogenmod/weather/WeatherLocation$Builder;->mCity:Ljava/lang/String;

    invoke-static {v0, v1}, Lcyanogenmod/weather/WeatherLocation;->-set0(Lcyanogenmod/weather/WeatherLocation;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    iget-object v1, p0, Lcyanogenmod/weather/WeatherLocation$Builder;->mPostal:Ljava/lang/String;

    invoke-static {v0, v1}, Lcyanogenmod/weather/WeatherLocation;->-set5(Lcyanogenmod/weather/WeatherLocation;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    iget-object v1, p0, Lcyanogenmod/weather/WeatherLocation$Builder;->mCountryId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcyanogenmod/weather/WeatherLocation;->-set3(Lcyanogenmod/weather/WeatherLocation;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    iget-object v1, p0, Lcyanogenmod/weather/WeatherLocation$Builder;->mCountry:Ljava/lang/String;

    invoke-static {v0, v1}, Lcyanogenmod/weather/WeatherLocation;->-set2(Lcyanogenmod/weather/WeatherLocation;Ljava/lang/String;)Ljava/lang/String;

    .line 72
    invoke-virtual {p0}, Lcyanogenmod/weather/WeatherLocation$Builder;->hashCode()I

    move-result v1

    invoke-static {v0, v1}, Lcyanogenmod/weather/WeatherLocation;->-set4(Lcyanogenmod/weather/WeatherLocation;I)I

    .line 73
    return-object v0
.end method

.method public setCountry(Ljava/lang/String;Ljava/lang/String;)Lcyanogenmod/weather/WeatherLocation$Builder;
    .locals 0
    .param p1, "countyId"    # Ljava/lang/String;
    .param p2, "country"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcyanogenmod/weather/WeatherLocation$Builder;->mCountryId:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Lcyanogenmod/weather/WeatherLocation$Builder;->mCountry:Ljava/lang/String;

    .line 57
    return-object p0
.end method

.method public setPostalCode(Ljava/lang/String;)Lcyanogenmod/weather/WeatherLocation$Builder;
    .locals 0
    .param p1, "postalCode"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcyanogenmod/weather/WeatherLocation$Builder;->mPostal:Ljava/lang/String;

    .line 62
    return-object p0
.end method
