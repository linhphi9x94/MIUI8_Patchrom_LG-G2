.class public final Lcyanogenmod/weather/WeatherLocation;
.super Ljava/lang/Object;
.source "WeatherLocation.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/weather/WeatherLocation$Builder;,
        Lcyanogenmod/weather/WeatherLocation$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcyanogenmod/weather/WeatherLocation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCity:Ljava/lang/String;

.field private mCityId:Ljava/lang/String;

.field private mCountry:Ljava/lang/String;

.field private mCountryId:Ljava/lang/String;

.field private mKey:I

.field private mPostal:Ljava/lang/String;


# direct methods
.method static synthetic -set0(Lcyanogenmod/weather/WeatherLocation;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcyanogenmod/weather/WeatherLocation;->mCity:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set1(Lcyanogenmod/weather/WeatherLocation;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcyanogenmod/weather/WeatherLocation;->mCityId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set2(Lcyanogenmod/weather/WeatherLocation;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcyanogenmod/weather/WeatherLocation;->mCountry:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set3(Lcyanogenmod/weather/WeatherLocation;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcyanogenmod/weather/WeatherLocation;->mCountryId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set4(Lcyanogenmod/weather/WeatherLocation;I)I
    .locals 0

    iput p1, p0, Lcyanogenmod/weather/WeatherLocation;->mKey:I

    return p1
.end method

.method static synthetic -set5(Lcyanogenmod/weather/WeatherLocation;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcyanogenmod/weather/WeatherLocation;->mPostal:Ljava/lang/String;

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 115
    new-instance v0, Lcyanogenmod/weather/WeatherLocation$1;

    invoke-direct {v0}, Lcyanogenmod/weather/WeatherLocation$1;-><init>()V

    sput-object v0, Lcyanogenmod/weather/WeatherLocation;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 32
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
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    invoke-static {p1}, Lcyanogenmod/os/Concierge;->receiveParcel(Landroid/os/Parcel;)Lcyanogenmod/os/Concierge$ParcelInfo;

    move-result-object v0

    .line 100
    .local v0, "parcelInfo":Lcyanogenmod/os/Concierge$ParcelInfo;
    invoke-virtual {v0}, Lcyanogenmod/os/Concierge$ParcelInfo;->getParcelVersion()I

    move-result v1

    .line 102
    .local v1, "parcelableVersion":I
    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcyanogenmod/weather/WeatherLocation;->mKey:I

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcyanogenmod/weather/WeatherLocation;->mCityId:Ljava/lang/String;

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcyanogenmod/weather/WeatherLocation;->mCity:Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcyanogenmod/weather/WeatherLocation;->mPostal:Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcyanogenmod/weather/WeatherLocation;->mCountryId:Ljava/lang/String;

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcyanogenmod/weather/WeatherLocation;->mCountry:Ljava/lang/String;

    .line 112
    :cond_0
    invoke-virtual {v0}, Lcyanogenmod/os/Concierge$ParcelInfo;->complete()V

    .line 97
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcyanogenmod/weather/WeatherLocation;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lcyanogenmod/weather/WeatherLocation;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Lcyanogenmod/weather/WeatherLocation;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcyanogenmod/weather/WeatherLocation;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 167
    instance-of v2, p1, Lcyanogenmod/weather/WeatherLocation;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 168
    check-cast v0, Lcyanogenmod/weather/WeatherLocation;

    .line 169
    .local v0, "info":Lcyanogenmod/weather/WeatherLocation;
    invoke-virtual {v0}, Lcyanogenmod/weather/WeatherLocation;->hashCode()I

    move-result v2

    iget v3, p0, Lcyanogenmod/weather/WeatherLocation;->mKey:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 171
    .end local v0    # "info":Lcyanogenmod/weather/WeatherLocation;
    :cond_1
    return v1
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcyanogenmod/weather/WeatherLocation;->mCity:Ljava/lang/String;

    return-object v0
.end method

.method public getCityId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcyanogenmod/weather/WeatherLocation;->mCityId:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcyanogenmod/weather/WeatherLocation;->mCountry:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcyanogenmod/weather/WeatherLocation;->mCountryId:Ljava/lang/String;

    return-object v0
.end method

.method public getPostalCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcyanogenmod/weather/WeatherLocation;->mPostal:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lcyanogenmod/weather/WeatherLocation;->mKey:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    const-string/jumbo v1, "{ City ID: "

    .line 151
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 152
    iget-object v1, p0, Lcyanogenmod/weather/WeatherLocation;->mCityId:Ljava/lang/String;

    .line 151
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 153
    const-string/jumbo v1, " City: "

    .line 151
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 153
    iget-object v1, p0, Lcyanogenmod/weather/WeatherLocation;->mCity:Ljava/lang/String;

    .line 151
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 154
    const-string/jumbo v1, " Postal Code: "

    .line 151
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 154
    iget-object v1, p0, Lcyanogenmod/weather/WeatherLocation;->mPostal:Ljava/lang/String;

    .line 151
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 155
    const-string/jumbo v1, " Country Id: "

    .line 151
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 155
    iget-object v1, p0, Lcyanogenmod/weather/WeatherLocation;->mCountryId:Ljava/lang/String;

    .line 151
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 156
    const-string/jumbo v1, " Country: "

    .line 151
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 156
    iget-object v1, p0, Lcyanogenmod/weather/WeatherLocation;->mCountry:Ljava/lang/String;

    .line 151
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 156
    const-string/jumbo v1, "}"

    .line 151
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
    .line 135
    invoke-static {p1}, Lcyanogenmod/os/Concierge;->prepareParcel(Landroid/os/Parcel;)Lcyanogenmod/os/Concierge$ParcelInfo;

    move-result-object v0

    .line 138
    .local v0, "parcelInfo":Lcyanogenmod/os/Concierge$ParcelInfo;
    iget v1, p0, Lcyanogenmod/weather/WeatherLocation;->mKey:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    iget-object v1, p0, Lcyanogenmod/weather/WeatherLocation;->mCityId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    iget-object v1, p0, Lcyanogenmod/weather/WeatherLocation;->mCity:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 141
    iget-object v1, p0, Lcyanogenmod/weather/WeatherLocation;->mPostal:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 142
    iget-object v1, p0, Lcyanogenmod/weather/WeatherLocation;->mCountryId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    iget-object v1, p0, Lcyanogenmod/weather/WeatherLocation;->mCountry:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v0}, Lcyanogenmod/os/Concierge$ParcelInfo;->complete()V

    .line 133
    return-void
.end method
