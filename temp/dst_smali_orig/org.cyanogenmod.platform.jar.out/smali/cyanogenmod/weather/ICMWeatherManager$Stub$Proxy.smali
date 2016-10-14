.class Lcyanogenmod/weather/ICMWeatherManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "ICMWeatherManager.java"

# interfaces
.implements Lcyanogenmod/weather/ICMWeatherManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/weather/ICMWeatherManager$Stub;
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
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lcyanogenmod/weather/ICMWeatherManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 102
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcyanogenmod/weather/ICMWeatherManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getActiveWeatherServiceProviderLabel()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 176
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 177
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 180
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "cyanogenmod.weather.ICMWeatherManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 181
    iget-object v3, p0, Lcyanogenmod/weather/ICMWeatherManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 182
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 183
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 186
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 187
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 189
    return-object v2

    .line 185
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 186
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 187
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 185
    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    const-string/jumbo v0, "cyanogenmod.weather.ICMWeatherManager"

    return-object v0
.end method

.method public lookupCity(Lcyanogenmod/weather/RequestInfo;)V
    .locals 5
    .param p1, "info"    # Lcyanogenmod/weather/RequestInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 134
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 136
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "cyanogenmod.weather.ICMWeatherManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 137
    if-eqz p1, :cond_0

    .line 138
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcyanogenmod/weather/RequestInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 144
    :goto_0
    iget-object v1, p0, Lcyanogenmod/weather/ICMWeatherManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 132
    return-void

    .line 142
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 146
    :catchall_0
    move-exception v1

    .line 147
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 146
    throw v1
.end method

.method public registerWeatherServiceProviderChangeListener(Lcyanogenmod/weather/IWeatherServiceProviderChangeListener;)V
    .locals 5
    .param p1, "listener"    # Lcyanogenmod/weather/IWeatherServiceProviderChangeListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 152
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 154
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "cyanogenmod.weather.ICMWeatherManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 155
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcyanogenmod/weather/IWeatherServiceProviderChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 156
    iget-object v1, p0, Lcyanogenmod/weather/ICMWeatherManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 150
    return-void

    .line 158
    :catchall_0
    move-exception v1

    .line 159
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 158
    throw v1
.end method

.method public unregisterWeatherServiceProviderChangeListener(Lcyanogenmod/weather/IWeatherServiceProviderChangeListener;)V
    .locals 5
    .param p1, "listener"    # Lcyanogenmod/weather/IWeatherServiceProviderChangeListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 164
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 166
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "cyanogenmod.weather.ICMWeatherManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 167
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcyanogenmod/weather/IWeatherServiceProviderChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 168
    iget-object v1, p0, Lcyanogenmod/weather/ICMWeatherManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 162
    return-void

    .line 170
    :catchall_0
    move-exception v1

    .line 171
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 170
    throw v1
.end method

.method public updateWeather(Lcyanogenmod/weather/RequestInfo;)V
    .locals 5
    .param p1, "info"    # Lcyanogenmod/weather/RequestInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 116
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 118
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "cyanogenmod.weather.ICMWeatherManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 119
    if-eqz p1, :cond_0

    .line 120
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcyanogenmod/weather/RequestInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 126
    :goto_0
    iget-object v1, p0, Lcyanogenmod/weather/ICMWeatherManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 114
    return-void

    .line 124
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 128
    :catchall_0
    move-exception v1

    .line 129
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 128
    throw v1
.end method
