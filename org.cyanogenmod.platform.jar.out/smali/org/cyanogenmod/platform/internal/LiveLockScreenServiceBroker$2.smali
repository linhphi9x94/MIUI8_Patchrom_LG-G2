.class Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker$2;
.super Ljava/lang/Object;
.source "LiveLockScreenServiceBroker.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker;


# direct methods
.method constructor <init>(Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker;)V
    .locals 0
    .param p1, "this$0"    # Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker;

    .prologue
    .line 86
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker$2;->this$0:Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 89
    invoke-static {}, Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker;->-get0()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "LiveLockScreenManagerService connected"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v4, p0, Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker$2;->this$0:Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker;

    monitor-enter v4

    .line 91
    :try_start_0
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker$2;->this$0:Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker;

    invoke-static {p2}, Lcyanogenmod/app/ILiveLockScreenManagerProvider$Stub;->asInterface(Landroid/os/IBinder;)Lcyanogenmod/app/ILiveLockScreenManagerProvider;

    move-result-object v5

    invoke-static {v3, v5}, Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker;->-set0(Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker;Lcyanogenmod/app/ILiveLockScreenManagerProvider;)Lcyanogenmod/app/ILiveLockScreenManagerProvider;

    .line 92
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker$2;->this$0:Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker;

    invoke-virtual {v3}, Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker;->notifyAll()V

    .line 95
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker$2;->this$0:Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker;

    invoke-static {v3}, Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker;->-get1(Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    .line 96
    .local v0, "N":I
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker$2;->this$0:Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker;

    invoke-static {v3}, Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker;->-get2(Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker;)Lcyanogenmod/app/ILiveLockScreenManagerProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    if-eqz v3, :cond_0

    if-lez v0, :cond_0

    .line 97
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 99
    :try_start_1
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker$2;->this$0:Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker;

    invoke-static {v3}, Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker;->-get2(Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker;)Lcyanogenmod/app/ILiveLockScreenManagerProvider;

    move-result-object v5

    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker$2;->this$0:Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker;

    invoke-static {v3}, Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker;->-get1(Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcyanogenmod/app/ILiveLockScreenChangeListener;

    invoke-interface {v5, v3}, Lcyanogenmod/app/ILiveLockScreenManagerProvider;->registerChangeListener(Lcyanogenmod/app/ILiveLockScreenChangeListener;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v2    # "i":I
    :cond_0
    monitor-exit v4

    .line 88
    return-void

    .line 90
    .end local v0    # "N":I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 100
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 110
    invoke-static {}, Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "LiveLockScreenManagerService unexpectedly disconnected"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker$2;->this$0:Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker;

    monitor-enter v1

    .line 112
    :try_start_0
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker$2;->this$0:Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker;->-set0(Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker;Lcyanogenmod/app/ILiveLockScreenManagerProvider;)Lcyanogenmod/app/ILiveLockScreenManagerProvider;

    .line 113
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker$2;->this$0:Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker;

    invoke-virtual {v0}, Lorg/cyanogenmod/platform/internal/LiveLockScreenServiceBroker;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 109
    return-void

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
