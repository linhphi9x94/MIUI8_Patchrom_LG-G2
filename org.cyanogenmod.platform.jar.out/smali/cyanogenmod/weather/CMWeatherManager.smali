.class public Lcyanogenmod/weather/CMWeatherManager;
.super Ljava/lang/Object;
.source "CMWeatherManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/weather/CMWeatherManager$WeatherUpdateRequestListener;,
        Lcyanogenmod/weather/CMWeatherManager$LookupCityRequestListener;,
        Lcyanogenmod/weather/CMWeatherManager$WeatherServiceProviderChangeListener;,
        Lcyanogenmod/weather/CMWeatherManager$1;,
        Lcyanogenmod/weather/CMWeatherManager$2;
    }
.end annotation


# static fields
.field public static final LOOKUP_REQUEST_COMPLETED:I = 0x64

.field public static final LOOKUP_REQUEST_FAILED:I = -0x64

.field public static final LOOKUP_REQUEST_NO_MATCH_FOUND:I = -0x65

.field private static final TAG:Ljava/lang/String;

.field public static final WEATHER_REQUEST_ALREADY_IN_PROGRESS:I = -0x3

.field public static final WEATHER_REQUEST_COMPLETED:I = 0x1

.field public static final WEATHER_REQUEST_FAILED:I = -0x2

.field public static final WEATHER_REQUEST_SUBMITTED_TOO_SOON:I = -0x1

.field private static sInstance:Lcyanogenmod/weather/CMWeatherManager;

.field private static sWeatherManagerService:Lcyanogenmod/weather/ICMWeatherManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLookupNameRequestListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcyanogenmod/weather/RequestInfo;",
            "Lcyanogenmod/weather/CMWeatherManager$LookupCityRequestListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mProviderChangeListener:Lcyanogenmod/weather/IWeatherServiceProviderChangeListener;

.field private mProviderChangedListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcyanogenmod/weather/CMWeatherManager$WeatherServiceProviderChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mRequestInfoListener:Lcyanogenmod/weather/IRequestInfoListener;

.field private mWeatherUpdateRequestListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcyanogenmod/weather/RequestInfo;",
            "Lcyanogenmod/weather/CMWeatherManager$WeatherUpdateRequestListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcyanogenmod/weather/CMWeatherManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcyanogenmod/weather/CMWeatherManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Lcyanogenmod/weather/CMWeatherManager;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcyanogenmod/weather/CMWeatherManager;->mLookupNameRequestListeners:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get2(Lcyanogenmod/weather/CMWeatherManager;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcyanogenmod/weather/CMWeatherManager;->mProviderChangedListeners:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic -get3(Lcyanogenmod/weather/CMWeatherManager;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcyanogenmod/weather/CMWeatherManager;->mWeatherUpdateRequestListeners:Ljava/util/Map;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lcyanogenmod/weather/CMWeatherManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcyanogenmod/weather/CMWeatherManager;->TAG:Ljava/lang/String;

    .line 40
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 45
    iput-object v1, p0, Lcyanogenmod/weather/CMWeatherManager;->mWeatherUpdateRequestListeners:Ljava/util/Map;

    .line 48
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 47
    iput-object v1, p0, Lcyanogenmod/weather/CMWeatherManager;->mLookupNameRequestListeners:Ljava/util/Map;

    .line 50
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcyanogenmod/weather/CMWeatherManager;->mProviderChangedListeners:Ljava/util/Set;

    .line 260
    new-instance v1, Lcyanogenmod/weather/CMWeatherManager$1;

    invoke-direct {v1, p0}, Lcyanogenmod/weather/CMWeatherManager$1;-><init>(Lcyanogenmod/weather/CMWeatherManager;)V

    .line 259
    iput-object v1, p0, Lcyanogenmod/weather/CMWeatherManager;->mProviderChangeListener:Lcyanogenmod/weather/IWeatherServiceProviderChangeListener;

    .line 288
    new-instance v1, Lcyanogenmod/weather/CMWeatherManager$2;

    invoke-direct {v1, p0}, Lcyanogenmod/weather/CMWeatherManager$2;-><init>(Lcyanogenmod/weather/CMWeatherManager;)V

    iput-object v1, p0, Lcyanogenmod/weather/CMWeatherManager;->mRequestInfoListener:Lcyanogenmod/weather/IRequestInfoListener;

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 91
    .local v0, "appContext":Landroid/content/Context;
    if-eqz v0, :cond_0

    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lcyanogenmod/weather/CMWeatherManager;->mContext:Landroid/content/Context;

    .line 92
    invoke-static {}, Lcyanogenmod/weather/CMWeatherManager;->getService()Lcyanogenmod/weather/ICMWeatherManager;

    move-result-object v1

    sput-object v1, Lcyanogenmod/weather/CMWeatherManager;->sWeatherManagerService:Lcyanogenmod/weather/ICMWeatherManager;

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 95
    const-string/jumbo v2, "org.cyanogenmod.weather"

    .line 94
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 95
    sget-object v1, Lcyanogenmod/weather/CMWeatherManager;->sWeatherManagerService:Lcyanogenmod/weather/ICMWeatherManager;

    if-nez v1, :cond_1

    .line 96
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Unable to bind the CMWeatherManagerService"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move-object v1, p1

    .line 91
    goto :goto_0

    .line 98
    :cond_1
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcyanogenmod/weather/CMWeatherManager;->mHandler:Landroid/os/Handler;

    .line 89
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcyanogenmod/weather/CMWeatherManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 107
    sget-object v0, Lcyanogenmod/weather/CMWeatherManager;->sInstance:Lcyanogenmod/weather/CMWeatherManager;

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Lcyanogenmod/weather/CMWeatherManager;

    invoke-direct {v0, p0}, Lcyanogenmod/weather/CMWeatherManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcyanogenmod/weather/CMWeatherManager;->sInstance:Lcyanogenmod/weather/CMWeatherManager;

    .line 110
    :cond_0
    sget-object v0, Lcyanogenmod/weather/CMWeatherManager;->sInstance:Lcyanogenmod/weather/CMWeatherManager;

    return-object v0
