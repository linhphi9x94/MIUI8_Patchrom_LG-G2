.class public Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker;
.super Lcom/android/server/SystemService;
.source "LiveLockScreenServiceBroker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker$BinderService;,
        Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker$1;,
        Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker$2;,
        Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker$3;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MSG_TRY_CONNECTING:I = 0x1

.field private static final SERVICE_CONNECTION_WAIT_TIME_MS:J = 0xfa0L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mChangeListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcyanogenmod/app/ILiveLockScreenChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mConnection:Landroid/content/ServiceConnection;

.field private final mConnectionHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mDefaultLlsInfo:Lcyanogenmod/app/LiveLockScreenInfo;

.field private mService:Lcyanogenmod/app/ILiveLockScreenManagerProvider;

.field private final mServiceStubForFailure:Lcyanogenmod/app/ILiveLockScreenManagerProvider;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker;)Landroid/os/RemoteCallbackList;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker;->mChangeListeners:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic -get2(Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker;)Lcyanogenmod/app/ILiveLockScreenManagerProvider;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker;->mService:Lcyanogenmod/app/ILiveLockScreenManagerProvider;

    return-object v0
.end method

.method static synthetic -set0(Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker;Lcyanogenmod/app/ILiveLockScreenManagerProvider;)Lcyanogenmod/app/ILiveLockScreenManagerProvider;
    .locals 0

    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker;->mService:Lcyanogenmod/app/ILiveLockScreenManagerProvider;

    return-object p1
.end method

.method static synthetic -wrap0(Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker;)Lcyanogenmod/app/ILiveLockScreenManagerProvider;
    .locals 1

    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker;->getServiceGuarded()Lcyanogenmod/app/ILiveLockScreenManagerProvider;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker;)Lcyanogenmod/app/LiveLockScreenInfo;
    .locals 1

    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker;->getDefaultLiveLockScreenInternal()Lcyanogenmod/app/LiveLockScreenInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker;)V
    .locals 0

    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker;->enforcePrivateAccessPermission()V

    return-void
.end method

.method static synthetic -wrap3(Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker;Lcyanogenmod/app/LiveLockScreenInfo;)V
    .locals 0
    .param p1, "llsInfo"    # Lcyanogenmod/app/LiveLockScreenInfo;

    .prologue
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker;->setDefaultLiveLockScreenInternal(Lcyanogenmod/app/LiveLockScreenInfo;)V

    return-void
.end method

.method static synthetic -wrap4(Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker;Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker;->setLiveLockScreenEnabledInternal(Z)V

    return-void
.end method

.method static synthetic -wrap5(Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker;)V
    .locals 0

    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker;->tryConnecting()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-class v0, Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker;->TAG:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 228
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 69
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 68
    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker;->mChangeListeners:Landroid/os/RemoteCallbackList;

    .line 73
    new-instance v0, Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker$1;

    invoke-direct {v0, p0}, Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker$1;-><init>(Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker;)V

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker;->mConnectionHandler:Landroid/os/Handler;

    .line 86
    new-instance v0, Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker$2;

    invoke-direct {v0, p0}, Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker$2;-><init>(Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker;)V

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker;->mConnection:Landroid/content/ServiceConnection;

    .line 122
    new-instance v0, Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker$3;

    invoke-direct {v0, p0}, Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker$3;-><init>(Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker;)V

    .line 121
    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker;->mServiceStubForFailure:Lcyanogenmod/app/ILiveLockScreenManagerProvider;

    .line 229
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker;->mContext:Landroid/content/Context;

    .line 227
    return-void
.end method

.method private enforcePrivateAccessPermission()V
    .locals 3

    .prologue
    .line 369
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker;->mContext:Landroid/content/Context;

    .line 370
    const-string/jumbo v1, "cyanogenmod.permission.LIVE_LOCK_SCREEN_MANAGER_ACCESS_PRIVATE"

    const/4 v2, 0x0

    .line 369
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    return-void
.end method

.method private getDefaultLiveLockScreenInternal()Lcyanogenmod/app/LiveLockScreenInfo;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker;->mDefaultLlsInfo:Lcyanogenmod/app/LiveLockScreenInfo;

    return-object v0
.end method

.method private getLiveLockScreenServiceComponent()Landroid/content/ComponentName;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 300
    iget-object v5, p0, Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 301
    .local v3, "pm":Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v5, "cyanogenmod.app.LiveLockScreenManagerService"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 302
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v3, v2, v6}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 303
    .local v4, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "info$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 304
    .local v0, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_0

    .line 305
    const-string/jumbo v5, "cyanogenmod.permission.LIVE_LOCK_SCREEN_MANAGER_PROVIDER"

    .line 306
    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 305
    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    .line 307
    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v5}, Landroid/content/pm/ServiceInfo;->isEnabled()Z

    move-result v5

    .line 305
    if-eqz v5, :cond_0

    .line 308
    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v5

    .line 313
    .end local v0    # "info":Landroid/content/pm/ResolveInfo;
    :cond_1
    return-object v7
