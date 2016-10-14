.class Lcyanogenmod/weather/IRequestInfoListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IRequestInfoListener.java"

# interfaces
.implements Lcyanogenmod/weather/IRequestInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/weather/IRequestInfoListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lcyanogenmod/weather/IRequestInfoListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 89
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcyanogenmod/weather/IRequestInfoListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    const-string/jumbo v0, "cyanogenmod.weather.IRequestInfoListener"

    return-object v0
.end method

.method public onLookupCityRequestCompleted(Lcyanogenmod/weather/RequestInfo;Ljava/util/List;)V
    .locals 5
    .param p1, "requestInfo"    # Lcyanogenmod/weather/RequestInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcyanogenmod/weather/RequestInfo;",
            "Ljava/util/List",
            "<",
            "Lcyanogenmod/weather/WeatherLocation;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 129
    .local p2, "weatherLocation":Ljava/util/List;, "Ljava/util/List<Lcyanogenmod/weather/WeatherLocation;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 131
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "cyanogenmod.weather.IRequestInfoListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 132
    if-eqz p1, :cond_0

    .line 133
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcyanogenmod/weather/RequestInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 139
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 140
    iget-object v1, p0, Lcyanogenmod/weather/IRequestInfoListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 127
    return-void

    .line 137
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 142
    :catchall_0
    move-exception v1

    .line 143
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 142
    throw v1
.end method

.method public onWeatherRequestCompleted(Lcyanogenmod/weather/RequestInfo;ILcyanogenmod/weather/WeatherInfo;)V
    .locals 5
    .param p1, "requestInfo"    # Lcyanogenmod/weather/RequestInfo;
    .param p2, "state"    # I
    .param p3, "weatherInfo"    # Lcyanogenmod/weather/WeatherInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 103
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 105
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "cyanogenmod.weather.IRequestInfoListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 106
    if-eqz p1, :cond_0

    .line 107
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcyanogenmod/weather/RequestInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 113
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    if-eqz p3, :cond_1

    .line 115
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Lcyanogenmod/weather/WeatherInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 121
    :goto_1
    iget-object v1, p0, Lcyanogenmod/weather/IRequestInfoListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 101
    return-void

    .line 111
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 123
    :catchall_0
    move-exception v1

    .line 124
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 123
    throw v1

    .line 119
    :cond_1
    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
