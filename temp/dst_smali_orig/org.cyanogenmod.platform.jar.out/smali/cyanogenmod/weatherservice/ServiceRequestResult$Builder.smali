.class public Lcyanogenmod/weatherservice/ServiceRequestResult$Builder;
.super Ljava/lang/Object;
.source "ServiceRequestResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/weatherservice/ServiceRequestResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mBuilderLocationLookupList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcyanogenmod/weather/WeatherLocation;",
            ">;"
        }
    .end annotation
.end field

.field private mBuilderWeatherInfo:Lcyanogenmod/weather/WeatherInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object v0, p0, Lcyanogenmod/weatherservice/ServiceRequestResult$Builder;->mBuilderWeatherInfo:Lcyanogenmod/weather/WeatherInfo;

    .line 118
    iput-object v0, p0, Lcyanogenmod/weatherservice/ServiceRequestResult$Builder;->mBuilderLocationLookupList:Ljava/util/ArrayList;

    .line 116
    return-void
.end method


# virtual methods
.method public build()Lcyanogenmod/weatherservice/ServiceRequestResult;
    .locals 2

    .prologue
    .line 165
    new-instance v0, Lcyanogenmod/weatherservice/ServiceRequestResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcyanogenmod/weatherservice/ServiceRequestResult;-><init>(Lcyanogenmod/weatherservice/ServiceRequestResult;)V

    .line 166
    .local v0, "result":Lcyanogenmod/weatherservice/ServiceRequestResult;
    iget-object v1, p0, Lcyanogenmod/weatherservice/ServiceRequestResult$Builder;->mBuilderWeatherInfo:Lcyanogenmod/weather/WeatherInfo;

    invoke-static {v0, v1}, Lcyanogenmod/weatherservice/ServiceRequestResult;->-set2(Lcyanogenmod/weatherservice/ServiceRequestResult;Lcyanogenmod/weather/WeatherInfo;)Lcyanogenmod/weather/WeatherInfo;

    .line 167
    iget-object v1, p0, Lcyanogenmod/weatherservice/ServiceRequestResult$Builder;->mBuilderLocationLookupList:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcyanogenmod/weatherservice/ServiceRequestResult;->-set1(Lcyanogenmod/weatherservice/ServiceRequestResult;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 168
    invoke-virtual {p0}, Lcyanogenmod/weatherservice/ServiceRequestResult$Builder;->hashCode()I

    move-result v1

    invoke-static {v0, v1}, Lcyanogenmod/weatherservice/ServiceRequestResult;->-set0(Lcyanogenmod/weatherservice/ServiceRequestResult;I)I

    .line 169
    return-object v0
.end method

.method public setLocationLookupList(Ljava/util/ArrayList;)Lcyanogenmod/weatherservice/ServiceRequestResult$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcyanogenmod/weather/WeatherLocation;",
            ">;)",
            "Lcyanogenmod/weatherservice/ServiceRequestResult$Builder;"
        }
    .end annotation

    .prologue
    .line 150
    .local p1, "locations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcyanogenmod/weather/WeatherLocation;>;"
    iget-object v0, p0, Lcyanogenmod/weatherservice/ServiceRequestResult$Builder;->mBuilderWeatherInfo:Lcyanogenmod/weather/WeatherInfo;

    if-eqz v0, :cond_0

    .line 151
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Can\'t add a WeatherLocation list when you have already added weather information"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_0
    iput-object p1, p0, Lcyanogenmod/weatherservice/ServiceRequestResult$Builder;->mBuilderLocationLookupList:Ljava/util/ArrayList;

    .line 156
    return-object p0
.end method

.method public setWeatherInfo(Lcyanogenmod/weather/WeatherInfo;)Lcyanogenmod/weatherservice/ServiceRequestResult$Builder;
    .locals 2
    .param p1, "weatherInfo"    # Lcyanogenmod/weather/WeatherInfo;

    .prologue
    .line 129
    iget-object v0, p0, Lcyanogenmod/weatherservice/ServiceRequestResult$Builder;->mBuilderLocationLookupList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 130
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Can\'t add weather information when you have already added a WeatherLocation list"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_0
    if-nez p1, :cond_1

    .line 135
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "WeatherInfo can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_1
    iput-object p1, p0, Lcyanogenmod/weatherservice/ServiceRequestResult$Builder;->mBuilderWeatherInfo:Lcyanogenmod/weather/WeatherInfo;

    .line 139
    return-object p0
.end method
