.class public final Lcyanogenmod/weather/RequestInfo;
.super Ljava/lang/Object;
.source "RequestInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/weather/RequestInfo$Builder;,
        Lcyanogenmod/weather/RequestInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcyanogenmod/weather/RequestInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_GEO_LOCATION_REQ:I = 0x1

.field public static final TYPE_LOOKUP_CITY_NAME_REQ:I = 0x3

.field public static final TYPE_WEATHER_LOCATION_REQ:I = 0x2


# instance fields
.field private mCityName:Ljava/lang/String;

.field private mIsQueryOnly:Z

.field private mKey:I

.field private mListener:Lcyanogenmod/weather/IRequestInfoListener;

.field private mLocation:Landroid/location/Location;

.field private mRequestType:I

.field private mTempUnit:I

.field private mWeatherLocation:Lcyanogenmod/weather/WeatherLocation;


# direct methods
.method static synthetic -set0(Lcyanogenmod/weather/RequestInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcyanogenmod/weather/RequestInfo;->mCityName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set1(Lcyanogenmod/weather/RequestInfo;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcyanogenmod/weather/RequestInfo;->mIsQueryOnly:Z

    return p1
.end method

.method static synthetic -set2(Lcyanogenmod/weather/RequestInfo;I)I
    .locals 0

    iput p1, p0, Lcyanogenmod/weather/RequestInfo;->mKey:I

    return p1
.end method

.method static synthetic -set3(Lcyanogenmod/weather/RequestInfo;Lcyanogenmod/weather/IRequestInfoListener;)Lcyanogenmod/weather/IRequestInfoListener;
    .locals 0

    iput-object p1, p0, Lcyanogenmod/weather/RequestInfo;->mListener:Lcyanogenmod/weather/IRequestInfoListener;

    return-object p1
.end method

.method static synthetic -set4(Lcyanogenmod/weather/RequestInfo;Landroid/location/Location;)Landroid/location/Location;
    .locals 0

    iput-object p1, p0, Lcyanogenmod/weather/RequestInfo;->mLocation:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic -set5(Lcyanogenmod/weather/RequestInfo;I)I
    .locals 0

    iput p1, p0, Lcyanogenmod/weather/RequestInfo;->mRequestType:I

    return p1
.end method

.method static synthetic -set6(Lcyanogenmod/weather/RequestInfo;I)I
    .locals 0

    iput p1, p0, Lcyanogenmod/weather/RequestInfo;->mTempUnit:I

    return p1
.end method

.method static synthetic -set7(Lcyanogenmod/weather/RequestInfo;Lcyanogenmod/weather/WeatherLocation;)Lcyanogenmod/weather/WeatherLocation;
    .locals 0

    iput-object p1, p0, Lcyanogenmod/weather/RequestInfo;->mWeatherLocation:Lcyanogenmod/weather/WeatherLocation;

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 264
    new-instance v0, Lcyanogenmod/weather/RequestInfo$1;

    invoke-direct {v0}, Lcyanogenmod/weather/RequestInfo$1;-><init>()V

    sput-object v0, Lcyanogenmod/weather/RequestInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 31
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x1

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    invoke-static {p1}, Lcyanogenmod/os/Concierge;->receiveParcel(Landroid/os/Parcel;)Lcyanogenmod/os/Concierge$ParcelInfo;

    move-result-object v0

    .line 172
    .local v0, "parcelInfo":Lcyanogenmod/os/Concierge$ParcelInfo;
    invoke-virtual {v0}, Lcyanogenmod/os/Concierge$ParcelInfo;->getParcelVersion()I

    move-result v1

    .line 174
    .local v1, "parcelableVersion":I
    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcyanogenmod/weather/RequestInfo;->mKey:I

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcyanogenmod/weather/RequestInfo;->mRequestType:I

    .line 177
    iget v2, p0, Lcyanogenmod/weather/RequestInfo;->mRequestType:I

    packed-switch v2, :pswitch_data_0

    .line 190
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v3, :cond_1

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcyanogenmod/weather/RequestInfo;->mIsQueryOnly:Z

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcyanogenmod/weather/IRequestInfoListener$Stub;->asInterface(Landroid/os/IBinder;)Lcyanogenmod/weather/IRequestInfoListener;

    move-result-object v2

    iput-object v2, p0, Lcyanogenmod/weather/RequestInfo;->mListener:Lcyanogenmod/weather/IRequestInfoListener;

    .line 195
    :cond_0
    invoke-virtual {v0}, Lcyanogenmod/os/Concierge$ParcelInfo;->complete()V

    .line 169
    return-void

    .line 179
    :pswitch_0
    sget-object v2, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Location;

    iput-object v2, p0, Lcyanogenmod/weather/RequestInfo;->mLocation:Landroid/location/Location;

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcyanogenmod/weather/RequestInfo;->mTempUnit:I

    goto :goto_0

    .line 183
    :pswitch_1
    sget-object v2, Lcyanogenmod/weather/WeatherLocation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcyanogenmod/weather/WeatherLocation;

    iput-object v2, p0, Lcyanogenmod/weather/RequestInfo;->mWeatherLocation:Lcyanogenmod/weather/WeatherLocation;

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcyanogenmod/weather/RequestInfo;->mTempUnit:I

    goto :goto_0

    .line 187
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcyanogenmod/weather/RequestInfo;->mCityName:Ljava/lang/String;

    goto :goto_0

    .line 190
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 177
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcyanogenmod/weather/RequestInfo;)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lcyanogenmod/weather/RequestInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Lcyanogenmod/weather/RequestInfo;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcyanogenmod/weather/RequestInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 278
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 350
    instance-of v2, p1, Lcyanogenmod/weather/RequestInfo;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 351
    check-cast v0, Lcyanogenmod/weather/RequestInfo;

    .line 352
    .local v0, "info":Lcyanogenmod/weather/RequestInfo;
    invoke-virtual {v0}, Lcyanogenmod/weather/RequestInfo;->hashCode()I

    move-result v2

    iget v3, p0, Lcyanogenmod/weather/RequestInfo;->mKey:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 354
    .end local v0    # "info":Lcyanogenmod/weather/RequestInfo;
    :cond_1
    return v1
.end method

.method public getCityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcyanogenmod/weather/RequestInfo;->mCityName:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcyanogenmod/weather/RequestInfo;->mLocation:Landroid/location/Location;

    return-object v0
.end method

.method public getRequestListener()Lcyanogenmod/weather/IRequestInfoListener;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcyanogenmod/weather/RequestInfo;->mListener:Lcyanogenmod/weather/IRequestInfoListener;

    return-object v0
.end method

.method public getRequestType()I
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Lcyanogenmod/weather/RequestInfo;->mRequestType:I

    return v0
.end method

.method public getTemperatureUnit()I
    .locals 1

    .prologue
    .line 240
    iget v0, p0, Lcyanogenmod/weather/RequestInfo;->mRequestType:I

    packed-switch v0, :pswitch_data_0

    .line 245
    const/4 v0, -0x1

    return v0

    .line 243
    :pswitch_0
    iget v0, p0, Lcyanogenmod/weather/RequestInfo;->mTempUnit:I

    return v0

    .line 240
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getWeatherLocation()Lcyanogenmod/weather/WeatherLocation;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcyanogenmod/weather/RequestInfo;->mWeatherLocation:Lcyanogenmod/weather/WeatherLocation;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 345
    iget v0, p0, Lcyanogenmod/weather/RequestInfo;->mKey:I

    return v0
.end method

.method public isQueryOnlyWeatherRequest()Z
    .locals 1

    .prologue
    .line 255
    iget v0, p0, Lcyanogenmod/weather/RequestInfo;->mRequestType:I

    packed-switch v0, :pswitch_data_0

    .line 260
    const/4 v0, 0x0

    return v0

    .line 258
    :pswitch_0
    iget-boolean v0, p0, Lcyanogenmod/weather/RequestInfo;->mIsQueryOnly:Z

    return v0

    .line 255
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 312
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{ Request for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    iget v1, p0, Lcyanogenmod/weather/RequestInfo;->mRequestType:I

    packed-switch v1, :pswitch_data_0

    .line 336
    :goto_0
    const-string/jumbo v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 315
    :pswitch_0
    const-string/jumbo v1, "Location: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcyanogenmod/weather/RequestInfo;->mLocation:Landroid/location/Location;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 316
    const-string/jumbo v1, " Temp Unit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    iget v1, p0, Lcyanogenmod/weather/RequestInfo;->mTempUnit:I

    if-ne v1, v3, :cond_0

    .line 318
    const-string/jumbo v1, "Fahrenheit"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 320
    :cond_0
    const-string/jumbo v1, " Celsius"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 324
    :pswitch_1
    const-string/jumbo v1, "WeatherLocation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcyanogenmod/weather/RequestInfo;->mWeatherLocation:Lcyanogenmod/weather/WeatherLocation;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 325
    const-string/jumbo v1, " Temp Unit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    iget v1, p0, Lcyanogenmod/weather/RequestInfo;->mTempUnit:I

    if-ne v1, v3, :cond_1

    .line 327
    const-string/jumbo v1, "Fahrenheit"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 329
    :cond_1
    const-string/jumbo v1, " Celsius"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 333
    :pswitch_2
    const-string/jumbo v1, "Lookup City: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcyanogenmod/weather/RequestInfo;->mCityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 313
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 284
    invoke-static {p1}, Lcyanogenmod/os/Concierge;->prepareParcel(Landroid/os/Parcel;)Lcyanogenmod/os/Concierge$ParcelInfo;

    move-result-object v0

    .line 287
    .local v0, "parcelInfo":Lcyanogenmod/os/Concierge$ParcelInfo;
    iget v2, p0, Lcyanogenmod/weather/RequestInfo;->mKey:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 288
    iget v2, p0, Lcyanogenmod/weather/RequestInfo;->mRequestType:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 289
    iget v2, p0, Lcyanogenmod/weather/RequestInfo;->mRequestType:I

    packed-switch v2, :pswitch_data_0

    .line 302
    :goto_0
    iget-boolean v2, p0, Lcyanogenmod/weather/RequestInfo;->mIsQueryOnly:Z

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 303
    iget-object v1, p0, Lcyanogenmod/weather/RequestInfo;->mListener:Lcyanogenmod/weather/IRequestInfoListener;

    invoke-interface {v1}, Lcyanogenmod/weather/IRequestInfoListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 306
    invoke-virtual {v0}, Lcyanogenmod/os/Concierge$ParcelInfo;->complete()V

    .line 282
    return-void

    .line 291
    :pswitch_0
    iget-object v2, p0, Lcyanogenmod/weather/RequestInfo;->mLocation:Landroid/location/Location;

    invoke-virtual {v2, p1, v1}, Landroid/location/Location;->writeToParcel(Landroid/os/Parcel;I)V

    .line 292
    iget v2, p0, Lcyanogenmod/weather/RequestInfo;->mTempUnit:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 295
    :pswitch_1
    iget-object v2, p0, Lcyanogenmod/weather/RequestInfo;->mWeatherLocation:Lcyanogenmod/weather/WeatherLocation;

    invoke-virtual {v2, p1, v1}, Lcyanogenmod/weather/WeatherLocation;->writeToParcel(Landroid/os/Parcel;I)V

    .line 296
    iget v2, p0, Lcyanogenmod/weather/RequestInfo;->mTempUnit:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 299
    :pswitch_2
    iget-object v2, p0, Lcyanogenmod/weather/RequestInfo;->mCityName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 289
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