.end method

.method private getOrConnectService()Lcyanogenmod/app/ILiveLockScreenManagerProvider;
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 317
    monitor-enter p0

    .line 318
    :try_start_0
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker;->mService:Lcyanogenmod/app/ILiveLockScreenManagerProvider;

    if-eqz v1, :cond_0

    .line 319
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker;->mService:Lcyanogenmod/app/ILiveLockScreenManagerProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 322
    :cond_0
    :try_start_1
    sget-object v1, Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "LiveLockScreenManagerService not connected. Try connecting..."

    invoke-static {v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker;->mConnectionHandler:Landroid/os/Handler;

    .line 324
    iget-object v6, p0, Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker;->mConnectionHandler:Landroid/os/Handler;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 323
    invoke-virtual {v1, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 326
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v6

    const-wide/16 v8, 0xfa0

    add-long v2, v6, v8

    .line 327
    .local v2, "shouldEnd":J
    const-wide/16 v4, 0xfa0

    .line 328
    .local v4, "waitTime":J
    :goto_0
    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_2

    .line 331
    :try_start_2
    invoke-virtual {p0, v4, v5}, Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 335
    :goto_1
    :try_start_3
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker;->mService:Lcyanogenmod/app/ILiveLockScreenManagerProvider;

    if-eqz v1, :cond_1

    .line 337
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker;->mService:Lcyanogenmod/app/ILiveLockScreenManagerProvider;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v1

    .line 332
    :catch_0
    move-exception v0

    .line 333
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_4
    sget-object v1, Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Connection wait interrupted"

    invoke-static {v1, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 317
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "shouldEnd":J
    .end local v4    # "waitTime":J
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 340
    .restart local v2    # "shouldEnd":J
    .restart local v4    # "waitTime":J
    :cond_1
    :try_start_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v4, v2, v6

    goto :goto_0

    .line 343
    :cond_2
    sget-object v1, Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Can not connect to LiveLockScreenManagerService (timed out)"

    invoke-static {v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    .line 344
    return-object v10
.end method

.method private getServiceGuarded()Lcyanogenmod/app/ILiveLockScreenManagerProvider;
    .locals 2

    .prologue
    .line 356
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker;->getOrConnectService()Lcyanogenmod/app/ILiveLockScreenManagerProvider;

    move-result-object v0

    .line 357
    .local v0, "service":Lcyanogenmod/app/ILiveLockScreenManagerProvider;
    if-eqz v0, :cond_0

    .line 358
    return-object v0

    .line 360
    :cond_0
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker;->mServiceStubForFailure:Lcyanogenmod/app/ILiveLockScreenManagerProvider;

    return-object v1
.end method

.method private setDefaultLiveLockScreenInternal(Lcyanogenmod/app/LiveLockScreenInfo;)V
    .locals 8
    .param p1, "llsInfo"    # Lcyanogenmod/app/LiveLockScreenInfo;

    .prologue
    .line 378
    if-eqz p1, :cond_1

    iget-object v3, p1, Lcyanogenmod/app/LiveLockScreenInfo;->component:Landroid/content/ComponentName;

    if-eqz v3, :cond_1

    .line 380
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 382
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const-string/jumbo v3, "android.permission.THIRD_PARTY_KEYGUARD"

    .line 383
    iget-object v6, p1, Lcyanogenmod/app/LiveLockScreenInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 381
    invoke-virtual {v2, v3, v6}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    const/4 v1, 0x1

    .line 384
    .local v1, "hasThirdPartyKeyguardPermission":Z
    :goto_0
    if-nez v1, :cond_1

    .line 385
    sget-object v3, Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcyanogenmod/app/LiveLockScreenInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 386
    const-string/jumbo v7, " does not have "

    .line 385
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 386
    const-string/jumbo v7, "android.permission.THIRD_PARTY_KEYGUARD"

    .line 385
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    return-void

    .line 381
    .end local v1    # "hasThirdPartyKeyguardPermission":Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "hasThirdPartyKeyguardPermission":Z
    goto :goto_0

    .line 391
    .end local v1    # "hasThirdPartyKeyguardPermission":Z
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 393
    .local v4, "token":J
    :try_start_0
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 394
    const-string/jumbo v7, "default_live_lock_screen_component"

    .line 395
    if-eqz p1, :cond_2

    iget-object v3, p1, Lcyanogenmod/app/LiveLockScreenInfo;->component:Landroid/content/ComponentName;

    if-eqz v3, :cond_2

    .line 396
    iget-object v3, p1, Lcyanogenmod/app/LiveLockScreenInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    .line 393
    :goto_1
    invoke-static {v6, v7, v3}, Lcyanogenmod/providers/CMSettings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 399
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 402
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker;->mDefaultLlsInfo:Lcyanogenmod/app/LiveLockScreenInfo;

    .line 404
    :try_start_1
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker;->mService:Lcyanogenmod/app/ILiveLockScreenManagerProvider;

    invoke-interface {v3, p1}, Lcyanogenmod/app/ILiveLockScreenManagerProvider;->updateDefaultLiveLockScreen(Lcyanogenmod/app/LiveLockScreenInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 377
    :goto_2
    return-void

    .line 397
    :cond_2
    :try_start_2
    const-string/jumbo v3, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 398
    :catchall_0
    move-exception v3

    .line 399
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 398
    throw v3

    .line 405
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_2
.end method

.method private setLiveLockScreenEnabledInternal(Z)V
    .locals 5
    .param p1, "enabled"    # Z

    .prologue
    .line 411
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 412
    .local v0, "token":J
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 413
    const-string/jumbo v4, "live_lock_screen_enabled"

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    .line 412
    :goto_0
    invoke-static {v3, v4, v2}, Lcyanogenmod/providers/CMSettings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 414
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 410
    return-void

    .line 413
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private tryConnecting()V
    .locals 6

    .prologue
    .line 267
    sget-object v3, Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Connecting to LiveLockScreenManagerService"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    monitor-enter p0

    .line 269
    :try_start_0
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker;->mService:Lcyanogenmod/app/ILiveLockScreenManagerProvider;

    if-eqz v3, :cond_0

    .line 270
    sget-object v3, Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Already connected"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 271
    return-void

    .line 273
    :cond_0
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 274
    .local v2, "intent":Landroid/content/Intent;
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker;->getLiveLockScreenServiceComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 275
    .local v0, "cn":Landroid/content/ComponentName;
    if-nez v0, :cond_1

    .line 276
    sget-object v3, Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "No live lock screen manager service found"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 277
    return-void

    .line 279
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker;->getLiveLockScreenServiceComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 281
    :try_start_3
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker;->mConnection:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 282
    sget-object v3, Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Failed to bind to LiveLockScreenManagerService"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    :goto_0
    monitor-exit p0

    .line 266
    return-void

    .line 284
    :catch_0
    move-exception v1

    .line 285
    .local v1, "e":Ljava/lang/SecurityException;
    :try_start_4
    sget-object v3, Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Forbidden to bind to LiveLockScreenManagerService"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 268
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v1    # "e":Ljava/lang/SecurityException;
    .end local v2    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 3
    .param p1, "phase"    # I

    .prologue
    .line 247
    const/16 v1, 0x258

    if-ne p1, v1, :cond_1

    .line 251
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 252
    const-string/jumbo v2, "default_live_lock_screen_component"

    .line 251
    invoke-static {v1, v2}, Lcyanogenmod/providers/CMSettings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, "defComponent":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 254
    new-instance v1, Lcyanogenmod/app/LiveLockScreenInfo$Builder;

    invoke-direct {v1}, Lcyanogenmod/app/LiveLockScreenInfo$Builder;-><init>()V

    .line 255
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 254
    invoke-virtual {v1, v2}, Lcyanogenmod/app/LiveLockScreenInfo$Builder;->setComponent(Landroid/content/ComponentName;)Lcyanogenmod/app/LiveLockScreenInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcyanogenmod/app/LiveLockScreenInfo$Builder;->build()Lcyanogenmod/app/LiveLockScreenInfo;

    move-result-object v1

    iput-object v1, p0, Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker;->mDefaultLlsInfo:Lcyanogenmod/app/LiveLockScreenInfo;

    .line 259
    :cond_0
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker;->tryConnecting()V

    .line 246
    .end local v0    # "defComponent":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 235
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 236
    const-string/jumbo v1, "org.cyanogenmod.livelockscreen"

    .line 235
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    const-string/jumbo v0, "cmlivelockscreen"

    .line 238
    new-instance v1, Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker$BinderService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker$BinderService;-><init>(Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker;Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker$BinderService;)V

    .line 237
    invoke-virtual {p0, v0, v1}, Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 233
    :goto_0
    return-void

    .line 240
    :cond_0
    sget-object v0, Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "CM live lock screen service started by system server but feature xml not declared. Not publishing binder service!"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
