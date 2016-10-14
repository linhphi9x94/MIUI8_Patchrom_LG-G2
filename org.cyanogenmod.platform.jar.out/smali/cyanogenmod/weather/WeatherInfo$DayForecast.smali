.class public Lcyanogenmod/weather/WeatherInfo$DayForecast;
.super Ljava/lang/Object;
.source "WeatherInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/weather/WeatherInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DayForecast"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/weather/WeatherInfo$DayForecast$Builder;,
        Lcyanogenmod/weather/WeatherInfo$DayForecast$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcyanogenmod/weather/WeatherInfo$DayForecast;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mConditionCode:I

.field mHigh:F

.field mKey:I

.field mLow:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 432
    new-instance v0, Lcyanogenmod/weather/WeatherInfo$DayForecast$1;

    invoke-direct {v0}, Lcyanogenmod/weather/WeatherInfo$DayForecast$1;-><init>()V

    .line 431
    sput-object v0, Lcyanogenmod/weather/WeatherInfo$DayForecast;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 343
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 446
    invoke-static {p1}, Lcyanogenmod/os/Concierge;->receiveParcel(Landroid/os/Parcel;)Lcyanogenmod/os/Concierge$ParcelInfo;

    move-result-object v0

    .line 447
    .local v0, "parcelInfo":Lcyanogenmod/os/Concierge$ParcelInfo;
    invoke-virtual {v0}, Lcyanogenmod/os/Concierge$ParcelInfo;->getParcelVersion()I

    move-result v1

    .line 449
    .local v1, "parcelableVersion":I
    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    .line 450
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcyanogenmod/weather/WeatherInfo$DayForecast;->mKey:I

    .line 451
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Lcyanogenmod/weather/WeatherInfo$DayForecast;->mLow:F

    .line 452
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Lcyanogenmod/weather/WeatherInfo$DayForecast;->mHigh:F

    .line 453
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcyanogenmod/weather/WeatherInfo$DayForecast;->mConditionCode:I

    .line 457
    :cond_0
    invoke-virtual {v0}, Lcyanogenmod/os/Concierge$ParcelInfo;->complete()V

    .line 444
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcyanogenmod/weather/WeatherInfo$DayForecast;)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lcyanogenmod/weather/WeatherInfo$DayForecast;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Lcyanogenmod/weather/WeatherInfo$DayForecast;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcyanogenmod/weather/WeatherInfo$DayForecast;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 413
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 480
    instance-of v2, p1, Lcyanogenmod/weather/WeatherInfo$DayForecast;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 481
    check-cast v0, Lcyanogenmod/weather/WeatherInfo$DayForecast;

    .line 482
    .local v0, "forecast":Lcyanogenmod/weather/WeatherInfo$DayForecast;
    invoke-virtual {v0}, Lcyanogenmod/weather/WeatherInfo$DayForecast;->hashCode()I

    move-result v2

    iget v3, p0, Lcyanogenmod/weather/WeatherInfo$DayForecast;->mKey:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 484
    .end local v0    # "forecast":Lcyanogenmod/weather/WeatherInfo$DayForecast;
    :cond_1
    return v1
.end method

.method public getConditionCode()I
    .locals 1

    .prologue
    .line 408
    iget v0, p0, Lcyanogenmod/weather/WeatherInfo$DayForecast;->mConditionCode:I

    return v0
.end method

.method public getHigh()F
    .locals 1

    .prologue
    .line 401
    iget v0, p0, Lcyanogenmod/weather/WeatherInfo$DayForecast;->mHigh:F

    return v0
.end method

.method public getLow()F
    .locals 1

    .prologue
    .line 394
    iget v0, p0, Lcyanogenmod/weather/WeatherInfo$DayForecast;->mLow:F

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 475
    iget v0, p0, Lcyanogenmod/weather/WeatherInfo$DayForecast;->mKey:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 463
    const-string/jumbo v1, "{Low temp: "

    .line 462
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 463
    iget v1, p0, Lcyanogenmod/weather/WeatherInfo$DayForecast;->mLow:F

    .line 462
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 464
    const-string/jumbo v1, " High temp: "

    .line 462
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 464
    iget v1, p0, Lcyanogenmod/weather/WeatherInfo$DayForecast;->mHigh:F

    .line 462
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 465
    const-string/jumbo v1, " Condition code: "

    .line 462
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 465
    iget v1, p0, Lcyanogenmod/weather/WeatherInfo$DayForecast;->mConditionCode:I

    .line 462
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 466
    const-string/jumbo v1, "}"

    .line 462
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 419
    invoke-static {p1}, Lcyanogenmod/os/Concierge;->prepareParcel(Landroid/os/Parcel;)Lcyanogenmod/os/Concierge$ParcelInfo;

    move-result-object v0

    .line 422
    .local v0, "parcelInfo":Lcyanogenmod/os/Concierge$ParcelInfo;
    iget v1, p0, Lcyanogenmod/weather/WeatherInfo$DayForecast;->mKey:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 423
    iget v1, p0, Lcyanogenmod/weather/WeatherInfo$DayForecast;->mLow:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 424
    iget v1, p0, Lcyanogenmod/weather/WeatherInfo$DayForecast;->mHigh:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 425
    iget v1, p0, Lcyanogenmod/weather/WeatherInfo$DayForecast;->mConditionCode:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 428
    invoke-virtual {v0}, Lcyanogenmod/os/Concierge$ParcelInfo;->complete()V

    .line 417
    return-void
.end method
