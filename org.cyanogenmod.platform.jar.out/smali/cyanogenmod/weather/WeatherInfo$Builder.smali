.class public Lcyanogenmod/weather/WeatherInfo$Builder;
.super Ljava/lang/Object;
.source "WeatherInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/weather/WeatherInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mCity:Ljava/lang/String;

.field private mCityId:Ljava/lang/String;

.field private mConditionCode:I

.field private mForecastList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcyanogenmod/weather/WeatherInfo$DayForecast;",
            ">;"
        }
    .end annotation
.end field

.field private mHumidity:F

.field private mTempUnit:I

.field private mTemperature:F

.field private mTimestamp:J

.field private mWindDirection:F

.field private mWindSpeed:F

.field private mWindSpeedUnit:I


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "timestamp"    # J

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-wide p1, p0, Lcyanogenmod/weather/WeatherInfo$Builder;->mTimestamp:J

    .line 72
    return-void
.end method

.method private isValidTempUnit(I)Z
    .locals 1
    .param p1, "unit"    # I

    .prologue
    .line 158
    packed-switch p1, :pswitch_data_0

    .line 163
    const/4 v0, 0x0

    return v0

    .line 161
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 158
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isValidWindSpeedUnit(I)Z
    .locals 1
    .param p1, "unit"    # I

    .prologue
    .line 168
    packed-switch p1, :pswitch_data_0

    .line 173
    const/4 v0, 0x0

    return v0

    .line 171
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 168
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public build()Lcyanogenmod/weather/WeatherInfo;
    .locals 4

    .prologue
    .line 141
    new-instance v0, Lcyanogenmod/weather/WeatherInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcyanogenmod/weather/WeatherInfo;-><init>(Lcyanogenmod/weather/WeatherInfo;)V

    .line 142
    .local v0, "info":Lcyanogenmod/weather/WeatherInfo;
    iget-object v1, p0, Lcyanogenmod/weather/WeatherInfo$Builder;->mCityId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcyanogenmod/weather/WeatherInfo;->-set1(Lcyanogenmod/weather/WeatherInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 143
    iget-object v1, p0, Lcyanogenmod/weather/WeatherInfo$Builder;->mCity:Ljava/lang/String;

    invoke-static {v0, v1}, Lcyanogenmod/weather/WeatherInfo;->-set0(Lcyanogenmod/weather/WeatherInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 144
    iget v1, p0, Lcyanogenmod/weather/WeatherInfo$Builder;->mConditionCode:I

    invoke-static {v0, v1}, Lcyanogenmod/weather/WeatherInfo;->-set2(Lcyanogenmod/weather/WeatherInfo;I)I

    .line 145
    iget v1, p0, Lcyanogenmod/weather/WeatherInfo$Builder;->mTemperature:F

    invoke-static {v0, v1}, Lcyanogenmod/weather/WeatherInfo;->-set6(Lcyanogenmod/weather/WeatherInfo;F)F

    .line 146
    iget v1, p0, Lcyanogenmod/weather/WeatherInfo$Builder;->mTempUnit:I

    invoke-static {v0, v1}, Lcyanogenmod/weather/WeatherInfo;->-set5(Lcyanogenmod/weather/WeatherInfo;I)I

    .line 147
    iget v1, p0, Lcyanogenmod/weather/WeatherInfo$Builder;->mHumidity:F

    invoke-static {v0, v1}, Lcyanogenmod/weather/WeatherInfo;->-set4(Lcyanogenmod/weather/WeatherInfo;F)F

    .line 148
    iget v1, p0, Lcyanogenmod/weather/WeatherInfo$Builder;->mWindSpeed:F

    invoke-static {v0, v1}, Lcyanogenmod/weather/WeatherInfo;->-set9(Lcyanogenmod/weather/WeatherInfo;F)F

    .line 149
    iget v1, p0, Lcyanogenmod/weather/WeatherInfo$Builder;->mWindDirection:F

    invoke-static {v0, v1}, Lcyanogenmod/weather/WeatherInfo;->-set8(Lcyanogenmod/weather/WeatherInfo;F)F

    .line 150
    iget v1, p0, Lcyanogenmod/weather/WeatherInfo$Builder;->mWindSpeedUnit:I

    invoke-static {v0, v1}, Lcyanogenmod/weather/WeatherInfo;->-set10(Lcyanogenmod/weather/WeatherInfo;I)I

    .line 151
    iget-wide v2, p0, Lcyanogenmod/weather/WeatherInfo$Builder;->mTimestamp:J

    invoke-static {v0, v2, v3}, Lcyanogenmod/weather/WeatherInfo;->-set7(Lcyanogenmod/weather/WeatherInfo;J)J

    .line 152
    iget-object v1, p0, Lcyanogenmod/weather/WeatherInfo$Builder;->mForecastList:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcyanogenmod/weather/WeatherInfo;->-set3(Lcyanogenmod/weather/WeatherInfo;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 153
    invoke-virtual {p0}, Lcyanogenmod/weather/WeatherInfo$Builder;->hashCode()I

    move-result v1

    iput v1, v0, Lcyanogenmod/weather/WeatherInfo;->mKey:I

    .line 154
    return-object v0
.end method

.method public setCity(Ljava/lang/String;Ljava/lang/String;)Lcyanogenmod/weather/WeatherInfo$Builder;
    .locals 2
    .param p1, "cityId"    # Ljava/lang/String;
    .param p2, "cityName"    # Ljava/lang/String;

    .prologue
    .line 77
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 78
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "City name and id can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_1
    iput-object p1, p0, Lcyanogenmod/weather/WeatherInfo$Builder;->mCityId:Ljava/lang/String;

    .line 81
    iput-object p2, p0, Lcyanogenmod/weather/WeatherInfo$Builder;->mCity:Ljava/lang/String;

    .line 82
    return-object p0
.end method

.method public setForecast(Ljava/util/ArrayList;)Lcyanogenmod/weather/WeatherInfo$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcyanogenmod/weather/WeatherInfo$DayForecast;",
            ">;)",
            "Lcyanogenmod/weather/WeatherInfo$Builder;"
        }
    .end annotation

    .prologue
    .line 133
    .local p1, "forecasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcyanogenmod/weather/WeatherInfo$DayForecast;>;"
    if-nez p1, :cond_0

    .line 134
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Forecast list can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_0
    iput-object p1, p0, Lcyanogenmod/weather/WeatherInfo$Builder;->mForecastList:Ljava/util/ArrayList;

    .line 137
    return-object p0
.end method

.method public setHumidity(F)Lcyanogenmod/weather/WeatherInfo$Builder;
    .locals 2
    .param p1, "humidity"    # F

    .prologue
    .line 100
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid humidity value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_0
    iput p1, p0, Lcyanogenmod/weather/WeatherInfo$Builder;->mHumidity:F

    .line 105
    return-object p0
.end method

.method public setTemperature(FI)Lcyanogenmod/weather/WeatherInfo$Builder;
    .locals 2
    .param p1, "temperature"    # F
    .param p2, "tempUnit"    # I

    .prologue
    .line 86
    invoke-direct {p0, p2}, Lcyanogenmod/weather/WeatherInfo$Builder;->isValidTempUnit(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid temperature unit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid temperature value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_1
    iput p1, p0, Lcyanogenmod/weather/WeatherInfo$Builder;->mTemperature:F

    .line 95
    iput p2, p0, Lcyanogenmod/weather/WeatherInfo$Builder;->mTempUnit:I

    .line 96
    return-object p0
.end method

.method public setWeatherCondition(I)Lcyanogenmod/weather/WeatherInfo$Builder;
    .locals 2
    .param p1, "conditionCode"    # I

    .prologue
    .line 125
    invoke-static {p1}, Lcyanogenmod/weather/WeatherInfo;->-wrap0(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid weather condition code"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_0
    iput p1, p0, Lcyanogenmod/weather/WeatherInfo$Builder;->mConditionCode:I

    .line 129
    return-object p0
.end method

.method public setWind(FFI)Lcyanogenmod/weather/WeatherInfo$Builder;
    .locals 2
    .param p1, "windSpeed"    # F
    .param p2, "windDirection"    # F
    .param p3, "windSpeedUnit"    # I

    .prologue
    .line 109
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid wind speed value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_0
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid wind direction value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_1
    invoke-direct {p0, p3}, Lcyanogenmod/weather/WeatherInfo$Builder;->isValidWindSpeedUnit(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 116
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid speed unit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_2
    iput p1, p0, Lcyanogenmod/weather/WeatherInfo$Builder;->mWindSpeed:F

    .line 119
    iput p3, p0, Lcyanogenmod/weather/WeatherInfo$Builder;->mWindSpeedUnit:I

    .line 120
    iput p2, p0, Lcyanogenmod/weather/WeatherInfo$Builder;->mWindDirection:F

    .line 121
    return-object p0
.end method
