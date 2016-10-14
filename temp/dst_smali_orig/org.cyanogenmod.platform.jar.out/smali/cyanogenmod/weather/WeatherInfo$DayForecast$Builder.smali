.class public Lcyanogenmod/weather/WeatherInfo$DayForecast$Builder;
.super Ljava/lang/Object;
.source "WeatherInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/weather/WeatherInfo$DayForecast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mConditionCode:I

.field mHigh:F

.field mLow:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcyanogenmod/weather/WeatherInfo$DayForecast;
    .locals 2

    .prologue
    .line 381
    new-instance v0, Lcyanogenmod/weather/WeatherInfo$DayForecast;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcyanogenmod/weather/WeatherInfo$DayForecast;-><init>(Lcyanogenmod/weather/WeatherInfo$DayForecast;)V

    .line 382
    .local v0, "forecast":Lcyanogenmod/weather/WeatherInfo$DayForecast;
    iget v1, p0, Lcyanogenmod/weather/WeatherInfo$DayForecast$Builder;->mLow:F

    iput v1, v0, Lcyanogenmod/weather/WeatherInfo$DayForecast;->mLow:F

    .line 383
    iget v1, p0, Lcyanogenmod/weather/WeatherInfo$DayForecast$Builder;->mHigh:F

    iput v1, v0, Lcyanogenmod/weather/WeatherInfo$DayForecast;->mHigh:F

    .line 384
    iget v1, p0, Lcyanogenmod/weather/WeatherInfo$DayForecast$Builder;->mConditionCode:I

    iput v1, v0, Lcyanogenmod/weather/WeatherInfo$DayForecast;->mConditionCode:I

    .line 385
    invoke-virtual {p0}, Lcyanogenmod/weather/WeatherInfo$DayForecast$Builder;->hashCode()I

    move-result v1

    iput v1, v0, Lcyanogenmod/weather/WeatherInfo$DayForecast;->mKey:I

    .line 386
    return-object v0
.end method

.method public setHigh(F)Lcyanogenmod/weather/WeatherInfo$DayForecast$Builder;
    .locals 2
    .param p1, "high"    # F

    .prologue
    .line 358
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid high forecast temperature"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 361
    :cond_0
    iput p1, p0, Lcyanogenmod/weather/WeatherInfo$DayForecast$Builder;->mHigh:F

    .line 362
    return-object p0
.end method

.method public setLow(F)Lcyanogenmod/weather/WeatherInfo$DayForecast$Builder;
    .locals 2
    .param p1, "low"    # F

    .prologue
    .line 365
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid low forecast temperature"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 368
    :cond_0
    iput p1, p0, Lcyanogenmod/weather/WeatherInfo$DayForecast$Builder;->mLow:F

    .line 369
    return-object p0
.end method

.method public setWeatherCondition(I)Lcyanogenmod/weather/WeatherInfo$DayForecast$Builder;
    .locals 2
    .param p1, "code"    # I

    .prologue
    .line 373
    invoke-static {p1}, Lcyanogenmod/weather/WeatherInfo;->-wrap0(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 374
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid weather condition code"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 376
    :cond_0
    iput p1, p0, Lcyanogenmod/weather/WeatherInfo$DayForecast$Builder;->mConditionCode:I

    .line 377
    return-object p0
.end method
