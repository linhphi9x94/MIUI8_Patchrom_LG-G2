.class Lcyanogenmod/weather/RequestInfo$Builder;
.super Ljava/lang/Object;
.source "RequestInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/weather/RequestInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# instance fields
.field private mCityName:Ljava/lang/String;

.field private mIsQueryOnly:Z

.field private mListener:Lcyanogenmod/weather/IRequestInfoListener;

.field private mLocation:Landroid/location/Location;

.field private mRequestType:I

.field private mTempUnit:I

.field private mWeatherLocation:Lcyanogenmod/weather/WeatherLocation;


# direct methods
.method public constructor <init>(Lcyanogenmod/weather/IRequestInfoListener;)V
    .locals 1
    .param p1, "listener"    # Lcyanogenmod/weather/IRequestInfoListener;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x2

    iput v0, p0, Lcyanogenmod/weather/RequestInfo$Builder;->mTempUnit:I

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcyanogenmod/weather/RequestInfo$Builder;->mIsQueryOnly:Z

    .line 68
    iput-object p1, p0, Lcyanogenmod/weather/RequestInfo$Builder;->mListener:Lcyanogenmod/weather/IRequestInfoListener;

    .line 67
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


# virtual methods
.method public build()Lcyanogenmod/weather/RequestInfo;
    .locals 2

    .prologue
    .line 145
    new-instance v0, Lcyanogenmod/weather/RequestInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcyanogenmod/weather/RequestInfo;-><init>(Lcyanogenmod/weather/RequestInfo;)V

    .line 146
    .local v0, "info":Lcyanogenmod/weather/RequestInfo;
    iget-object v1, p0, Lcyanogenmod/weather/RequestInfo$Builder;->mListener:Lcyanogenmod/weather/IRequestInfoListener;

    invoke-static {v0, v1}, Lcyanogenmod/weather/RequestInfo;->-set3(Lcyanogenmod/weather/RequestInfo;Lcyanogenmod/weather/IRequestInfoListener;)Lcyanogenmod/weather/IRequestInfoListener;

    .line 147
    iget v1, p0, Lcyanogenmod/weather/RequestInfo$Builder;->mRequestType:I

    invoke-static {v0, v1}, Lcyanogenmod/weather/RequestInfo;->-set5(Lcyanogenmod/weather/RequestInfo;I)I

    .line 148
    iget-object v1, p0, Lcyanogenmod/weather/RequestInfo$Builder;->mCityName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcyanogenmod/weather/RequestInfo;->-set0(Lcyanogenmod/weather/RequestInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 149
    iget-object v1, p0, Lcyanogenmod/weather/RequestInfo$Builder;->mWeatherLocation:Lcyanogenmod/weather/WeatherLocation;

    invoke-static {v0, v1}, Lcyanogenmod/weather/RequestInfo;->-set7(Lcyanogenmod/weather/RequestInfo;Lcyanogenmod/weather/WeatherLocation;)Lcyanogenmod/weather/WeatherLocation;

    .line 150
    iget-object v1, p0, Lcyanogenmod/weather/RequestInfo$Builder;->mLocation:Landroid/location/Location;

    invoke-static {v0, v1}, Lcyanogenmod/weather/RequestInfo;->-set4(Lcyanogenmod/weather/RequestInfo;Landroid/location/Location;)Landroid/location/Location;

    .line 151
    iget v1, p0, Lcyanogenmod/weather/RequestInfo$Builder;->mTempUnit:I

    invoke-static {v0, v1}, Lcyanogenmod/weather/RequestInfo;->-set6(Lcyanogenmod/weather/RequestInfo;I)I

    .line 152
    iget-boolean v1, p0, Lcyanogenmod/weather/RequestInfo$Builder;->mIsQueryOnly:Z

    invoke-static {v0, v1}, Lcyanogenmod/weather/RequestInfo;->-set1(Lcyanogenmod/weather/RequestInfo;Z)Z

    .line 153
    invoke-virtual {p0}, Lcyanogenmod/weather/RequestInfo$Builder;->hashCode()I

    move-result v1

    invoke-static {v0, v1}, Lcyanogenmod/weather/RequestInfo;->-set2(Lcyanogenmod/weather/RequestInfo;I)I

    .line 154
    return-object v0
.end method

.method public queryOnly()Lcyanogenmod/weather/RequestInfo$Builder;
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcyanogenmod/weather/RequestInfo$Builder;->mRequestType:I

    packed-switch v0, :pswitch_data_0

    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcyanogenmod/weather/RequestInfo$Builder;->mIsQueryOnly:Z

    .line 141
    :goto_0
    return-object p0

    .line 135
    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcyanogenmod/weather/RequestInfo$Builder;->mIsQueryOnly:Z

    goto :goto_0

    .line 132
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setCityName(Ljava/lang/String;)Lcyanogenmod/weather/RequestInfo$Builder;
    .locals 2
    .param p1, "cityName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 76
    iput-object p1, p0, Lcyanogenmod/weather/RequestInfo$Builder;->mCityName:Ljava/lang/String;

    .line 77
    const/4 v0, 0x3

    iput v0, p0, Lcyanogenmod/weather/RequestInfo$Builder;->mRequestType:I

    .line 78
    iput-object v1, p0, Lcyanogenmod/weather/RequestInfo$Builder;->mLocation:Landroid/location/Location;

    .line 79
    iput-object v1, p0, Lcyanogenmod/weather/RequestInfo$Builder;->mWeatherLocation:Lcyanogenmod/weather/WeatherLocation;

    .line 80
    return-object p0
.end method

.method public setLocation(Landroid/location/Location;)Lcyanogenmod/weather/RequestInfo$Builder;
    .locals 1
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    const/4 v0, 0x0

    .line 88
    iput-object p1, p0, Lcyanogenmod/weather/RequestInfo$Builder;->mLocation:Landroid/location/Location;

    .line 89
    iput-object v0, p0, Lcyanogenmod/weather/RequestInfo$Builder;->mCityName:Ljava/lang/String;

    .line 90
    iput-object v0, p0, Lcyanogenmod/weather/RequestInfo$Builder;->mWeatherLocation:Lcyanogenmod/weather/WeatherLocation;

    .line 91
    const/4 v0, 0x1

    iput v0, p0, Lcyanogenmod/weather/RequestInfo$Builder;->mRequestType:I

    .line 92
    return-object p0
.end method

.method public setTemperatureUnit(I)Lcyanogenmod/weather/RequestInfo$Builder;
    .locals 2
    .param p1, "unit"    # I

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcyanogenmod/weather/RequestInfo$Builder;->isValidTempUnit(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid temperature unit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_0
    iput p1, p0, Lcyanogenmod/weather/RequestInfo$Builder;->mTempUnit:I

    .line 123
    return-object p0
.end method

.method public setWeatherLocation(Lcyanogenmod/weather/WeatherLocation;)Lcyanogenmod/weather/RequestInfo$Builder;
    .locals 1
    .param p1, "weatherLocation"    # Lcyanogenmod/weather/WeatherLocation;

    .prologue
    const/4 v0, 0x0

    .line 100
    iput-object p1, p0, Lcyanogenmod/weather/RequestInfo$Builder;->mWeatherLocation:Lcyanogenmod/weather/WeatherLocation;

    .line 101
    iput-object v0, p0, Lcyanogenmod/weather/RequestInfo$Builder;->mLocation:Landroid/location/Location;

    .line 102
    iput-object v0, p0, Lcyanogenmod/weather/RequestInfo$Builder;->mCityName:Ljava/lang/String;

    .line 103
    const/4 v0, 0x2

    iput v0, p0, Lcyanogenmod/weather/RequestInfo$Builder;->mRequestType:I

    .line 104
    return-object p0
.end method
