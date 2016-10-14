.class public Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;
.super Lcom/android/server/SystemService;
.source "CMWeatherManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cyanogenmod/platform/internal/CMWeatherManagerService$1;,
        Lorg/cyanogenmod/platform/internal/CMWeatherManagerService$2;,
        Lorg/cyanogenmod/platform/internal/CMWeatherManagerService$3;
    }
.end annotation


# static fields
.field private static final REQUEST_THRESHOLD_MILLIS:J = 0x927c0L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsProcessingRequest:Z

.field private mIsWeatherProviderServiceBound:Z

.field private mLastWeatherUpdateRequestTimestamp:J

.field private mMutex:Ljava/lang/Object;

.field private final mProviderChangeListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcyanogenmod/weather/IWeatherServiceProviderChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mReconnectedDuePkgModified:Z

.field private final mService:Landroid/os/IBinder;

.field private final mServiceClient:Lcyanogenmod/weatherservice/IWeatherProviderServiceClient;

.field private mWeatherProviderService:Lcyanogenmod/weatherservice/IWeatherProviderService;

.field private mWeatherServiceProviderConnection:Landroid/content/ServiceConnection;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->mIsWeatherProviderServiceBound:Z

    return v0
.end method

.method static synthetic -get3(Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->mMutex:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get4(Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;)Landroid/os/RemoteCallbackList;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->mProviderChangeListeners:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic -get5(Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->mReconnectedDuePkgModified:Z

    return v0
.end method

.method static synthetic -get6(Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;)Lcyanogenmod/weatherservice/IWeatherProviderServiceClient;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->mServiceClient:Lcyanogenmod/weatherservice/IWeatherProviderServiceClient;

    return-object v0
.end method

.method static synthetic -get7(Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;)Lcyanogenmod/weatherservice/IWeatherProviderService;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->mWeatherProviderService:Lcyanogenmod/weatherservice/IWeatherProviderService;

    return-object v0
.end method

.method static synthetic -get8(Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;)Landroid/content/ServiceConnection;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->mWeatherServiceProviderConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic -set0(Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->mIsProcessingRequest:Z

    return p1
.end method

.method static synthetic -set1(Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->mIsWeatherProviderServiceBound:Z

    return p1
.end method

.method static synthetic -set2(Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->mReconnectedDuePkgModified:Z

    return p1
.end method

.method static synthetic -set3(Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;Lcyanogenmod/weatherservice/IWeatherProviderService;)Lcyanogenmod/weatherservice/IWeatherProviderService;
    .locals 0

    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->mWeatherProviderService:Lcyanogenmod/weatherservice/IWeatherProviderService;

    return-object p1
.end method

.method static synthetic -wrap0(Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;Lcyanogenmod/weather/IRequestInfoListener;)Z
    .locals 1
    .param p1, "listener"    # Lcyanogenmod/weather/IRequestInfoListener;

    .prologue
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->isValidListener(Lcyanogenmod/weather/IRequestInfoListener;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;II)Z
    .locals 1
    .param p1, "requestType"    # I
    .param p2, "state"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->isValidRequestInfoState(II)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;Lcyanogenmod/weather/WeatherInfo;)Z
    .locals 1
    .param p1, "wi"    # Lcyanogenmod/weather/WeatherInfo;

    .prologue
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->updateWeatherInfoLocked(Lcyanogenmod/weather/WeatherInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 1
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->getComponentLabel(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap4(Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;)V
    .locals 0

    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->disconnectClient()V

    return-void
.end method

.method static synthetic -wrap5(Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;)V
    .locals 0

    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->enforcePermission()V

    return-void
.end method

.method static synthetic -wrap6(Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->notifyProviderChanged(Landroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic -wrap7(Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;Lcyanogenmod/weather/RequestInfo;)V
    .locals 0
    .param p1, "info"    # Lcyanogenmod/weather/RequestInfo;

    .prologue
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->processCityNameLookupRequest(Lcyanogenmod/weather/RequestInfo;)V

    return-void
.end method

.method static synthetic -wrap8(Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;Lcyanogenmod/weather/RequestInfo;)V
    .locals 0
    .param p1, "info"    # Lcyanogenmod/weather/RequestInfo;

    .prologue
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->processWeatherUpdateRequest(Lcyanogenmod/weather/RequestInfo;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-class v0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->TAG:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 237
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 69
    const-wide/32 v0, -0x927c0

    iput-wide v0, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->mLastWeatherUpdateRequestTimestamp:J

    .line 70
    iput-boolean v2, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->mIsProcessingRequest:Z

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->mMutex:Ljava/lang/Object;

    .line 74
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 73
    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->mProviderChangeListeners:Landroid/os/RemoteCallbackList;

    .line 75
    iput-boolean v2, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->mReconnectedDuePkgModified:Z

    .line 78
    new-instance v0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService$1;

    invoke-direct {v0, p0}, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService$1;-><init>(Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;)V

    .line 77
    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->mServiceClient:Lcyanogenmod/weatherservice/IWeatherProviderServiceClient;

    .line 179
    new-instance v0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService$2;

    invoke-direct {v0, p0}, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService$2;-><init>(Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;)V

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->mService:Landroid/os/IBinder;

    .line 337
    new-instance v0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService$3;

    invoke-direct {v0, p0}, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService$3;-><init>(Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;)V

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->mWeatherServiceProviderConnection:Landroid/content/ServiceConnection;

    .line 238
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->mContext:Landroid/content/Context;

    .line 236
    return-void
.end method

.method private bindActiveWeatherProviderService()V
    .locals 6

    .prologue
    .line 256
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 257
    const-string/jumbo v2, "weather_provider_service"

    .line 256
    invoke-static {v1, v2}, Lcyanogenmod/providers/CMSettings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, "activeProviderService":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 260
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .line 259
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 261
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->mWeatherServiceProviderConnection:Landroid/content/ServiceConnection;

    .line 262
    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 261
    const/4 v5, 0x1

    .line 259
    invoke-virtual {v1, v2, v3, v5, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 263
    sget-object v1, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to bind service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_0
    return-void
.end method

.method private canProcessWeatherUpdateRequest(Lcyanogenmod/weather/RequestInfo;J)Z
    .locals 8
    .param p1, "info"    # Lcyanogenmod/weather/RequestInfo;
    .param p2, "currentTimeMillis"    # J

    .prologue
    const/4 v6, 0x0

    .line 269
    invoke-virtual {p1}, Lcyanogenmod/weather/RequestInfo;->getRequestListener()Lcyanogenmod/weather/IRequestInfoListener;

    move-result-object v1

    .line 271
    .local v1, "listener":Lcyanogenmod/weather/IRequestInfoListener;
    iget-wide v2, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->mLastWeatherUpdateRequestTimestamp:J

    const-wide/32 v4, 0x927c0

    add-long/2addr v2, v4

    cmp-long v2, v2, p2

    if-lez v2, :cond_1

    .line 272
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcyanogenmod/weather/IRequestInfoListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/IBinder;->pingBinder()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 275
    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 274
    :try_start_0
    invoke-interface {v1, p1, v2, v3}, Lcyanogenmod/weather/IRequestInfoListener;->onWeatherRequestCompleted(Lcyanogenmod/weather/RequestInfo;ILcyanogenmod/weather/WeatherInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    :cond_0
    :goto_0
    return v6

    .line 276
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 282
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    iget-boolean v2, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->mIsProcessingRequest:Z

    if-eqz v2, :cond_3

    .line 283
    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcyanogenmod/weather/IRequestInfoListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/IBinder;->pingBinder()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 286
    const/4 v2, -0x3

    const/4 v3, 0x0

    .line 285
    :try_start_1
    invoke-interface {v1, p1, v2, v3}, Lcyanogenmod/weather/IRequestInfoListener;->onWeatherRequestCompleted(Lcyanogenmod/weather/RequestInfo;ILcyanogenmod/weather/WeatherInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 290
    :cond_2
    :goto_1
    return v6

    .line 287
    :catch_1
    move-exception v0

    .restart local v0    # "e":Landroid/os/RemoteException;
    goto :goto_1

    .line 293
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    iget-boolean v2, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->mIsWeatherProviderServiceBound:Z

    if-nez v2, :cond_5

    .line 294
    if-eqz v1, :cond_4

    invoke-interface {v1}, Lcyanogenmod/weather/IRequestInfoListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/IBinder;->pingBinder()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 297
    const/4 v2, -0x2

    const/4 v3, 0x0

    .line 296
    :try_start_2
    invoke-interface {v1, p1, v2, v3}, Lcyanogenmod/weather/IRequestInfoListener;->onWeatherRequestCompleted(Lcyanogenmod/weather/RequestInfo;ILcyanogenmod/weather/WeatherInfo;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 301
    :cond_4
    :goto_2
    return v6

    .line 298
    :catch_2
    move-exception v0

    .restart local v0    # "e":Landroid/os/RemoteException;
    goto :goto_2

    .line 303
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_5
    const/4 v2, 0x1

    return v2
.end method

.method private declared-synchronized disconnectClient()V
    .locals 3

    .prologue
    monitor-enter p0

    .line 528
    :try_start_0
    iget-boolean v1, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->mIsWeatherProviderServiceBound:Z

    if-eqz v1, :cond_1

    .line 529
    iget-boolean v1, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->mIsProcessingRequest:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 531
    :try_start_1
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->mWeatherProviderService:Lcyanogenmod/weatherservice/IWeatherProviderService;

    invoke-interface {v1}, Lcyanogenmod/weatherservice/IWeatherProviderService;->cancelOngoingRequests()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 534
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput-boolean v1, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->mIsProcessingRequest:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 537
    :cond_0
    :try_start_3
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->mWeatherProviderService:Lcyanogenmod/weatherservice/IWeatherProviderService;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcyanogenmod/weatherservice/IWeatherProviderService;->setServiceClient(Lcyanogenmod/weatherservice/IWeatherProviderServiceClient;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 541
    :goto_1
    :try_start_4
    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->mWeatherServiceProviderConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 542
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->mIsWeatherProviderServiceBound:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_1
    monitor-exit p0

    .line 527
    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 538
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1

    .line 532
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private enforcePermission()V
    .locals 3

    .prologue
    .line 175
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->mContext:Landroid/content/Context;

    .line 176
    const-string/jumbo v1, "cyanogenmod.permission.ACCESS_WEATHER_MANAGER"

    const/4 v2, 0x0

    .line 175
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method private getComponentLabel(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 5
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    const/4 v4, 0x0

    .line 226
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 227
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v3, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 229
    .local v0, "intent":Landroid/content/Intent;
    const/4 v3, 0x4

    .line 228
    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 230
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v2, :cond_0

    .line 231
    invoke-virtual {v2, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 233
    :cond_0
    return-object v4
.end method

.method private isValidListener(Lcyanogenmod/weather/IRequestInfoListener;)Z
    .locals 1
    .param p1, "listener"    # Lcyanogenmod/weather/IRequestInfoListener;

    .prologue
    .line 171
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcyanogenmod/weather/IRequestInfoListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->pingBinder()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidRequestInfoState(II)Z
    .locals 2
    .param p1, "requestType"    # I
    .param p2, "state"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 144
    packed-switch p1, :pswitch_data_0

    .line 166
    return v0

    .line 147
    :pswitch_0
    packed-switch p2, :pswitch_data_1

    .line 154
    :pswitch_1
    return v0

    .line 152
    :pswitch_2
    return v1

    .line 157
    :pswitch_3
    sparse-switch p2, :sswitch_data_0

    .line 163
    return v0

    .line 161
    :sswitch_0
    return v1

    .line 144
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 147
    :pswitch_data_1
    .packed-switch -0x3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 157
    :sswitch_data_0
    .sparse-switch
        -0x65 -> :sswitch_0
        -0x64 -> :sswitch_0
        0x64 -> :sswitch_0
    .end sparse-switch
.end method

.method private notifyProviderChanged(Landroid/content/ComponentName;)V
    .locals 6
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 363
    const/4 v4, 0x0

    .line 364
    .local v4, "providerName":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 365
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->getComponentLabel(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v4

    .line 368
    .end local v4    # "providerName":Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->mProviderChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 369
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "indx":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 371
    iget-object v5, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->mProviderChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcyanogenmod/weather/IWeatherServiceProviderChangeListener;

    .line 373
    .local v3, "listener":Lcyanogenmod/weather/IWeatherServiceProviderChangeListener;
    :try_start_0
    invoke-interface {v3, v4}, Lcyanogenmod/weather/IWeatherServiceProviderChangeListener;->onWeatherServiceProviderChanged(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 374
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_1

    .line 377
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v3    # "listener":Lcyanogenmod/weather/IWeatherServiceProviderChangeListener;
    :cond_1
    iget-object v5, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->mProviderChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 362
    return-void
.end method

.method private processCityNameLookupRequest(Lcyanogenmod/weather/RequestInfo;)V
    .locals 3
    .param p1, "info"    # Lcyanogenmod/weather/RequestInfo;

    .prologue
    .line 320
    iget-boolean v2, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->mIsWeatherProviderServiceBound:Z

    if-nez v2, :cond_1

    .line 321
    invoke-virtual {p1}, Lcyanogenmod/weather/RequestInfo;->getRequestListener()Lcyanogenmod/weather/IRequestInfoListener;

    move-result-object v1

    .line 322
    .local v1, "listener":Lcyanogenmod/weather/IRequestInfoListener;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcyanogenmod/weather/IRequestInfoListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/IBinder;->pingBinder()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 324
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v1, p1, v2}, Lcyanogenmod/weather/IRequestInfoListener;->onLookupCityRequestCompleted(Lcyanogenmod/weather/RequestInfo;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 325
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 332
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "listener":Lcyanogenmod/weather/IRequestInfoListener;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->mWeatherProviderService:Lcyanogenmod/weatherservice/IWeatherProviderService;

    invoke-interface {v2, p1}, Lcyanogenmod/weatherservice/IWeatherProviderService;->processCityNameLookupRequest(Lcyanogenmod/weather/RequestInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 319
    :goto_1
    return-void

    .line 333
    :catch_1
    move-exception v0

    .restart local v0    # "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private declared-synchronized processWeatherUpdateRequest(Lcyanogenmod/weather/RequestInfo;)V
    .locals 4
    .param p1, "info"    # Lcyanogenmod/weather/RequestInfo;

    .prologue
    monitor-enter p0

    .line 307
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 309
    .local v0, "currentTimeMillis":J
    invoke-direct {p0, p1, v0, v1}, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->canProcessWeatherUpdateRequest(Lcyanogenmod/weather/RequestInfo;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit p0

    return-void

    .line 311
    :cond_0
    :try_start_1
    iput-wide v0, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->mLastWeatherUpdateRequestTimestamp:J

    .line 312
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->mIsProcessingRequest:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 314
    :try_start_2
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->mWeatherProviderService:Lcyanogenmod/weatherservice/IWeatherProviderService;

    invoke-interface {v3, p1}, Lcyanogenmod/weatherservice/IWeatherProviderService;->processWeatherUpdateRequest(Lcyanogenmod/weather/RequestInfo;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    .line 306
    return-void

    .end local v0    # "currentTimeMillis":J
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 315
    .restart local v0    # "currentTimeMillis":J
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private registerPackageMonitor()V
    .locals 5

    .prologue
    .line 416
    new-instance v0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService$4;

    invoke-direct {v0, p0}, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService$4;-><init>(Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;)V

    .line 501
    .local v0, "monitor":Lcom/android/internal/content/PackageMonitor;
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 415
    return-void
.end method

.method private registerSettingsObserver()V
    .locals 5

    .prologue
    .line 506
    const-string/jumbo v2, "weather_provider_service"

    .line 505
    invoke-static {v2}, Lcyanogenmod/providers/CMSettings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 507
    .local v0, "enabledWeatherProviderServiceUri":Landroid/net/Uri;
    new-instance v1, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService$5;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService$5;-><init>(Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;Landroid/os/Handler;Landroid/net/Uri;)V

    .line 523
    .local v1, "observer":Landroid/database/ContentObserver;
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 524
    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 523
    invoke-virtual {v2, v0, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 504
    return-void
.end method

.method private updateWeatherInfoLocked(Lcyanogenmod/weather/WeatherInfo;)Z
    .locals 10
    .param p1, "wi"    # Lcyanogenmod/weather/WeatherInfo;

    .prologue
    .line 381
    invoke-virtual {p1}, Lcyanogenmod/weather/WeatherInfo;->getForecasts()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v4, v6, 0x1

    .line 382
    .local v4, "size":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 383
    .local v1, "contentValuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 385
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v6, "city_id"

    invoke-virtual {p1}, Lcyanogenmod/weather/WeatherInfo;->getCityId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    const-string/jumbo v6, "city"

    invoke-virtual {p1}, Lcyanogenmod/weather/WeatherInfo;->getCity()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    const-string/jumbo v6, "condition_code"

    invoke-virtual {p1}, Lcyanogenmod/weather/WeatherInfo;->getConditionCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 388
    const-string/jumbo v6, "humidity"

    invoke-virtual {p1}, Lcyanogenmod/weather/WeatherInfo;->getHumidity()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 389
    const-string/jumbo v6, "temperature"

    invoke-virtual {p1}, Lcyanogenmod/weather/WeatherInfo;->getTemperature()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 390
    const-string/jumbo v6, "temperature_unit"

    invoke-virtual {p1}, Lcyanogenmod/weather/WeatherInfo;->getTemperatureUnit()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 391
    const-string/jumbo v6, "timestamp"

    invoke-virtual {p1}, Lcyanogenmod/weather/WeatherInfo;->getTimestamp()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 392
    const-string/jumbo v6, "wind_direction"

    invoke-virtual {p1}, Lcyanogenmod/weather/WeatherInfo;->getWindDirection()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 393
    const-string/jumbo v6, "wind_speed"

    invoke-virtual {p1}, Lcyanogenmod/weather/WeatherInfo;->getWindSpeed()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 394
    const-string/jumbo v6, "wind_speed_unit"

    invoke-virtual {p1}, Lcyanogenmod/weather/WeatherInfo;->getWindSpeedUnit()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 395
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 397
    invoke-virtual {p1}, Lcyanogenmod/weather/WeatherInfo;->getForecasts()Ljava/util/ArrayList;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "df$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcyanogenmod/weather/WeatherInfo$DayForecast;

    .line 398
    .local v2, "df":Lcyanogenmod/weather/WeatherInfo$DayForecast;
    new-instance v0, Landroid/content/ContentValues;

    .end local v0    # "contentValues":Landroid/content/ContentValues;
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 399
    .restart local v0    # "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v6, "forecast_low"

    invoke-virtual {v2}, Lcyanogenmod/weather/WeatherInfo$DayForecast;->getLow()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 400
    const-string/jumbo v6, "forecast_high"

    invoke-virtual {v2}, Lcyanogenmod/weather/WeatherInfo$DayForecast;->getHigh()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 401
    const-string/jumbo v6, "forecast_condition_code"

    invoke-virtual {v2}, Lcyanogenmod/weather/WeatherInfo$DayForecast;->getConditionCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 402
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 405
    .end local v2    # "df":Lcyanogenmod/weather/WeatherInfo$DayForecast;
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    new-array v5, v6, [Landroid/content/ContentValues;

    .line 406
    .local v5, "updateValues":[Landroid/content/ContentValues;
    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 407
    sget-object v8, Lcyanogenmod/providers/WeatherContract$WeatherColumns;->CURRENT_AND_FORECAST_WEATHER_URI:Landroid/net/Uri;

    .line 408
    invoke-interface {v1, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/content/ContentValues;

    .line 406
    invoke-virtual {v7, v8, v6}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v6

    if-eq v4, v6, :cond_1

    .line 409
    sget-object v6, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "Failed to update the weather content provider"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    const/4 v6, 0x0

    return v6

    .line 412
    :cond_1
    const/4 v6, 0x1

    return v6
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 1
    .param p1, "phase"    # I

    .prologue
    .line 250
    const/16 v0, 0x226

    if-ne p1, v0, :cond_0

    .line 251
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->bindActiveWeatherProviderService()V

    .line 249
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 243
    const-string/jumbo v0, "cmweather"

    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->mService:Landroid/os/IBinder;

    invoke-virtual {p0, v0, v1}, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 244
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->registerPackageMonitor()V

    .line 245
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->registerSettingsObserver()V

    .line 242
    return-void
.end method
