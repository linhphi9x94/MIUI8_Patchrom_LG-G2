.class public final Lcyanogenmod/weatherservice/ServiceRequestResult;
.super Ljava/lang/Object;
.source "ServiceRequestResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/weatherservice/ServiceRequestResult$Builder;,
        Lcyanogenmod/weatherservice/ServiceRequestResult$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcyanogenmod/weatherservice/ServiceRequestResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mKey:I

.field private mLocationLookupList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcyanogenmod/weather/WeatherLocation;",
            ">;"
        }
    .end annotation
.end field

.field private mWeatherInfo:Lcyanogenmod/weather/WeatherInfo;


# direct methods
.method static synthetic -set0(Lcyanogenmod/weatherservice/ServiceRequestResult;I)I
    .locals 0

    iput p1, p0, Lcyanogenmod/weatherservice/ServiceRequestResult;->mKey:I

    return p1
.end method

.method static synthetic -set1(Lcyanogenmod/weatherservice/ServiceRequestResult;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcyanogenmod/weatherservice/ServiceRequestResult;->mLocationLookupList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic -set2(Lcyanogenmod/weatherservice/ServiceRequestResult;Lcyanogenmod/weather/WeatherInfo;)Lcyanogenmod/weather/WeatherInfo;
    .locals 0

    iput-object p1, p0, Lcyanogenmod/weatherservice/ServiceRequestResult;->mWeatherInfo:Lcyanogenmod/weather/WeatherInfo;

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    new-instance v0, Lcyanogenmod/weatherservice/ServiceRequestResult$1;

    invoke-direct {v0}, Lcyanogenmod/weatherservice/ServiceRequestResult$1;-><init>()V

    .line 68
    sput-object v0, Lcyanogenmod/weatherservice/ServiceRequestResult;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 34
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 7
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v6, 0x1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {p1}, Lcyanogenmod/os/Concierge;->receiveParcel(Landroid/os/Parcel;)Lcyanogenmod/os/Concierge$ParcelInfo;

    move-result-object v3

    .line 45
    .local v3, "parcelInfo":Lcyanogenmod/os/Concierge$ParcelInfo;
    invoke-virtual {v3}, Lcyanogenmod/os/Concierge$ParcelInfo;->getParcelVersion()I

    move-result v4

    .line 47
    .local v4, "parcelableVersion":I
    const/4 v5, 0x5

    if-lt v4, v5, :cond_1

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Lcyanogenmod/weatherservice/ServiceRequestResult;->mKey:I

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 50
    .local v1, "hasWeatherInfo":I
    if-ne v1, v6, :cond_0

    .line 51
    sget-object v5, Lcyanogenmod/weather/WeatherInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcyanogenmod/weather/WeatherInfo;

    iput-object v5, p0, Lcyanogenmod/weatherservice/ServiceRequestResult;->mWeatherInfo:Lcyanogenmod/weather/WeatherInfo;

    .line 53
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 54
    .local v0, "hasLocationLookupList":I
    if-ne v0, v6, :cond_1

    .line 55
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcyanogenmod/weatherservice/ServiceRequestResult;->mLocationLookupList:Ljava/util/ArrayList;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 57
    .local v2, "listSize":I
    :goto_0
    if-lez v2, :cond_1

    .line 58
    iget-object v6, p0, Lcyanogenmod/weatherservice/ServiceRequestResult;->mLocationLookupList:Ljava/util/ArrayList;

    sget-object v5, Lcyanogenmod/weather/WeatherLocation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcyanogenmod/weather/WeatherLocation;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 65
    .end local v0    # "hasLocationLookupList":I
    .end local v1    # "hasWeatherInfo":I
    .end local v2    # "listSize":I
    :cond_1
    invoke-virtual {v3}, Lcyanogenmod/os/Concierge$ParcelInfo;->complete()V

    .line 42
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcyanogenmod/weatherservice/ServiceRequestResult;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lcyanogenmod/weatherservice/ServiceRequestResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Lcyanogenmod/weatherservice/ServiceRequestResult;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcyanogenmod/weatherservice/ServiceRequestResult;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 198
    instance-of v2, p1, Lcyanogenmod/weatherservice/ServiceRequestResult;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 199
    check-cast v0, Lcyanogenmod/weatherservice/ServiceRequestResult;

    .line 200
    .local v0, "request":Lcyanogenmod/weatherservice/ServiceRequestResult;
    invoke-virtual {v0}, Lcyanogenmod/weatherservice/ServiceRequestResult;->hashCode()I

    move-result v2

    iget v3, p0, Lcyanogenmod/weatherservice/ServiceRequestResult;->mKey:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 202
    .end local v0    # "request":Lcyanogenmod/weatherservice/ServiceRequestResult;
    :cond_1
    return v1
.end method

.method public getLocationLookupList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcyanogenmod/weather/WeatherLocation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 184
    iget-object v0, p0, Lcyanogenmod/weatherservice/ServiceRequestResult;->mLocationLookupList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getWeatherInfo()Lcyanogenmod/weather/WeatherInfo;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcyanogenmod/weatherservice/ServiceRequestResult;->mWeatherInfo:Lcyanogenmod/weather/WeatherInfo;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lcyanogenmod/weatherservice/ServiceRequestResult;->mKey:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 89
    invoke-static {p1}, Lcyanogenmod/os/Concierge;->prepareParcel(Landroid/os/Parcel;)Lcyanogenmod/os/Concierge$ParcelInfo;

    move-result-object v2

    .line 92
    .local v2, "parcelInfo":Lcyanogenmod/os/Concierge$ParcelInfo;
    iget v3, p0, Lcyanogenmod/weatherservice/ServiceRequestResult;->mKey:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    iget-object v3, p0, Lcyanogenmod/weatherservice/ServiceRequestResult;->mWeatherInfo:Lcyanogenmod/weather/WeatherInfo;

    if-eqz v3, :cond_0

    .line 94
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget-object v3, p0, Lcyanogenmod/weatherservice/ServiceRequestResult;->mWeatherInfo:Lcyanogenmod/weather/WeatherInfo;

    invoke-virtual {v3, p1, v4}, Lcyanogenmod/weather/WeatherInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 99
    :goto_0
    iget-object v3, p0, Lcyanogenmod/weatherservice/ServiceRequestResult;->mLocationLookupList:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 100
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    iget-object v3, p0, Lcyanogenmod/weatherservice/ServiceRequestResult;->mLocationLookupList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    iget-object v3, p0, Lcyanogenmod/weatherservice/ServiceRequestResult;->mLocationLookupList:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "lookup$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyanogenmod/weather/WeatherLocation;

    .line 103
    .local v0, "lookup":Lcyanogenmod/weather/WeatherLocation;
    invoke-virtual {v0, p1, v4}, Lcyanogenmod/weather/WeatherLocation;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 97
    .end local v0    # "lookup":Lcyanogenmod/weather/WeatherLocation;
    .end local v1    # "lookup$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 106
    :cond_1
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    :cond_2
    invoke-virtual {v2}, Lcyanogenmod/os/Concierge$ParcelInfo;->complete()V

    .line 87
    return-void
.end method
