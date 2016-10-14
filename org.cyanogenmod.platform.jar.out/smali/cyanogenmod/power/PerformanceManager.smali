.class public Lcyanogenmod/power/PerformanceManager;
.super Ljava/lang/Object;
.source "PerformanceManager.java"


# static fields
.field public static final POWER_PROFILE_CHANGED:Ljava/lang/String; = "cyanogenmod.power.PROFILE_CHANGED"

.field public static final PROFILE_BALANCED:I = 0x1

.field public static final PROFILE_BIAS_PERFORMANCE:I = 0x4

.field public static final PROFILE_BIAS_POWER_SAVE:I = 0x3

.field public static final PROFILE_HIGH_PERFORMANCE:I = 0x2

.field public static final PROFILE_POWER_SAVE:I = 0x0

.field public static final TAG:Ljava/lang/String; = "PerformanceManager"

.field private static sInstance:Lcyanogenmod/power/PerformanceManager;

.field private static sService:Lcyanogenmod/power/IPerformanceManager;


# instance fields
.field private mNumberOfProfiles:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v1, 0x0

    iput v1, p0, Lcyanogenmod/power/PerformanceManager;->mNumberOfProfiles:I

    .line 80
    invoke-static {}, Lcyanogenmod/power/PerformanceManager;->getService()Lcyanogenmod/power/IPerformanceManager;

    move-result-object v1

    sput-object v1, Lcyanogenmod/power/PerformanceManager;->sService:Lcyanogenmod/power/IPerformanceManager;

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 82
    const-string/jumbo v2, "org.cyanogenmod.performance"

    .line 81
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    sget-object v1, Lcyanogenmod/power/PerformanceManager;->sService:Lcyanogenmod/power/IPerformanceManager;

    if-nez v1, :cond_0

    .line 83
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Unable to get PerformanceManagerService. The service either crashed, was not started, or the interface has been called to early in SystemServer init"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 88
    :cond_0
    :try_start_0
    sget-object v1, Lcyanogenmod/power/PerformanceManager;->sService:Lcyanogenmod/power/IPerformanceManager;

    if-eqz v1, :cond_1

    .line 89
    sget-object v1, Lcyanogenmod/power/PerformanceManager;->sService:Lcyanogenmod/power/IPerformanceManager;

    invoke-interface {v1}, Lcyanogenmod/power/IPerformanceManager;->getNumberOfProfiles()I

    move-result v1

    iput v1, p0, Lcyanogenmod/power/PerformanceManager;->mNumberOfProfiles:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :cond_1
    :goto_0
    return-void

    .line 91
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private checkService()Z
    .locals 2

    .prologue
    .line 116
    sget-object v0, Lcyanogenmod/power/PerformanceManager;->sService:Lcyanogenmod/power/IPerformanceManager;

    if-nez v0, :cond_0

    .line 117
    const-string/jumbo v0, "PerformanceManager"

    const-string/jumbo v1, "not connected to PerformanceManagerService"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const/4 v0, 0x0

    return v0

    .line 120
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcyanogenmod/power/PerformanceManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 96
    sget-object v0, Lcyanogenmod/power/PerformanceManager;->sInstance:Lcyanogenmod/power/PerformanceManager;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Lcyanogenmod/power/PerformanceManager;

    invoke-direct {v0, p0}, Lcyanogenmod/power/PerformanceManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcyanogenmod/power/PerformanceManager;->sInstance:Lcyanogenmod/power/PerformanceManager;

    .line 99
    :cond_0
    sget-object v0, Lcyanogenmod/power/PerformanceManager;->sInstance:Lcyanogenmod/power/PerformanceManager;

    return-object v0
.end method

.method public static getService()Lcyanogenmod/power/IPerformanceManager;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 104
    sget-object v1, Lcyanogenmod/power/PerformanceManager;->sService:Lcyanogenmod/power/IPerformanceManager;

    if-eqz v1, :cond_0

    .line 105
    sget-object v1, Lcyanogenmod/power/PerformanceManager;->sService:Lcyanogenmod/power/IPerformanceManager;

    return-object v1

    .line 107
    :cond_0
    const-string/jumbo v1, "cmperformance"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 108
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 109
    invoke-static {v0}, Lcyanogenmod/power/IPerformanceManager$Stub;->asInterface(Landroid/os/IBinder;)Lcyanogenmod/power/IPerformanceManager;

    move-result-object v1

    sput-object v1, Lcyanogenmod/power/PerformanceManager;->sService:Lcyanogenmod/power/IPerformanceManager;

    .line 110
    sget-object v1, Lcyanogenmod/power/PerformanceManager;->sService:Lcyanogenmod/power/IPerformanceManager;

    return-object v1

    .line 112
    :cond_1
    return-object v2
.end method


# virtual methods
.method public cpuBoost(I)V
    .locals 2
    .param p1, "duration"    # I

    .prologue
    .line 133
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/power/PerformanceManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    sget-object v1, Lcyanogenmod/power/PerformanceManager;->sService:Lcyanogenmod/power/IPerformanceManager;

    invoke-interface {v1, p1}, Lcyanogenmod/power/IPerformanceManager;->cpuBoost(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 136
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getNumberOfProfiles()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcyanogenmod/power/PerformanceManager;->mNumberOfProfiles:I

    return v0
.end method

.method public getPowerProfile()I
    .locals 3

    .prologue
    .line 175
    const/4 v1, -0x1

    .line 176
    .local v1, "ret":I
    iget v2, p0, Lcyanogenmod/power/PerformanceManager;->mNumberOfProfiles:I

    if-lez v2, :cond_0

    .line 178
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/power/PerformanceManager;->checkService()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 179
    sget-object v2, Lcyanogenmod/power/PerformanceManager;->sService:Lcyanogenmod/power/IPerformanceManager;

    invoke-interface {v2}, Lcyanogenmod/power/IPerformanceManager;->getPowerProfile()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 185
    :cond_0
    :goto_0
    return v1

    .line 181
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getProfileHasAppProfiles(I)Z
    .locals 3
    .param p1, "profile"    # I

    .prologue
    .line 194
    const/4 v1, 0x0

    .line 195
    .local v1, "ret":Z
    iget v2, p0, Lcyanogenmod/power/PerformanceManager;->mNumberOfProfiles:I

    if-lez v2, :cond_0

    .line 197
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/power/PerformanceManager;->checkService()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 198
    sget-object v2, Lcyanogenmod/power/PerformanceManager;->sService:Lcyanogenmod/power/IPerformanceManager;

    invoke-interface {v2, p1}, Lcyanogenmod/power/IPerformanceManager;->getProfileHasAppProfiles(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 204
    .end local v1    # "ret":Z
    :cond_0
    :goto_0
    return v1

    .line 200
    .restart local v1    # "ret":Z
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setPowerProfile(I)Z
    .locals 4
    .param p1, "profile"    # I

    .prologue
    .line 154
    iget v2, p0, Lcyanogenmod/power/PerformanceManager;->mNumberOfProfiles:I

    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    .line 155
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Power profiles not enabled on this system!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 158
    :cond_0
    const/4 v0, 0x0

    .line 160
    .local v0, "changed":Z
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/power/PerformanceManager;->checkService()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 161
    sget-object v2, Lcyanogenmod/power/PerformanceManager;->sService:Lcyanogenmod/power/IPerformanceManager;

    invoke-interface {v2, p1}, Lcyanogenmod/power/IPerformanceManager;->setPowerProfile(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 166
    .end local v0    # "changed":Z
    :cond_1
    return v0

    .line 163
    .restart local v0    # "changed":Z
    :catch_0
    move-exception v1

    .line 164
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