.end method

.method public static getService()Lcyanogenmod/weather/ICMWeatherManager;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 115
    sget-object v1, Lcyanogenmod/weather/CMWeatherManager;->sWeatherManagerService:Lcyanogenmod/weather/ICMWeatherManager;

    if-eqz v1, :cond_0

    .line 116
    sget-object v1, Lcyanogenmod/weather/CMWeatherManager;->sWeatherManagerService:Lcyanogenmod/weather/ICMWeatherManager;

    return-object v1

    .line 118
    :cond_0
    const-string/jumbo v1, "cmweather"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 119
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 120
    invoke-static {v0}, Lcyanogenmod/weather/ICMWeatherManager$Stub;->asInterface(Landroid/os/IBinder;)Lcyanogenmod/weather/ICMWeatherManager;

    move-result-object v1

    sput-object v1, Lcyanogenmod/weather/CMWeatherManager;->sWeatherManagerService:Lcyanogenmod/weather/ICMWeatherManager;

    .line 121
    sget-object v1, Lcyanogenmod/weather/CMWeatherManager;->sWeatherManagerService:Lcyanogenmod/weather/ICMWeatherManager;

    return-object v1

    .line 123
    :cond_1
    return-object v2
.end method


# virtual methods
.method public getActiveWeatherServiceProviderLabel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 253
    :try_start_0
    sget-object v1, Lcyanogenmod/weather/CMWeatherManager;->sWeatherManagerService:Lcyanogenmod/weather/ICMWeatherManager;

    invoke-interface {v1}, Lcyanogenmod/weather/ICMWeatherManager;->getActiveWeatherServiceProviderLabel()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 254
    :catch_0
    move-exception v0

    .line 256
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public lookupCity(Ljava/lang/String;Lcyanogenmod/weather/CMWeatherManager$LookupCityRequestListener;)V
    .locals 4
    .param p1, "city"    # Ljava/lang/String;
    .param p2, "listener"    # Lcyanogenmod/weather/CMWeatherManager$LookupCityRequestListener;

    .prologue
    .line 190
    sget-object v2, Lcyanogenmod/weather/CMWeatherManager;->sWeatherManagerService:Lcyanogenmod/weather/ICMWeatherManager;

    if-nez v2, :cond_0

    .line 191
    return-void

    .line 194
    :cond_0
    :try_start_0
    new-instance v2, Lcyanogenmod/weather/RequestInfo$Builder;

    .line 195
    iget-object v3, p0, Lcyanogenmod/weather/CMWeatherManager;->mRequestInfoListener:Lcyanogenmod/weather/IRequestInfoListener;

    .line 194
    invoke-direct {v2, v3}, Lcyanogenmod/weather/RequestInfo$Builder;-><init>(Lcyanogenmod/weather/IRequestInfoListener;)V

    invoke-virtual {v2, p1}, Lcyanogenmod/weather/RequestInfo$Builder;->setCityName(Ljava/lang/String;)Lcyanogenmod/weather/RequestInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcyanogenmod/weather/RequestInfo$Builder;->build()Lcyanogenmod/weather/RequestInfo;

    move-result-object v1

    .line 198
    .local v1, "info":Lcyanogenmod/weather/RequestInfo;
    if-eqz p2, :cond_1

    iget-object v2, p0, Lcyanogenmod/weather/CMWeatherManager;->mLookupNameRequestListeners:Ljava/util/Map;

    invoke-interface {v2, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    :cond_1
    sget-object v2, Lcyanogenmod/weather/CMWeatherManager;->sWeatherManagerService:Lcyanogenmod/weather/ICMWeatherManager;

    invoke-interface {v2, v1}, Lcyanogenmod/weather/ICMWeatherManager;->lookupCity(Lcyanogenmod/weather/RequestInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    .end local v1    # "info":Lcyanogenmod/weather/RequestInfo;
    :goto_0
    return-void

    .line 200
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public registerWeatherServiceProviderChangeListener(Lcyanogenmod/weather/CMWeatherManager$WeatherServiceProviderChangeListener;)V
    .locals 4
    .param p1, "listener"    # Lcyanogenmod/weather/CMWeatherManager$WeatherServiceProviderChangeListener;

    .prologue
    .line 211
    iget-object v2, p0, Lcyanogenmod/weather/CMWeatherManager;->mProviderChangedListeners:Ljava/util/Set;

    monitor-enter v2

    .line 212
    :try_start_0
    iget-object v1, p0, Lcyanogenmod/weather/CMWeatherManager;->mProviderChangedListeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Listener already registered"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 215
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcyanogenmod/weather/CMWeatherManager;->mProviderChangedListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 217
    :try_start_2
    sget-object v1, Lcyanogenmod/weather/CMWeatherManager;->sWeatherManagerService:Lcyanogenmod/weather/ICMWeatherManager;

    .line 218
    iget-object v3, p0, Lcyanogenmod/weather/CMWeatherManager;->mProviderChangeListener:Lcyanogenmod/weather/IWeatherServiceProviderChangeListener;

    .line 217
    invoke-interface {v1, v3}, Lcyanogenmod/weather/ICMWeatherManager;->registerWeatherServiceProviderChangeListener(Lcyanogenmod/weather/IWeatherServiceProviderChangeListener;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 222
    :cond_1
    :goto_0
    :try_start_3
    iget-object v1, p0, Lcyanogenmod/weather/CMWeatherManager;->mProviderChangedListeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v2

    .line 210
    return-void

    .line 219
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public requestWeatherUpdate(Landroid/location/Location;Lcyanogenmod/weather/CMWeatherManager$WeatherUpdateRequestListener;)V
    .locals 4
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "listener"    # Lcyanogenmod/weather/CMWeatherManager$WeatherUpdateRequestListener;

    .prologue
    .line 137
    sget-object v2, Lcyanogenmod/weather/CMWeatherManager;->sWeatherManagerService:Lcyanogenmod/weather/ICMWeatherManager;

    if-nez v2, :cond_0

    .line 138
    return-void

    .line 142
    :cond_0
    :try_start_0
    new-instance v2, Lcyanogenmod/weather/RequestInfo$Builder;

    .line 143
    iget-object v3, p0, Lcyanogenmod/weather/CMWeatherManager;->mRequestInfoListener:Lcyanogenmod/weather/IRequestInfoListener;

    .line 142
    invoke-direct {v2, v3}, Lcyanogenmod/weather/RequestInfo$Builder;-><init>(Lcyanogenmod/weather/IRequestInfoListener;)V

    invoke-virtual {v2, p1}, Lcyanogenmod/weather/RequestInfo$Builder;->setLocation(Landroid/location/Location;)Lcyanogenmod/weather/RequestInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcyanogenmod/weather/RequestInfo$Builder;->build()Lcyanogenmod/weather/RequestInfo;

    move-result-object v1

    .line 146
    .local v1, "info":Lcyanogenmod/weather/RequestInfo;
    if-eqz p2, :cond_1

    iget-object v2, p0, Lcyanogenmod/weather/CMWeatherManager;->mWeatherUpdateRequestListeners:Ljava/util/Map;

    invoke-interface {v2, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    :cond_1
    sget-object v2, Lcyanogenmod/weather/CMWeatherManager;->sWeatherManagerService:Lcyanogenmod/weather/ICMWeatherManager;

    invoke-interface {v2, v1}, Lcyanogenmod/weather/ICMWeatherManager;->updateWeather(Lcyanogenmod/weather/RequestInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    .end local v1    # "info":Lcyanogenmod/weather/RequestInfo;
    :goto_0
    return-void

    .line 148
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public requestWeatherUpdate(Lcyanogenmod/weather/WeatherLocation;Lcyanogenmod/weather/CMWeatherManager$WeatherUpdateRequestListener;)V
    .locals 4
    .param p1, "weatherLocation"    # Lcyanogenmod/weather/WeatherLocation;
    .param p2, "listener"    # Lcyanogenmod/weather/CMWeatherManager$WeatherUpdateRequestListener;

    .prologue
    .line 165
    sget-object v2, Lcyanogenmod/weather/CMWeatherManager;->sWeatherManagerService:Lcyanogenmod/weather/ICMWeatherManager;

    if-nez v2, :cond_0

    .line 166
    return-void

    .line 170
    :cond_0
    :try_start_0
    new-instance v2, Lcyanogenmod/weather/RequestInfo$Builder;

    .line 171
    iget-object v3, p0, Lcyanogenmod/weather/CMWeatherManager;->mRequestInfoListener:Lcyanogenmod/weather/IRequestInfoListener;

    .line 170
    invoke-direct {v2, v3}, Lcyanogenmod/weather/RequestInfo$Builder;-><init>(Lcyanogenmod/weather/IRequestInfoListener;)V

    invoke-virtual {v2, p1}, Lcyanogenmod/weather/RequestInfo$Builder;->setWeatherLocation(Lcyanogenmod/weather/WeatherLocation;)Lcyanogenmod/weather/RequestInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcyanogenmod/weather/RequestInfo$Builder;->build()Lcyanogenmod/weather/RequestInfo;

    move-result-object v1

    .line 174
    .local v1, "info":Lcyanogenmod/weather/RequestInfo;
    if-eqz p2, :cond_1

    iget-object v2, p0, Lcyanogenmod/weather/CMWeatherManager;->mWeatherUpdateRequestListeners:Ljava/util/Map;

    invoke-interface {v2, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    :cond_1
    sget-object v2, Lcyanogenmod/weather/CMWeatherManager;->sWeatherManagerService:Lcyanogenmod/weather/ICMWeatherManager;

    invoke-interface {v2, v1}, Lcyanogenmod/weather/ICMWeatherManager;->updateWeather(Lcyanogenmod/weather/RequestInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    .end local v1    # "info":Lcyanogenmod/weather/RequestInfo;
    :goto_0
    return-void

    .line 176
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public unregisterWeatherServiceProviderChangeListener(Lcyanogenmod/weather/CMWeatherManager$WeatherServiceProviderChangeListener;)V
    .locals 4
    .param p1, "listener"    # Lcyanogenmod/weather/CMWeatherManager$WeatherServiceProviderChangeListener;

    .prologue
    .line 232
    iget-object v2, p0, Lcyanogenmod/weather/CMWeatherManager;->mProviderChangedListeners:Ljava/util/Set;

    monitor-enter v2

    .line 233
    :try_start_0
    iget-object v1, p0, Lcyanogenmod/weather/CMWeatherManager;->mProviderChangedListeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 234
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Listener was never registered"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 236
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcyanogenmod/weather/CMWeatherManager;->mProviderChangedListeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 237
    iget-object v1, p0, Lcyanogenmod/weather/CMWeatherManager;->mProviderChangedListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 239
    :try_start_2
    sget-object v1, Lcyanogenmod/weather/CMWeatherManager;->sWeatherManagerService:Lcyanogenmod/weather/ICMWeatherManager;

    .line 240
    iget-object v3, p0, Lcyanogenmod/weather/CMWeatherManager;->mProviderChangeListener:Lcyanogenmod/weather/IWeatherServiceProviderChangeListener;

    .line 239
    invoke-interface {v1, v3}, Lcyanogenmod/weather/ICMWeatherManager;->unregisterWeatherServiceProviderChangeListener(Lcyanogenmod/weather/IWeatherServiceProviderChangeListener;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v2

    .line 231
    return-void

    .line 241
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
