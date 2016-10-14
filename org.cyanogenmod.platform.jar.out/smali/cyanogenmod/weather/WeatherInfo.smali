.class public final Lcyanogenmod/weather/WeatherInfo;
.super Ljava/lang/Object;
.source "WeatherInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/weather/WeatherInfo$Builder;,
        Lcyanogenmod/weather/WeatherInfo$DayForecast;,
        Lcyanogenmod/weather/WeatherInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcyanogenmod/weather/WeatherInfo;",
            ">;"
        }
    .end annotation
.end field


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

.field mKey:I

.field private mTempUnit:I

.field private mTemperature:F

.field private mTimestamp:J

.field private mWindDirection:F

.field private mWindSpeed:F

.field private mWindSpeedUnit:I


# direct methods
.method static synthetic -set0(Lcyanogenmod/weather/WeatherInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcyanogenmod/weather/WeatherInfo;->mCity:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set1(Lcyanogenmod/weather/WeatherInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcyanogenmod/weather/WeatherInfo;->mCityId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set10(Lcyanogenmod/weather/WeatherInfo;I)I
    .locals 0

    iput p1, p0, Lcyanogenmod/weather/WeatherInfo;->mWindSpeedUnit:I

    return p1
.end method

.method static synthetic -set2(Lcyanogenmod/weather/WeatherInfo;I)I
    .locals 0

    iput p1, p0, Lcyanogenmod/weather/WeatherInfo;->mConditionCode:I

    return p1
.end method

.method static synthetic -set3(Lcyanogenmod/weather/WeatherInfo;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcyanogenmod/weather/WeatherInfo;->mForecastList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic -set4(Lcyanogenmod/weather/WeatherInfo;F)F
    .locals 0

    iput p1, p0, Lcyanogenmod/weather/WeatherInfo;->mHumidity:F

    return p1
.end method

.method static synthetic -set5(Lcyanogenmod/weather/WeatherInfo;I)I
    .locals 0

    iput p1, p0, Lcyanogenmod/weather/WeatherInfo;->mTempUnit:I

    return p1
.end method

.method static synthetic -set6(Lcyanogenmod/weather/WeatherInfo;F)F
    .locals 0

    iput p1, p0, Lcyanogenmod/weather/WeatherInfo;->mTemperature:F

    return p1
.end method

.method static synthetic -set7(Lcyanogenmod/weather/WeatherInfo;J)J
    .locals 1

    iput-wide p1, p0, Lcyanogenmod/weather/WeatherInfo;->mTimestamp:J

    return-wide p1
.end method

.method static synthetic -set8(Lcyanogenmod/weather/WeatherInfo;F)F
    .locals 0

    iput p1, p0, Lcyanogenmod/weather/WeatherInfo;->mWindDirection:F

    return p1
.end method

.method static synthetic -set9(Lcyanogenmod/weather/WeatherInfo;F)F
    .locals 0

    iput p1, p0, Lcyanogenmod/weather/WeatherInfo;->mWindSpeed:F

    return p1
.end method

.method static synthetic -wrap0(I)Z
    .locals 1
    .param p0, "code"    # I

    .prologue
    invoke-static {p0}, Lcyanogenmod/weather/WeatherInfo;->isValidWeatherCode(I)Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 327
    new-instance v0, Lcyanogenmod/weather/WeatherInfo$1;

    invoke-direct {v0}, Lcyanogenmod/weather/WeatherInfo$1;-><init>()V

    .line 326
    sput-object v0, Lcyanogenmod/weather/WeatherInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 42
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    invoke-static {p1}, Lcyanogenmod/os/Concierge;->receiveParcel(Landroid/os/Parcel;)Lcyanogenmod/os/Concierge$ParcelInfo;

    move-result-object v1

    .line 269
    .local v1, "parcelInfo":Lcyanogenmod/os/Concierge$ParcelInfo;
    invoke-virtual {v1}, Lcyanogenmod/os/Concierge$ParcelInfo;->getParcelVersion()I

    move-result v2

    .line 271
    .local v2, "parcelableVersion":I
    const/4 v3, 0x5

    if-lt v2, v3, :cond_0

    .line 272
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcyanogenmod/weather/WeatherInfo;->mKey:I

    .line 273
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcyanogenmod/weather/WeatherInfo;->mCityId:Ljava/lang/String;

    .line 274
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcyanogenmod/weather/WeatherInfo;->mCity:Ljava/lang/String;

    .line 275
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcyanogenmod/weather/WeatherInfo;->mConditionCode:I

    .line 276
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    iput v3, p0, Lcyanogenmod/weather/WeatherInfo;->mTemperature:F

    .line 277
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcyanogenmod/weather/WeatherInfo;->mTempUnit:I

    .line 278
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    iput v3, p0, Lcyanogenmod/weather/WeatherInfo;->mHumidity:F

    .line 279
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    iput v3, p0, Lcyanogenmod/weather/WeatherInfo;->mWindSpeed:F

    .line 280
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    iput v3, p0, Lcyanogenmod/weather/WeatherInfo;->mWindDirection:F

    .line 281
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcyanogenmod/weather/WeatherInfo;->mWindSpeedUnit:I

    .line 282
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcyanogenmod/weather/WeatherInfo;->mTimestamp:J

    .line 283
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 284
    .local v0, "forecastListSize":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcyanogenmod/weather/WeatherInfo;->mForecastList:Ljava/util/ArrayList;

    .line 285
    :goto_0
    if-lez v0, :cond_0

    .line 286
    iget-object v4, p0, Lcyanogenmod/weather/WeatherInfo;->mForecastList:Ljava/util/ArrayList;

    sget-object v3, Lcyanogenmod/weather/WeatherInfo$DayForecast;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcyanogenmod/weather/WeatherInfo$DayForecast;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 292
    .end local v0    # "forecastListSize":I
    :cond_0
    invoke-virtual {v1}, Lcyanogenmod/os/Concierge$ParcelInfo;->complete()V

    .line 266
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcyanogenmod/weather/WeatherInfo;)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lcyanogenmod/weather/WeatherInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Lcyanogenmod/weather/WeatherInfo;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcyanogenmod/weather/WeatherInfo;-><init>()V

    return-void
.end method

.method private static isValidWeatherCode(I)Z
    .locals 2
    .param p0, "code"    # I

    .prologue
    const/4 v1, 0x0

    .line 180
    if-ltz p0, :cond_0

    .line 181
    const/16 v0, 0x2c

    if-le p0, v0, :cond_1

    .line 182
    :cond_0
    const/16 v0, 0xc80

    if-eq p0, v0, :cond_1

    .line 183
    return v1

    .line 186
    :cond_1
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 297
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 518
    instance-of v2, p1, Lcyanogenmod/weather/WeatherInfo;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 519
    check-cast v0, Lcyanogenmod/weather/WeatherInfo;

    .line 520
    .local v0, "info":Lcyanogenmod/weather/WeatherInfo;
    invoke-virtual {v0}, Lcyanogenmod/weather/WeatherInfo;->hashCode()I

    move-result v2

    iget v3, p0, Lcyanogenmod/weather/WeatherInfo;->mKey:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 522
    .end local v0    # "info":Lcyanogenmod/weather/WeatherInfo;
    :cond_1
    return v1
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcyanogenmod/weather/WeatherInfo;->mCity:Ljava/lang/String;

    return-object v0
.end method

.method public getCityId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcyanogenmod/weather/WeatherInfo;->mCityId:Ljava/lang/String;

    return-object v0
.end method

.method public getConditionCode()I
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lcyanogenmod/weather/WeatherInfo;->mConditionCode:I

    return v0
.end method

.method public getForecasts()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcyanogenmod/weather/WeatherInfo$DayForecast;",
            ">;"
        }
    .end annotation

    .prologue
    .line 263
    iget-object v0, p0, Lcyanogenmod/weather/WeatherInfo;->mForecastList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getHumidity()F
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lcyanogenmod/weather/WeatherInfo;->mHumidity:F

    return v0
.end method

.method public getTemperature()F
    .locals 1

    .prologue
    .line 249
    iget v0, p0, Lcyanogenmod/weather/WeatherInfo;->mTemperature:F

    return v0
.end method

.method public getTemperatureUnit()I
    .locals 1

    .prologue
    .line 256
    iget v0, p0, Lcyanogenmod/weather/WeatherInfo;->mTempUnit:I

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 221
    iget-wide v0, p0, Lcyanogenmod/weather/WeatherInfo;->mTimestamp:J

    return-wide v0
.end method

.method public getWindDirection()F
    .locals 1

    .prologue
    .line 228
    iget v0, p0, Lcyanogenmod/weather/WeatherInfo;->mWindDirection:F

    return v0
.end method

.method public getWindSpeed()F
    .locals 1

    .prologue
    .line 235
    iget v0, p0, Lcyanogenmod/weather/WeatherInfo;->mWindSpeed:F

    return v0
.end method

.method public getWindSpeedUnit()I
    .locals 1

    .prologue
    .line 242
    iget v0, p0, Lcyanogenmod/weather/WeatherInfo;->mWindSpeedUnit:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 513
    iget v0, p0, Lcyanogenmod/weather/WeatherInfo;->mKey:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 490
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 491
    const-string/jumbo v4, "{CityId: "

    .line 490
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 491
    iget-object v4, p0, Lcyanogenmod/weather/WeatherInfo;->mCityId:Ljava/lang/String;

    .line 490
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 492
    const-string/jumbo v4, " City Name: "

    .line 490
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 492
    iget-object v4, p0, Lcyanogenmod/weather/WeatherInfo;->mCity:Ljava/lang/String;

    .line 490
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 493
    const-string/jumbo v4, " Condition Code: "

    .line 490
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 493
    iget v4, p0, Lcyanogenmod/weather/WeatherInfo;->mConditionCode:I

    .line 490
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 494
    const-string/jumbo v4, " Temperature: "

    .line 490
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 494
    iget v4, p0, Lcyanogenmod/weather/WeatherInfo;->mTemperature:F

    .line 490
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 495
    const-string/jumbo v4, " Temperature Unit: "

    .line 490
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 495
    iget v4, p0, Lcyanogenmod/weather/WeatherInfo;->mTempUnit:I

    .line 490
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 496
    const-string/jumbo v4, " Humidity: "

    .line 490
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 496
    iget v4, p0, Lcyanogenmod/weather/WeatherInfo;->mHumidity:F

    .line 490
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 497
    const-string/jumbo v4, " Wind speed: "

    .line 490
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 497
    iget v4, p0, Lcyanogenmod/weather/WeatherInfo;->mWindSpeed:F

    .line 490
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 498
    const-string/jumbo v4, " Wind direction: "

    .line 490
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 498
    iget v4, p0, Lcyanogenmod/weather/WeatherInfo;->mWindDirection:F

    .line 490
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 499
    const-string/jumbo v4, " Wind Speed Unit: "

    .line 490
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 499
    iget v4, p0, Lcyanogenmod/weather/WeatherInfo;->mWindSpeedUnit:I

    .line 490
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 500
    const-string/jumbo v4, " Timestamp: "

    .line 490
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 500
    iget-wide v4, p0, Lcyanogenmod/weather/WeatherInfo;->mTimestamp:J

    .line 490
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 500
    const-string/jumbo v4, " Forecasts: ["

    .line 490
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 501
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcyanogenmod/weather/WeatherInfo;->mForecastList:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "dayForecast$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcyanogenmod/weather/WeatherInfo$DayForecast;

    .line 502
    .local v1, "dayForecast":Lcyanogenmod/weather/WeatherInfo$DayForecast;
    invoke-virtual {v1}, Lcyanogenmod/weather/WeatherInfo$DayForecast;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 504
    .end local v1    # "dayForecast":Lcyanogenmod/weather/WeatherInfo$DayForecast;
    :cond_0
    const-string/jumbo v3, "]}"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 303
    invoke-static {p1}, Lcyanogenmod/os/Concierge;->prepareParcel(Landroid/os/Parcel;)Lcyanogenmod/os/Concierge$ParcelInfo;

    move-result-object v2

    .line 306
    .local v2, "parcelInfo":Lcyanogenmod/os/Concierge$ParcelInfo;
    iget v3, p0, Lcyanogenmod/weather/WeatherInfo;->mKey:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 307
    iget-object v3, p0, Lcyanogenmod/weather/WeatherInfo;->mCityId:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 308
    iget-object v3, p0, Lcyanogenmod/weather/WeatherInfo;->mCity:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 309
    iget v3, p0, Lcyanogenmod/weather/WeatherInfo;->mConditionCode:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 310
    iget v3, p0, Lcyanogenmod/weather/WeatherInfo;->mTemperature:F

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeFloat(F)V

    .line 311
    iget v3, p0, Lcyanogenmod/weather/WeatherInfo;->mTempUnit:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 312
    iget v3, p0, Lcyanogenmod/weather/WeatherInfo;->mHumidity:F

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeFloat(F)V

    .line 313
    iget v3, p0, Lcyanogenmod/weather/WeatherInfo;->mWindSpeed:F

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeFloat(F)V

    .line 314
    iget v3, p0, Lcyanogenmod/weather/WeatherInfo;->mWindDirection:F

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeFloat(F)V

    .line 315
    iget v3, p0, Lcyanogenmod/weather/WeatherInfo;->mWindSpeedUnit:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 316
    iget-wide v4, p0, Lcyanogenmod/weather/WeatherInfo;->mTimestamp:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 317
    iget-object v3, p0, Lcyanogenmod/weather/WeatherInfo;->mForecastList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 318
    iget-object v3, p0, Lcyanogenmod/weather/WeatherInfo;->mForecastList:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "dayForecast$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyanogenmod/weather/WeatherInfo$DayForecast;

    .line 319
    .local v0, "dayForecast":Lcyanogenmod/weather/WeatherInfo$DayForecast;
    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3}, Lcyanogenmod/weather/WeatherInfo$DayForecast;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 323
    .end local v0    # "dayForecast":Lcyanogenmod/weather/WeatherInfo$DayForecast;
    :cond_0
    invoke-virtual {v2}, Lcyanogenmod/os/Concierge$ParcelInfo;->complete()V

    .line 301
    return-void
.end method
