.class public Landroid/app/Notification$Builder;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field public static final EXTRA_NEEDS_REBUILD:Ljava/lang/String; = "android.rebuild"

.field public static final EXTRA_REBUILD_BIG_CONTENT_VIEW:Ljava/lang/String; = "android.rebuild.bigView"

.field public static final EXTRA_REBUILD_BIG_CONTENT_VIEW_ACTION_COUNT:Ljava/lang/String; = "android.rebuild.bigViewActionCount"

.field public static final EXTRA_REBUILD_CONTENT_VIEW:Ljava/lang/String; = "android.rebuild.contentView"

.field public static final EXTRA_REBUILD_CONTENT_VIEW_ACTION_COUNT:Ljava/lang/String; = "android.rebuild.contentViewActionCount"

.field private static final EXTRA_REBUILD_CONTEXT_APPLICATION_INFO:Ljava/lang/String; = "android.rebuild.applicationInfo"

.field public static final EXTRA_REBUILD_HEADS_UP_CONTENT_VIEW:Ljava/lang/String; = "android.rebuild.hudView"

.field public static final EXTRA_REBUILD_HEADS_UP_CONTENT_VIEW_ACTION_COUNT:Ljava/lang/String; = "android.rebuild.hudViewActionCount"

.field public static final EXTRA_REBUILD_LARGE_ICON:Ljava/lang/String; = "android.rebuild.largeIcon"

.field private static final LARGE_TEXT_SCALE:F = 1.3f

.field private static final MAX_ACTION_BUTTONS:I = 0x3

.field private static final STRIP_AND_REBUILD:Z = true


# instance fields
.field private mActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Notification$Action;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioAttributes:Landroid/media/AudioAttributes;

.field private mAudioStreamType:I

.field private mCategory:Ljava/lang/String;

.field private mColor:I

.field private final mColorUtil:Lcom/android/internal/util/NotificationColorUtil;

.field private mContentInfo:Ljava/lang/CharSequence;

.field private mContentIntent:Landroid/app/PendingIntent;

.field private mContentText:Ljava/lang/CharSequence;

.field private mContentTitle:Ljava/lang/CharSequence;

.field private mContentView:Landroid/widget/RemoteViews;

.field private mContext:Landroid/content/Context;

.field private mDefaults:I

.field private mDeleteIntent:Landroid/app/PendingIntent;

.field private mExtras:Landroid/os/Bundle;

.field private mFlags:I

.field private mFullScreenIntent:Landroid/app/PendingIntent;

.field private mGroupKey:Ljava/lang/String;

.field private mHasThreeLines:Z

.field private mLargeIcon:Landroid/graphics/drawable/Icon;

.field private mLedArgb:I

.field private mLedOffMs:I

.field private mLedOnMs:I

.field private mNumber:I

.field private mOriginatingUserId:I

.field private mPeople:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPriority:I

.field private mProgress:I

.field private mProgressIndeterminate:Z

.field private mProgressMax:I

.field private mPublicVersion:Landroid/app/Notification;

.field private mRebuildBundle:Landroid/os/Bundle;

.field private mRebuildNotification:Landroid/app/Notification;

.field private mShowWhen:Z

.field private mSmallIcon:Landroid/graphics/drawable/Icon;

.field private mSmallIconLevel:I

.field private mSortKey:Ljava/lang/String;

.field private mSound:Landroid/net/Uri;

.field private mStyle:Landroid/app/Notification$Style;

.field private mSubText:Ljava/lang/CharSequence;

.field private mTickerText:Ljava/lang/CharSequence;

.field private mTickerView:Landroid/widget/RemoteViews;

.field private mUseChronometer:Z

.field private mVibrate:[J

.field private mVisibility:I

.field private mWhen:J


# direct methods
.method static synthetic -get0(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get1(Landroid/app/Notification$Builder;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic -get2(Landroid/app/Notification$Builder;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mContentTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic -get3(Landroid/app/Notification$Builder;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Landroid/app/Notification$Builder;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/Notification$Builder;->mHasThreeLines:Z

    return v0
.end method

.method static synthetic -get5(Landroid/app/Notification$Builder;)Landroid/graphics/drawable/Icon;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mLargeIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method static synthetic -get6(Landroid/app/Notification$Builder;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mSubText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic -get7(Landroid/app/Notification$Builder;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/Notification$Builder;->mUseChronometer:Z

    return v0
.end method

.method static synthetic -set0(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    iput-object p1, p0, Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic -set1(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    iput-object p1, p0, Landroid/app/Notification$Builder;->mContentTitle:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic -set2(Landroid/app/Notification$Builder;I)I
    .locals 0

    iput p1, p0, Landroid/app/Notification$Builder;->mFlags:I

    return p1
.end method

.method static synthetic -set3(Landroid/app/Notification$Builder;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;
    .locals 0

    iput-object p1, p0, Landroid/app/Notification$Builder;->mLargeIcon:Landroid/graphics/drawable/Icon;

    return-object p1
.end method

.method static synthetic -wrap0(Landroid/app/Notification$Builder;I)Landroid/widget/RemoteViews;
    .locals 1
    .param p1, "layoutId"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->applyStandardTemplateWithActions(I)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/app/Notification$Builder;IZ)Landroid/widget/RemoteViews;
    .locals 1
    .param p1, "resId"    # I
    .param p2, "hasProgress"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/app/Notification$Builder;->applyStandardTemplate(IZ)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap10(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;)V
    .locals 0
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .prologue
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->shrinkLine3Text(Landroid/widget/RemoteViews;)V

    return-void
.end method

.method static synthetic -wrap2(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;I)Z
    .locals 1
    .param p1, "contentView"    # Landroid/widget/RemoteViews;
    .param p2, "resId"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/app/Notification$Builder;->addProfileBadge(Landroid/widget/RemoteViews;I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Landroid/app/Notification$Builder;)Z
    .locals 1

    invoke-direct {p0}, Landroid/app/Notification$Builder;->showsTimeOrChronometer()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Landroid/app/Notification$Builder;)I
    .locals 1

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBigPictureLayoutResource()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Landroid/app/Notification$Builder;)I
    .locals 1

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBigTextLayoutResource()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap6(Landroid/app/Notification$Builder;)I
    .locals 1

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getInboxLayoutResource()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap7(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "charSequence"    # Ljava/lang/CharSequence;

    .prologue
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap8(Landroid/app/Notification$Builder;Landroid/app/Notification;Landroid/widget/RemoteViews;)V
    .locals 0
    .param p1, "n"    # Landroid/app/Notification;
    .param p2, "bigContentView"    # Landroid/widget/RemoteViews;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/app/Notification$Builder;->setBuilderBigContentView(Landroid/app/Notification;Landroid/widget/RemoteViews;)V

    return-void
.end method

.method static synthetic -wrap9(Landroid/app/Notification$Builder;Landroid/app/Notification;Landroid/widget/RemoteViews;)V
    .locals 0
    .param p1, "n"    # Landroid/app/Notification;
    .param p2, "contentView"    # Landroid/widget/RemoteViews;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/app/Notification$Builder;->setBuilderContentView(Landroid/app/Notification;Landroid/widget/RemoteViews;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 2172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2119
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    .line 2122
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/Notification$Builder;->mShowWhen:Z

    .line 2123
    iput v4, p0, Landroid/app/Notification$Builder;->mVisibility:I

    .line 2124
    iput-object v0, p0, Landroid/app/Notification$Builder;->mPublicVersion:Landroid/app/Notification;

    .line 2127
    iput v4, p0, Landroid/app/Notification$Builder;->mColor:I

    .line 2137
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Landroid/app/Notification$Builder;->mRebuildBundle:Landroid/os/Bundle;

    .line 2142
    iput-object v0, p0, Landroid/app/Notification$Builder;->mRebuildNotification:Landroid/app/Notification;

    .line 2182
    iput-object p1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    .line 2185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/app/Notification$Builder;->mWhen:J

    .line 2186
    const/4 v1, -0x1

    iput v1, p0, Landroid/app/Notification$Builder;->mAudioStreamType:I

    .line 2187
    sget-object v1, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    iput-object v1, p0, Landroid/app/Notification$Builder;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 2188
    iput v4, p0, Landroid/app/Notification$Builder;->mPriority:I

    .line 2189
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/app/Notification$Builder;->mPeople:Ljava/util/ArrayList;

    .line 2191
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_0

    .line 2192
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/util/NotificationColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/NotificationColorUtil;

    move-result-object v0

    .line 2191
    :cond_0
    iput-object v0, p0, Landroid/app/Notification$Builder;->mColorUtil:Lcom/android/internal/util/NotificationColorUtil;

    .line 2172
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/app/Notification;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "n"    # Landroid/app/Notification;

    .prologue
    .line 2201
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 2202
    iput-object p2, p0, Landroid/app/Notification$Builder;->mRebuildNotification:Landroid/app/Notification;

    .line 2203
    invoke-direct {p0, p2}, Landroid/app/Notification$Builder;->restoreFromNotification(Landroid/app/Notification;)V

    .line 2205
    const/4 v3, 0x0

    .line 2206
    .local v3, "style":Landroid/app/Notification$Style;
    iget-object v2, p2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 2207
    .local v2, "extras":Landroid/os/Bundle;
    const-string/jumbo v7, "android.template"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2208
    .local v6, "templateClass":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 2209
    invoke-static {v6}, Landroid/app/Notification$Builder;->getNotificationStyleClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 2210
    .local v4, "styleClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Notification$Style;>;"
    if-nez v4, :cond_0

    .line 2211
    const-string/jumbo v7, "Notification"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unknown style class: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2212
    return-void

    .line 2216
    :cond_0
    const/4 v7, 0x0

    :try_start_0
    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v4, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 2217
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroid/app/Notification$Style;>;"
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 2218
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Landroid/app/Notification$Style;

    move-object v3, v0

    .line 2219
    .local v3, "style":Landroid/app/Notification$Style;
    invoke-virtual {v3, v2}, Landroid/app/Notification$Style;->restoreFromExtras(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2225
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroid/app/Notification$Style;>;"
    .end local v3    # "style":Landroid/app/Notification$Style;
    .end local v4    # "styleClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Notification$Style;>;"
    :cond_1
    if-eqz v3, :cond_2

    .line 2226
    invoke-virtual {p0, v3}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 2200
    :cond_2
    return-void

    .line 2220
    .restart local v4    # "styleClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Notification$Style;>;"
    :catch_0
    move-exception v5

    .line 2221
    .local v5, "t":Ljava/lang/Throwable;
    const-string/jumbo v7, "Notification"

    const-string/jumbo v8, "Could not create Style"

    invoke-static {v7, v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2222
    return-void
.end method

.method private addProfileBadge(Landroid/widget/RemoteViews;I)Z
    .locals 5
    .param p1, "contentView"    # Landroid/widget/RemoteViews;
    .param p2, "resId"    # I

    .prologue
    const v4, 0x1020389

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 2919
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getProfileBadge()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2921
    .local v0, "profileBadge":Landroid/graphics/Bitmap;
    const v1, 0x1020376

    invoke-virtual {p1, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2922
    const v1, 0x1020386

    invoke-virtual {p1, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2923
    invoke-virtual {p1, v4, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2925
    if-eqz v0, :cond_1

    .line 2926
    invoke-virtual {p1, p2, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 2927
    invoke-virtual {p1, p2, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2931
    if-ne p2, v4, :cond_0

    .line 2932
    const v1, 0x1020387

    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2934
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 2936
    :cond_1
    return v2
.end method

.method private applyLargeIconBackground(Landroid/widget/RemoteViews;)V
    .locals 7
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .prologue
    const/4 v3, -0x1

    const v1, 0x1020006

    .line 3269
    const-string/jumbo v0, "setBackgroundResource"

    .line 3270
    const v4, 0x10804ee

    .line 3269
    invoke-virtual {p1, v1, v0, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 3276
    invoke-direct {p0}, Landroid/app/Notification$Builder;->resolveColor()I

    move-result v4

    .line 3277
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 3274
    const/4 v2, 0x1

    move-object v0, p1

    move v6, v3

    .line 3272
    invoke-virtual/range {v0 .. v6}, Landroid/widget/RemoteViews;->setDrawableParameters(IZIILandroid/graphics/PorterDuff$Mode;I)V

    .line 3280
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3281
    const v3, 0x1050061

    .line 3280
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .local v2, "padding":I
    move-object v0, p1

    move v3, v2

    move v4, v2

    move v5, v2

    .line 3282
    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    .line 3268
    return-void
.end method

.method private applyStandardTemplate(I)Landroid/widget/RemoteViews;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 2975
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/app/Notification$Builder;->applyStandardTemplate(IZ)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method private applyStandardTemplate(IZ)Landroid/widget/RemoteViews;
    .locals 18
    .param p1, "resId"    # I
    .param p2, "hasProgress"    # Z

    .prologue
    .line 2982
    new-instance v2, Landroid/app/Notification$BuilderRemoteViews;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    move/from16 v0, p1

    invoke-direct {v2, v3, v0}, Landroid/app/Notification$BuilderRemoteViews;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    .line 2984
    .local v2, "contentView":Landroid/widget/RemoteViews;
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/app/Notification$Builder;->resetStandardTemplate(Landroid/widget/RemoteViews;)V

    .line 2986
    const/4 v13, 0x0

    .line 2987
    .local v13, "showLine3":Z
    const/4 v12, 0x0

    .line 2988
    .local v12, "showLine2":Z
    const/4 v10, 0x0

    .line 2990
    .local v10, "contentTextInLine2":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/Notification$Builder;->mLargeIcon:Landroid/graphics/drawable/Icon;

    if-eqz v3, :cond_5

    .line 2991
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/Notification$Builder;->mLargeIcon:Landroid/graphics/drawable/Icon;

    const v4, 0x1020006

    invoke-virtual {v2, v4, v3}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    .line 2992
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/Notification$Builder;->mLargeIcon:Landroid/graphics/drawable/Icon;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Landroid/app/Notification$Builder;->processLargeLegacyIcon(Landroid/graphics/drawable/Icon;Landroid/widget/RemoteViews;)V

    .line 2993
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/Notification$Builder;->mSmallIcon:Landroid/graphics/drawable/Icon;

    const v4, 0x1020040

    invoke-virtual {v2, v4, v3}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    .line 2994
    const v3, 0x1020040

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2995
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/Notification$Builder;->mSmallIcon:Landroid/graphics/drawable/Icon;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Landroid/app/Notification$Builder;->processSmallRightIcon(Landroid/graphics/drawable/Icon;Landroid/widget/RemoteViews;)V

    .line 3001
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/Notification$Builder;->mContentTitle:Ljava/lang/CharSequence;

    if-eqz v3, :cond_0

    .line 3002
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/Notification$Builder;->mContentTitle:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    const v4, 0x1020016

    invoke-virtual {v2, v4, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 3004
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;

    if-eqz v3, :cond_1

    .line 3005
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    const v4, 0x1020075

    invoke-virtual {v2, v4, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 3006
    const/4 v13, 0x1

    .line 3008
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/Notification$Builder;->mContentInfo:Ljava/lang/CharSequence;

    if-eqz v3, :cond_6

    .line 3009
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/Notification$Builder;->mContentInfo:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    const v4, 0x1020388

    invoke-virtual {v2, v4, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 3010
    const v3, 0x1020388

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3011
    const/4 v13, 0x1

    .line 3030
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/Notification$Builder;->mSubText:Ljava/lang/CharSequence;

    if-eqz v3, :cond_a

    .line 3031
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/Notification$Builder;->mSubText:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    const v4, 0x1020075

    invoke-virtual {v2, v4, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 3032
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;

    if-eqz v3, :cond_9

    .line 3033
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    const v4, 0x1020015

    invoke-virtual {v2, v4, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 3034
    const v3, 0x1020015

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3035
    const/4 v12, 0x1

    .line 3036
    const/4 v10, 0x1

    .line 3059
    :goto_2
    if-eqz v12, :cond_2

    .line 3062
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/app/Notification$Builder;->shrinkLine3Text(Landroid/widget/RemoteViews;)V

    .line 3065
    :cond_2
    invoke-direct/range {p0 .. p0}, Landroid/app/Notification$Builder;->showsTimeOrChronometer()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3066
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/app/Notification$Builder;->mUseChronometer:Z

    if-eqz v3, :cond_e

    .line 3067
    const v3, 0x1020384

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3068
    const-string/jumbo v3, "setBase"

    .line 3069
    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/app/Notification$Builder;->mWhen:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v6, v6, v16

    add-long/2addr v4, v6

    .line 3068
    const v6, 0x1020384

    invoke-virtual {v2, v6, v3, v4, v5}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    .line 3070
    const-string/jumbo v3, "setStarted"

    const v4, 0x1020384

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v3, v5}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 3078
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    .line 3079
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/app/Notification$Builder;->mHasThreeLines:Z

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->fontScale:F

    .line 3078
    invoke-static {v3, v4, v5}, Landroid/app/Notification$Builder;->calculateTopPadding(Landroid/content/Context;ZF)I

    move-result v5

    const v3, 0x1020385

    const/4 v4, 0x0

    .line 3080
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 3078
    invoke-virtual/range {v2 .. v7}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    .line 3084
    if-eqz v10, :cond_f

    const v3, 0x1020386

    .line 3083
    :goto_4
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Landroid/app/Notification$Builder;->addProfileBadge(Landroid/widget/RemoteViews;I)Z

    move-result v8

    .line 3086
    .local v8, "addedBadge":Z
    if-eqz v8, :cond_4

    if-eqz v10, :cond_10

    .line 3091
    :cond_4
    :goto_5
    if-eqz v13, :cond_11

    const/4 v3, 0x0

    :goto_6
    const v4, 0x1020387

    invoke-virtual {v2, v4, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3092
    if-eqz v13, :cond_12

    const/4 v3, 0x0

    :goto_7
    const v4, 0x102037a

    invoke-virtual {v2, v4, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3093
    return-object v2

    .line 2997
    .end local v8    # "addedBadge":Z
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/Notification$Builder;->mSmallIcon:Landroid/graphics/drawable/Icon;

    const v4, 0x1020006

    invoke-virtual {v2, v4, v3}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    .line 2998
    const v3, 0x1020006

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2999
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/Notification$Builder;->mSmallIcon:Landroid/graphics/drawable/Icon;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Landroid/app/Notification$Builder;->processSmallIconAsLarge(Landroid/graphics/drawable/Icon;Landroid/widget/RemoteViews;)V

    goto/16 :goto_0

    .line 3012
    :cond_6
    move-object/from16 v0, p0

    iget v3, v0, Landroid/app/Notification$Builder;->mNumber:I

    if-lez v3, :cond_8

    .line 3013
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 3014
    const v4, 0x10e0003

    .line 3013
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    .line 3015
    .local v14, "tooBig":I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/app/Notification$Builder;->mNumber:I

    if-le v3, v14, :cond_7

    .line 3017
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 3018
    const v4, 0x1040017

    .line 3017
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3016
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    const v4, 0x1020388

    invoke-virtual {v2, v4, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 3023
    :goto_8
    const v3, 0x1020388

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3024
    const/4 v13, 0x1

    goto/16 :goto_1

    .line 3020
    :cond_7
    invoke-static {}, Ljava/text/NumberFormat;->getIntegerInstance()Ljava/text/NumberFormat;

    move-result-object v11

    .line 3021
    .local v11, "f":Ljava/text/NumberFormat;
    move-object/from16 v0, p0

    iget v3, v0, Landroid/app/Notification$Builder;->mNumber:I

    int-to-long v4, v3

    invoke-virtual {v11, v4, v5}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    const v4, 0x1020388

    invoke-virtual {v2, v4, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_8

    .line 3026
    .end local v11    # "f":Ljava/text/NumberFormat;
    .end local v14    # "tooBig":I
    :cond_8
    const v3, 0x1020388

    const/16 v4, 0x8

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_1

    .line 3038
    :cond_9
    const v3, 0x1020015

    const/16 v4, 0x8

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_2

    .line 3041
    :cond_a
    const v3, 0x1020015

    const/16 v4, 0x8

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3042
    if-eqz p2, :cond_d

    move-object/from16 v0, p0

    iget v3, v0, Landroid/app/Notification$Builder;->mProgressMax:I

    if-nez v3, :cond_b

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/app/Notification$Builder;->mProgressIndeterminate:Z

    if-eqz v3, :cond_d

    .line 3043
    :cond_b
    const v3, 0x102000d

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3045
    move-object/from16 v0, p0

    iget v3, v0, Landroid/app/Notification$Builder;->mProgressMax:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/app/Notification$Builder;->mProgress:I

    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/app/Notification$Builder;->mProgressIndeterminate:Z

    const v6, 0x102000d

    .line 3044
    invoke-virtual {v2, v6, v3, v4, v5}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 3047
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    .line 3048
    const v4, 0x106006a

    .line 3047
    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    const v4, 0x102000d

    .line 3046
    invoke-virtual {v2, v4, v3}, Landroid/widget/RemoteViews;->setProgressBackgroundTintList(ILandroid/content/res/ColorStateList;)V

    .line 3049
    move-object/from16 v0, p0

    iget v3, v0, Landroid/app/Notification$Builder;->mColor:I

    if-eqz v3, :cond_c

    .line 3050
    move-object/from16 v0, p0

    iget v3, v0, Landroid/app/Notification$Builder;->mColor:I

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v9

    .line 3051
    .local v9, "colorStateList":Landroid/content/res/ColorStateList;
    const v3, 0x102000d

    invoke-virtual {v2, v3, v9}, Landroid/widget/RemoteViews;->setProgressTintList(ILandroid/content/res/ColorStateList;)V

    .line 3052
    const v3, 0x102000d

    invoke-virtual {v2, v3, v9}, Landroid/widget/RemoteViews;->setProgressIndeterminateTintList(ILandroid/content/res/ColorStateList;)V

    .line 3054
    .end local v9    # "colorStateList":Landroid/content/res/ColorStateList;
    :cond_c
    const/4 v12, 0x1

    goto/16 :goto_2

    .line 3056
    :cond_d
    const v3, 0x102000d

    const/16 v4, 0x8

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_2

    .line 3072
    :cond_e
    const v3, 0x102008c

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3073
    const-string/jumbo v3, "setTime"

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/app/Notification$Builder;->mWhen:J

    const v6, 0x102008c

    invoke-virtual {v2, v6, v3, v4, v5}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    goto/16 :goto_3

    .line 3084
    :cond_f
    const v3, 0x1020389

    goto/16 :goto_4

    .line 3087
    .restart local v8    # "addedBadge":Z
    :cond_10
    const/4 v13, 0x1

    goto/16 :goto_5

    .line 3091
    :cond_11
    const/16 v3, 0x8

    goto/16 :goto_6

    .line 3092
    :cond_12
    const/16 v3, 0x8

    goto/16 :goto_7
.end method

.method private applyStandardTemplateWithActions(I)Landroid/widget/RemoteViews;
    .locals 7
    .param p1, "layoutId"    # I

    .prologue
    const v6, 0x102036e

    const/4 v5, 0x0

    .line 3150
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->applyStandardTemplate(I)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 3152
    .local v1, "big":Landroid/widget/RemoteViews;
    invoke-direct {p0, v1}, Landroid/app/Notification$Builder;->resetStandardTemplateWithActions(Landroid/widget/RemoteViews;)V

    .line 3154
    iget-object v4, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3155
    .local v0, "N":I
    if-lez v0, :cond_1

    .line 3156
    invoke-virtual {v1, v6, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3157
    const v4, 0x1020377

    invoke-virtual {v1, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3158
    const/4 v4, 0x3

    if-le v0, v4, :cond_0

    const/4 v0, 0x3

    .line 3159
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 3160
    iget-object v4, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Notification$Action;

    invoke-direct {p0, v4}, Landroid/app/Notification$Builder;->generateActionButton(Landroid/app/Notification$Action;)Landroid/widget/RemoteViews;

    move-result-object v2

    .line 3161
    .local v2, "button":Landroid/widget/RemoteViews;
    invoke-virtual {v1, v6, v2}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 3159
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3164
    .end local v2    # "button":Landroid/widget/RemoteViews;
    .end local v3    # "i":I
    :cond_1
    return-object v1
.end method

.method public static calculateTopPadding(Landroid/content/Context;ZF)I
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "hasThreeLines"    # Z
    .param p2, "fontScale"    # F

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 3129
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-eqz p1, :cond_0

    .line 3130
    const v3, 0x105005e

    .line 3129
    :goto_0
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 3132
    .local v2, "padding":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-eqz p1, :cond_1

    .line 3133
    const v3, 0x1050060

    .line 3132
    :goto_1
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 3135
    .local v1, "largePadding":I
    const v3, 0x3fa66666    # 1.3f

    invoke-static {p2, v5, v3}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v3

    sub-float/2addr v3, v5

    .line 3136
    const v4, 0x3e999998    # 0.29999995f

    .line 3135
    div-float v0, v3, v4

    .line 3140
    .local v0, "largeFactor":F
    sub-float v3, v5, v0

    int-to-float v4, v2

    mul-float/2addr v3, v4

    int-to-float v4, v1

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    return v3

    .line 3131
    .end local v0    # "largeFactor":F
    .end local v1    # "largePadding":I
    .end local v2    # "padding":I
    :cond_0
    const v3, 0x105005d

    goto :goto_0

    .line 3134
    .restart local v2    # "padding":I
    :cond_1
    const v3, 0x105005f

    goto :goto_1
.end method

.method private generateActionButton(Landroid/app/Notification$Action;)Landroid/widget/RemoteViews;
    .locals 7
    .param p1, "action"    # Landroid/app/Notification$Action;

    .prologue
    const/4 v3, 0x0

    const v1, 0x102036f

    .line 3196
    iget-object v4, p1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    if-nez v4, :cond_1

    const/4 v6, 0x1

    .line 3197
    .local v6, "tombstone":Z
    :goto_0
    new-instance v0, Landroid/app/Notification$BuilderRemoteViews;

    iget-object v4, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 3198
    if-eqz v6, :cond_2

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getActionTombstoneLayoutResource()I

    move-result v4

    .line 3197
    :goto_1
    invoke-direct {v0, v5, v4}, Landroid/app/Notification$BuilderRemoteViews;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    .line 3200
    .local v0, "button":Landroid/widget/RemoteViews;
    invoke-virtual {p1}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    .local v2, "ai":Landroid/graphics/drawable/Icon;
    move-object v4, v3

    move-object v5, v3

    .line 3201
    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->setTextViewCompoundDrawablesRelative(ILandroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)V

    .line 3202
    iget-object v3, p1, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-direct {p0, v3}, Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 3203
    if-nez v6, :cond_0

    .line 3204
    iget-object v3, p1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 3206
    :cond_0
    iget-object v3, p1, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 3207
    invoke-direct {p0, p1, v0}, Landroid/app/Notification$Builder;->processLegacyAction(Landroid/app/Notification$Action;Landroid/widget/RemoteViews;)V

    .line 3208
    return-object v0

    .line 3196
    .end local v0    # "button":Landroid/widget/RemoteViews;
    .end local v2    # "ai":Landroid/graphics/drawable/Icon;
    .end local v6    # "tombstone":Z
    :cond_1
    const/4 v6, 0x0

    .restart local v6    # "tombstone":Z
    goto :goto_0

    .line 3199
    :cond_2
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getActionLayoutResource()I

    move-result v4

    goto :goto_1
.end method

.method private getActionLayoutResource()I
    .locals 1

    .prologue
    .line 3727
    const v0, 0x1090080

    return v0
.end method

.method private getActionTombstoneLayoutResource()I
    .locals 1

    .prologue
    .line 3731
    const v0, 0x1090082

    return v0
.end method

.method private getBaseLayoutResource()I
    .locals 1

    .prologue
    .line 3707
    const v0, 0x1090085

    return v0
.end method

.method private getBigBaseLayoutResource()I
    .locals 1

    .prologue
    .line 3711
    const v0, 0x1090086

    return v0
.end method

.method private getBigPictureLayoutResource()I
    .locals 1

    .prologue
    .line 3715
    const v0, 0x1090089

    return v0
.end method

.method private getBigTextLayoutResource()I
    .locals 1

    .prologue
    .line 3719
    const v0, 0x109008a

    return v0
.end method

.method private getInboxLayoutResource()I
    .locals 1

    .prologue
    .line 3723
    const v0, 0x109008b

    return v0
.end method

.method private static getNotificationStyleClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 5
    .param p0, "templateClass"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Notification$Style;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3554
    const/4 v3, 0x4

    new-array v0, v3, [Ljava/lang/Class;

    .line 3555
    const-class v3, Landroid/app/Notification$BigTextStyle;

    aput-object v3, v0, v2

    const-class v3, Landroid/app/Notification$BigPictureStyle;

    const/4 v4, 0x1

    aput-object v3, v0, v4

    const-class v3, Landroid/app/Notification$InboxStyle;

    const/4 v4, 0x2

    aput-object v3, v0, v4

    const-class v3, Landroid/app/Notification$MediaStyle;

    const/4 v4, 0x3

    aput-object v3, v0, v4

    .line 3556
    .local v0, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<+Landroid/app/Notification$Style;>;"
    array-length v3, v0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 3557
    .local v1, "innerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Notification$Style;>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3558
    return-object v1

    .line 3556
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3561
    .end local v1    # "innerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Notification$Style;>;"
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private getProfileBadge()Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 2905
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getProfileBadgeDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2906
    .local v0, "badge":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 2907
    return-object v4

    .line 2909
    :cond_0
    iget-object v4, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 2910
    const v5, 0x1050062

    .line 2909
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 2911
    .local v3, "size":I
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2912
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2913
    .local v2, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v0, v6, v6, v3, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2914
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2915
    return-object v1
.end method

.method private getProfileBadgeDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 2900
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2901
    new-instance v1, Landroid/os/UserHandle;

    iget v2, p0, Landroid/app/Notification$Builder;->mOriginatingUserId:I

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v2, 0x0

    .line 2900
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getUserBadgeForDensity(Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private hasThreeLines()Z
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 3112
    iget-object v6, p0, Landroid/app/Notification$Builder;->mSubText:Ljava/lang/CharSequence;

    if-eqz v6, :cond_2

    iget-object v6, p0, Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;

    if-eqz v6, :cond_2

    const/4 v1, 0x1

    .line 3113
    .local v1, "contentTextInLine2":Z
    :goto_0
    iget-object v6, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v6, :cond_3

    iget-object v6, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    invoke-virtual {v6}, Landroid/app/Notification$Style;->hasProgress()Z

    move-result v4

    .line 3115
    :goto_1
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getProfileBadgeDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_0

    if-eqz v1, :cond_4

    :cond_0
    const/4 v0, 0x0

    .line 3116
    .local v0, "badgeInLine3":Z
    :goto_2
    iget-object v6, p0, Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;

    if-nez v6, :cond_1

    iget-object v6, p0, Landroid/app/Notification$Builder;->mContentInfo:Ljava/lang/CharSequence;

    if-eqz v6, :cond_5

    :cond_1
    const/4 v3, 0x1

    .line 3118
    :goto_3
    iget-object v6, p0, Landroid/app/Notification$Builder;->mSubText:Ljava/lang/CharSequence;

    if-eqz v6, :cond_6

    iget-object v6, p0, Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;

    if-eqz v6, :cond_6

    const/4 v2, 0x1

    .line 3121
    :goto_4
    if-eqz v2, :cond_9

    :goto_5
    return v3

    .line 3112
    .end local v0    # "badgeInLine3":Z
    .end local v1    # "contentTextInLine2":Z
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "contentTextInLine2":Z
    goto :goto_0

    .line 3113
    :cond_3
    const/4 v4, 0x1

    .local v4, "hasProgress":Z
    goto :goto_1

    .line 3115
    .end local v4    # "hasProgress":Z
    :cond_4
    const/4 v0, 0x1

    .restart local v0    # "badgeInLine3":Z
    goto :goto_2

    .line 3116
    :cond_5
    iget v6, p0, Landroid/app/Notification$Builder;->mNumber:I

    if-gtz v6, :cond_1

    .line 3117
    move v3, v0

    .local v3, "hasLine3":Z
    goto :goto_3

    .line 3119
    .end local v3    # "hasLine3":Z
    :cond_6
    if-eqz v4, :cond_8

    iget-object v6, p0, Landroid/app/Notification$Builder;->mSubText:Ljava/lang/CharSequence;

    if-nez v6, :cond_8

    .line 3120
    iget v6, p0, Landroid/app/Notification$Builder;->mProgressMax:I

    if-nez v6, :cond_7

    iget-boolean v2, p0, Landroid/app/Notification$Builder;->mProgressIndeterminate:Z

    .local v2, "hasLine2":Z
    goto :goto_4

    .end local v2    # "hasLine2":Z
    :cond_7
    const/4 v2, 0x1

    .local v2, "hasLine2":Z
    goto :goto_4

    .line 3119
    .end local v2    # "hasLine2":Z
    :cond_8
    const/4 v2, 0x0

    .restart local v2    # "hasLine2":Z
    goto :goto_4

    .end local v2    # "hasLine2":Z
    :cond_9
    move v3, v5

    .line 3121
    goto :goto_5
.end method

.method private isLegacy()Z
    .locals 1

    .prologue
    .line 3216
    iget-object v0, p0, Landroid/app/Notification$Builder;->mColorUtil:Lcom/android/internal/util/NotificationColorUtil;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeBigContentView()Landroid/widget/RemoteViews;
    .locals 1

    .prologue
    .line 3183
    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3185
    :cond_0
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBigBaseLayoutResource()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->applyStandardTemplateWithActions(I)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method private makeContentView()Landroid/widget/RemoteViews;
    .locals 1

    .prologue
    .line 3168
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    .line 3169
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContentView:Landroid/widget/RemoteViews;

    return-object v0

    .line 3171
    :cond_0
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBaseLayoutResource()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->applyStandardTemplate(I)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method private makeHeadsUpContentView()Landroid/widget/RemoteViews;
    .locals 1

    .prologue
    .line 3189
    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3191
    :cond_0
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBigBaseLayoutResource()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->applyStandardTemplateWithActions(I)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method private makeTickerView()Landroid/widget/RemoteViews;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3176
    iget-object v0, p0, Landroid/app/Notification$Builder;->mTickerView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    .line 3177
    iget-object v0, p0, Landroid/app/Notification$Builder;->mTickerView:Landroid/widget/RemoteViews;

    return-object v0

    .line 3179
    :cond_0
    return-object v1
.end method

.method private processLargeLegacyIcon(Landroid/graphics/drawable/Icon;Landroid/widget/RemoteViews;)V
    .locals 2
    .param p1, "largeIcon"    # Landroid/graphics/drawable/Icon;
    .param p2, "contentView"    # Landroid/widget/RemoteViews;

    .prologue
    .line 3257
    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroid/app/Notification$Builder;->isLegacy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3258
    iget-object v0, p0, Landroid/app/Notification$Builder;->mColorUtil:Lcom/android/internal/util/NotificationColorUtil;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/content/Context;Landroid/graphics/drawable/Icon;)Z

    move-result v0

    .line 3257
    if-eqz v0, :cond_0

    .line 3259
    invoke-direct {p0, p2}, Landroid/app/Notification$Builder;->applyLargeIconBackground(Landroid/widget/RemoteViews;)V

    .line 3256
    :goto_0
    return-void

    .line 3261
    :cond_0
    invoke-direct {p0, p2}, Landroid/app/Notification$Builder;->removeLargeIconBackground(Landroid/widget/RemoteViews;)V

    goto :goto_0
.end method

.method private processLegacyAction(Landroid/app/Notification$Action;Landroid/widget/RemoteViews;)V
    .locals 4
    .param p1, "action"    # Landroid/app/Notification$Action;
    .param p2, "button"    # Landroid/widget/RemoteViews;

    .prologue
    .line 3220
    invoke-direct {p0}, Landroid/app/Notification$Builder;->isLegacy()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/Notification$Builder;->mColorUtil:Lcom/android/internal/util/NotificationColorUtil;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/content/Context;Landroid/graphics/drawable/Icon;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3222
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    const v1, 0x1060067

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 3223
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    .line 3221
    const v2, 0x102036f

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3, v0, v1}, Landroid/widget/RemoteViews;->setTextViewCompoundDrawablesRelativeColorFilter(IIILandroid/graphics/PorterDuff$Mode;)V

    .line 3219
    :cond_1
    return-void
.end method

.method private processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "charSequence"    # Ljava/lang/CharSequence;

    .prologue
    .line 3228
    invoke-direct {p0}, Landroid/app/Notification$Builder;->isLegacy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3229
    iget-object v0, p0, Landroid/app/Notification$Builder;->mColorUtil:Lcom/android/internal/util/NotificationColorUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/NotificationColorUtil;->invertCharSequenceColors(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 3231
    :cond_0
    return-object p1
.end method

.method private processSmallIconAsLarge(Landroid/graphics/drawable/Icon;Landroid/widget/RemoteViews;)V
    .locals 7
    .param p1, "largeIcon"    # Landroid/graphics/drawable/Icon;
    .param p2, "contentView"    # Landroid/widget/RemoteViews;

    .prologue
    const/4 v3, -0x1

    .line 3239
    invoke-direct {p0}, Landroid/app/Notification$Builder;->isLegacy()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3242
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 3240
    const v1, 0x1020006

    const/4 v2, 0x0

    move-object v0, p2

    move v4, v3

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/widget/RemoteViews;->setDrawableParameters(IZIILandroid/graphics/PorterDuff$Mode;I)V

    .line 3243
    invoke-direct {p0, p2}, Landroid/app/Notification$Builder;->applyLargeIconBackground(Landroid/widget/RemoteViews;)V

    .line 3238
    :cond_0
    :goto_0
    return-void

    .line 3245
    :cond_1
    iget-object v0, p0, Landroid/app/Notification$Builder;->mColorUtil:Lcom/android/internal/util/NotificationColorUtil;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/content/Context;Landroid/graphics/drawable/Icon;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3246
    invoke-direct {p0, p2}, Landroid/app/Notification$Builder;->applyLargeIconBackground(Landroid/widget/RemoteViews;)V

    goto :goto_0
.end method

.method private processSmallRightIcon(Landroid/graphics/drawable/Icon;Landroid/widget/RemoteViews;)V
    .locals 8
    .param p1, "smallIcon"    # Landroid/graphics/drawable/Icon;
    .param p2, "contentView"    # Landroid/widget/RemoteViews;

    .prologue
    const v1, 0x1020040

    const/4 v3, -0x1

    .line 3293
    invoke-direct {p0}, Landroid/app/Notification$Builder;->isLegacy()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3296
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 3294
    const/4 v2, 0x0

    move-object v0, p2

    move v4, v3

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/widget/RemoteViews;->setDrawableParameters(IZIILandroid/graphics/PorterDuff$Mode;I)V

    .line 3298
    :cond_0
    invoke-direct {p0}, Landroid/app/Notification$Builder;->isLegacy()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3299
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 3300
    iget-object v0, p0, Landroid/app/Notification$Builder;->mColorUtil:Lcom/android/internal/util/NotificationColorUtil;

    iget-object v2, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v4

    invoke-virtual {v0, v2, v4}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/content/Context;I)Z

    move-result v7

    .line 3301
    :goto_0
    invoke-direct {p0}, Landroid/app/Notification$Builder;->isLegacy()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v7, :cond_2

    .line 3303
    :cond_1
    const-string/jumbo v0, "setBackgroundResource"

    .line 3304
    const v2, 0x10804ee

    .line 3302
    invoke-virtual {p2, v1, v0, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 3310
    invoke-direct {p0}, Landroid/app/Notification$Builder;->resolveColor()I

    move-result v4

    .line 3311
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 3308
    const/4 v2, 0x1

    move-object v0, p2

    move v6, v3

    .line 3306
    invoke-virtual/range {v0 .. v6}, Landroid/widget/RemoteViews;->setDrawableParameters(IZIILandroid/graphics/PorterDuff$Mode;I)V

    .line 3292
    :cond_2
    return-void

    .line 3298
    :cond_3
    const/4 v7, 0x0

    .local v7, "gray":Z
    goto :goto_0
.end method

.method private rebuild()Landroid/app/Notification;
    .locals 3

    .prologue
    .line 3513
    iget-object v1, p0, Landroid/app/Notification$Builder;->mRebuildNotification:Landroid/app/Notification;

    if-nez v1, :cond_0

    .line 3514
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "rebuild() only valid when in \'rebuild\' mode."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3516
    :cond_0
    invoke-direct {p0}, Landroid/app/Notification$Builder;->hasThreeLines()Z

    move-result v1

    iput-boolean v1, p0, Landroid/app/Notification$Builder;->mHasThreeLines:Z

    .line 3518
    iget-object v1, p0, Landroid/app/Notification$Builder;->mRebuildNotification:Landroid/app/Notification;

    iget-object v0, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 3520
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v1, "android.rebuild.largeIcon"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3521
    iget-object v2, p0, Landroid/app/Notification$Builder;->mRebuildNotification:Landroid/app/Notification;

    const-string/jumbo v1, "android.largeIcon"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iput-object v1, v2, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    .line 3523
    :cond_1
    const-string/jumbo v1, "android.rebuild.largeIcon"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 3525
    const-string/jumbo v1, "android.rebuild.contentView"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3526
    iget-object v1, p0, Landroid/app/Notification$Builder;->mRebuildNotification:Landroid/app/Notification;

    invoke-direct {p0}, Landroid/app/Notification$Builder;->makeContentView()Landroid/widget/RemoteViews;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Landroid/app/Notification$Builder;->setBuilderContentView(Landroid/app/Notification;Landroid/widget/RemoteViews;)V

    .line 3527
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v1, :cond_2

    .line 3528
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    iget-object v2, p0, Landroid/app/Notification$Builder;->mRebuildNotification:Landroid/app/Notification;

    invoke-virtual {v1, v2}, Landroid/app/Notification$Style;->populateContentView(Landroid/app/Notification;)V

    .line 3531
    :cond_2
    const-string/jumbo v1, "android.rebuild.contentView"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 3533
    const-string/jumbo v1, "android.rebuild.bigView"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3534
    iget-object v1, p0, Landroid/app/Notification$Builder;->mRebuildNotification:Landroid/app/Notification;

    invoke-direct {p0}, Landroid/app/Notification$Builder;->makeBigContentView()Landroid/widget/RemoteViews;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Landroid/app/Notification$Builder;->setBuilderBigContentView(Landroid/app/Notification;Landroid/widget/RemoteViews;)V

    .line 3535
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v1, :cond_3

    .line 3536
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    iget-object v2, p0, Landroid/app/Notification$Builder;->mRebuildNotification:Landroid/app/Notification;

    invoke-virtual {v1, v2}, Landroid/app/Notification$Style;->populateBigContentView(Landroid/app/Notification;)V

    .line 3539
    :cond_3
    const-string/jumbo v1, "android.rebuild.bigView"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 3541
    const-string/jumbo v1, "android.rebuild.hudView"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3542
    iget-object v1, p0, Landroid/app/Notification$Builder;->mRebuildNotification:Landroid/app/Notification;

    invoke-direct {p0}, Landroid/app/Notification$Builder;->makeHeadsUpContentView()Landroid/widget/RemoteViews;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Landroid/app/Notification$Builder;->setBuilderHeadsUpContentView(Landroid/app/Notification;Landroid/widget/RemoteViews;)V

    .line 3543
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v1, :cond_4

    .line 3544
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    iget-object v2, p0, Landroid/app/Notification$Builder;->mRebuildNotification:Landroid/app/Notification;

    invoke-virtual {v1, v2}, Landroid/app/Notification$Style;->populateHeadsUpContentView(Landroid/app/Notification;)V

    .line 3547
    :cond_4
    const-string/jumbo v1, "android.rebuild.hudView"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 3549
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/app/Notification$Builder;->mHasThreeLines:Z

    .line 3550
    iget-object v1, p0, Landroid/app/Notification$Builder;->mRebuildNotification:Landroid/app/Notification;

    return-object v1
.end method

.method public static rebuild(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "n"    # Landroid/app/Notification;

    .prologue
    .line 3483
    iget-object v4, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 3484
    .local v4, "extras":Landroid/os/Bundle;
    const-string/jumbo v5, "android.rebuild"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    return-object p1

    .line 3485
    :cond_0
    const-string/jumbo v5, "android.rebuild"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 3489
    const-string/jumbo v5, "android.rebuild.applicationInfo"

    .line 3488
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 3493
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v5, 0x4

    .line 3492
    :try_start_0
    invoke-virtual {p0, v0, v5}, Landroid/content/Context;->createApplicationContext(Landroid/content/pm/ApplicationInfo;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 3499
    .local v2, "builderContext":Landroid/content/Context;
    :goto_0
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, v2, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Landroid/app/Notification;)V

    .line 3500
    .local v1, "b":Landroid/app/Notification$Builder;
    invoke-direct {v1}, Landroid/app/Notification$Builder;->rebuild()Landroid/app/Notification;

    move-result-object v5

    return-object v5

    .line 3494
    .end local v1    # "b":Landroid/app/Notification$Builder;
    .end local v2    # "builderContext":Landroid/content/Context;
    :catch_0
    move-exception v3

    .line 3495
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v5, "Notification"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ApplicationInfo "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " not found"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3496
    move-object v2, p0

    .restart local v2    # "builderContext":Landroid/content/Context;
    goto :goto_0
.end method

.method private removeLargeIconBackground(Landroid/widget/RemoteViews;)V
    .locals 3
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .prologue
    .line 3286
    const-string/jumbo v0, "setBackgroundResource"

    const v1, 0x1020006

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 3285
    return-void
.end method

.method private resetStandardTemplate(Landroid/widget/RemoteViews;)V
    .locals 9
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .prologue
    const/4 v8, 0x0

    const v7, 0x1020040

    const v1, 0x1020006

    const/16 v6, 0x8

    const/4 v2, 0x0

    .line 2952
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->removeLargeIconBackground(Landroid/widget/RemoteViews;)V

    move-object v0, p1

    move v3, v2

    move v4, v2

    move v5, v2

    .line 2953
    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    .line 2954
    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 2955
    const-string/jumbo v0, "setBackgroundResource"

    invoke-virtual {p1, v1, v0, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 2956
    invoke-virtual {p1, v7, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2957
    const-string/jumbo v0, "setBackgroundResource"

    invoke-virtual {p1, v7, v0, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 2958
    invoke-virtual {p1, v7, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 2959
    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 2960
    const v0, 0x1020016

    invoke-virtual {p1, v0, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2961
    const v0, 0x1020075

    invoke-virtual {p1, v0, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2962
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->unshrinkLine3Text(Landroid/widget/RemoteViews;)V

    .line 2963
    const v0, 0x1020015

    invoke-virtual {p1, v0, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2964
    const v0, 0x1020015

    invoke-virtual {p1, v0, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2965
    const v0, 0x1020388

    invoke-virtual {p1, v0, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2966
    const v0, 0x102008c

    invoke-virtual {p1, v0, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2967
    const v0, 0x1020387

    invoke-virtual {p1, v0, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2968
    const v0, 0x102037a

    invoke-virtual {p1, v0, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2969
    const v0, 0x102000d

    invoke-virtual {p1, v0, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2970
    const v0, 0x1020384

    invoke-virtual {p1, v0, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2971
    const v0, 0x102008c

    invoke-virtual {p1, v0, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2951
    return-void
.end method

.method private resetStandardTemplateWithActions(Landroid/widget/RemoteViews;)V
    .locals 3
    .param p1, "big"    # Landroid/widget/RemoteViews;

    .prologue
    const v2, 0x102036e

    const/16 v1, 0x8

    .line 3144
    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3145
    const v0, 0x1020377

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3146
    invoke-virtual {p1, v2}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 3143
    return-void
.end method

.method private resolveColor()I
    .locals 2

    .prologue
    .line 3324
    iget v0, p0, Landroid/app/Notification$Builder;->mColor:I

    if-nez v0, :cond_0

    .line 3325
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    const v1, 0x1060066

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    return v0

    .line 3327
    :cond_0
    iget v0, p0, Landroid/app/Notification$Builder;->mColor:I

    return v0
.end method

.method private restoreFromNotification(Landroid/app/Notification;)V
    .locals 4
    .param p1, "n"    # Landroid/app/Notification;

    .prologue
    .line 3592
    iget-wide v2, p1, Landroid/app/Notification;->when:J

    iput-wide v2, p0, Landroid/app/Notification$Builder;->mWhen:J

    .line 3593
    invoke-static {p1}, Landroid/app/Notification;->-get2(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification$Builder;->mSmallIcon:Landroid/graphics/drawable/Icon;

    .line 3594
    iget v1, p1, Landroid/app/Notification;->iconLevel:I

    iput v1, p0, Landroid/app/Notification$Builder;->mSmallIconLevel:I

    .line 3595
    iget v1, p1, Landroid/app/Notification;->number:I

    iput v1, p0, Landroid/app/Notification$Builder;->mNumber:I

    .line 3597
    iget v1, p1, Landroid/app/Notification;->color:I

    iput v1, p0, Landroid/app/Notification$Builder;->mColor:I

    .line 3599
    iget-object v1, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    iput-object v1, p0, Landroid/app/Notification$Builder;->mContentView:Landroid/widget/RemoteViews;

    .line 3600
    iget-object v1, p1, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    iput-object v1, p0, Landroid/app/Notification$Builder;->mDeleteIntent:Landroid/app/PendingIntent;

    .line 3601
    iget-object v1, p1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    iput-object v1, p0, Landroid/app/Notification$Builder;->mFullScreenIntent:Landroid/app/PendingIntent;

    .line 3602
    iget-object v1, p1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iput-object v1, p0, Landroid/app/Notification$Builder;->mTickerText:Ljava/lang/CharSequence;

    .line 3603
    iget-object v1, p1, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    iput-object v1, p0, Landroid/app/Notification$Builder;->mTickerView:Landroid/widget/RemoteViews;

    .line 3604
    invoke-static {p1}, Landroid/app/Notification;->-get1(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification$Builder;->mLargeIcon:Landroid/graphics/drawable/Icon;

    .line 3605
    iget-object v1, p1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iput-object v1, p0, Landroid/app/Notification$Builder;->mSound:Landroid/net/Uri;

    .line 3606
    iget v1, p1, Landroid/app/Notification;->audioStreamType:I

    iput v1, p0, Landroid/app/Notification$Builder;->mAudioStreamType:I

    .line 3607
    iget-object v1, p1, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    iput-object v1, p0, Landroid/app/Notification$Builder;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 3609
    iget-object v1, p1, Landroid/app/Notification;->vibrate:[J

    iput-object v1, p0, Landroid/app/Notification$Builder;->mVibrate:[J

    .line 3610
    iget v1, p1, Landroid/app/Notification;->ledARGB:I

    iput v1, p0, Landroid/app/Notification$Builder;->mLedArgb:I

    .line 3611
    iget v1, p1, Landroid/app/Notification;->ledOnMS:I

    iput v1, p0, Landroid/app/Notification$Builder;->mLedOnMs:I

    .line 3612
    iget v1, p1, Landroid/app/Notification;->ledOffMS:I

    iput v1, p0, Landroid/app/Notification$Builder;->mLedOffMs:I

    .line 3613
    iget v1, p1, Landroid/app/Notification;->defaults:I

    iput v1, p0, Landroid/app/Notification$Builder;->mDefaults:I

    .line 3614
    iget v1, p1, Landroid/app/Notification;->flags:I

    iput v1, p0, Landroid/app/Notification$Builder;->mFlags:I

    .line 3616
    iget-object v1, p1, Landroid/app/Notification;->category:Ljava/lang/String;

    iput-object v1, p0, Landroid/app/Notification$Builder;->mCategory:Ljava/lang/String;

    .line 3617
    invoke-static {p1}, Landroid/app/Notification;->-get0(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification$Builder;->mGroupKey:Ljava/lang/String;

    .line 3618
    invoke-static {p1}, Landroid/app/Notification;->-get3(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification$Builder;->mSortKey:Ljava/lang/String;

    .line 3619
    iget v1, p1, Landroid/app/Notification;->priority:I

    iput v1, p0, Landroid/app/Notification$Builder;->mPriority:I

    .line 3620
    iget-object v1, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 3621
    iget-object v1, p1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v1, :cond_0

    .line 3622
    iget-object v1, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    iget-object v2, p1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 3624
    :cond_0
    iget v1, p1, Landroid/app/Notification;->visibility:I

    iput v1, p0, Landroid/app/Notification$Builder;->mVisibility:I

    .line 3626
    iget-object v1, p1, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    iput-object v1, p0, Landroid/app/Notification$Builder;->mPublicVersion:Landroid/app/Notification;

    .line 3629
    iget-object v0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 3630
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v1, "android.originatingUserId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/app/Notification$Builder;->mOriginatingUserId:I

    .line 3631
    const-string/jumbo v1, "android.title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification$Builder;->mContentTitle:Ljava/lang/CharSequence;

    .line 3632
    const-string/jumbo v1, "android.text"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;

    .line 3633
    const-string/jumbo v1, "android.subText"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification$Builder;->mSubText:Ljava/lang/CharSequence;

    .line 3634
    const-string/jumbo v1, "android.infoText"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification$Builder;->mContentInfo:Ljava/lang/CharSequence;

    .line 3635
    const-string/jumbo v1, "android.progress"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/app/Notification$Builder;->mProgress:I

    .line 3636
    const-string/jumbo v1, "android.progressMax"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/app/Notification$Builder;->mProgressMax:I

    .line 3637
    const-string/jumbo v1, "android.progressIndeterminate"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/app/Notification$Builder;->mProgressIndeterminate:Z

    .line 3638
    const-string/jumbo v1, "android.showChronometer"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/app/Notification$Builder;->mUseChronometer:Z

    .line 3639
    const-string/jumbo v1, "android.showWhen"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/app/Notification$Builder;->mShowWhen:Z

    .line 3640
    const-string/jumbo v1, "android.largeIcon"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3641
    const-string/jumbo v1, "android.largeIcon"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Icon;

    iput-object v1, p0, Landroid/app/Notification$Builder;->mLargeIcon:Landroid/graphics/drawable/Icon;

    .line 3643
    :cond_1
    const-string/jumbo v1, "android.people"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3644
    iget-object v1, p0, Landroid/app/Notification$Builder;->mPeople:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 3645
    iget-object v1, p0, Landroid/app/Notification$Builder;->mPeople:Ljava/util/ArrayList;

    const-string/jumbo v2, "android.people"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 3589
    :cond_2
    return-void
.end method

.method private sanitizeColor()I
    .locals 2

    .prologue
    .line 3317
    iget v0, p0, Landroid/app/Notification$Builder;->mColor:I

    if-eqz v0, :cond_0

    .line 3318
    iget v0, p0, Landroid/app/Notification$Builder;->mColor:I

    const/high16 v1, -0x1000000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/app/Notification$Builder;->mColor:I

    .line 3320
    :cond_0
    iget v0, p0, Landroid/app/Notification$Builder;->mColor:I

    return v0
.end method

.method private setBuilderBigContentView(Landroid/app/Notification;Landroid/widget/RemoteViews;)V
    .locals 3
    .param p1, "n"    # Landroid/app/Notification;
    .param p2, "bigContentView"    # Landroid/widget/RemoteViews;

    .prologue
    .line 3573
    iput-object p2, p1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 3574
    instance-of v0, p2, Landroid/app/Notification$BuilderRemoteViews;

    if-eqz v0, :cond_0

    .line 3575
    iget-object v0, p0, Landroid/app/Notification$Builder;->mRebuildBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "android.rebuild.bigViewActionCount"

    .line 3576
    invoke-virtual {p2}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    move-result v2

    .line 3575
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3572
    :cond_0
    return-void
.end method

.method private setBuilderContentView(Landroid/app/Notification;Landroid/widget/RemoteViews;)V
    .locals 3
    .param p1, "n"    # Landroid/app/Notification;
    .param p2, "contentView"    # Landroid/widget/RemoteViews;

    .prologue
    .line 3565
    iput-object p2, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 3566
    instance-of v0, p2, Landroid/app/Notification$BuilderRemoteViews;

    if-eqz v0, :cond_0

    .line 3567
    iget-object v0, p0, Landroid/app/Notification$Builder;->mRebuildBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "android.rebuild.contentViewActionCount"

    .line 3568
    invoke-virtual {p2}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    move-result v2

    .line 3567
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3564
    :cond_0
    return-void
.end method

.method private setBuilderHeadsUpContentView(Landroid/app/Notification;Landroid/widget/RemoteViews;)V
    .locals 3
    .param p1, "n"    # Landroid/app/Notification;
    .param p2, "headsUpContentView"    # Landroid/widget/RemoteViews;

    .prologue
    .line 3582
    iput-object p2, p1, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 3583
    instance-of v0, p2, Landroid/app/Notification$BuilderRemoteViews;

    if-eqz v0, :cond_0

    .line 3584
    iget-object v0, p0, Landroid/app/Notification$Builder;->mRebuildBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "android.rebuild.hudViewActionCount"

    .line 3585
    invoke-virtual {p2}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    move-result v2

    .line 3584
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3581
    :cond_0
    return-void
.end method

.method private showsTimeOrChronometer()Z
    .locals 4

    .prologue
    .line 3101
    iget-wide v0, p0, Landroid/app/Notification$Builder;->mWhen:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/app/Notification$Builder;->mShowWhen:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shrinkLine3Text(Landroid/widget/RemoteViews;)V
    .locals 3
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .prologue
    .line 2940
    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2941
    const v2, 0x105005c

    .line 2940
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v0, v1

    .line 2942
    .local v0, "subTextSize":F
    const v1, 0x1020075

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    .line 2939
    return-void
.end method

.method public static stripForDelivery(Landroid/app/Notification;)V
    .locals 8
    .param p0, "n"    # Landroid/app/Notification;

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3429
    iget-object v3, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v4, "android.template"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3432
    .local v2, "templateClass":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 3433
    invoke-static {v2}, Landroid/app/Notification$Builder;->getNotificationStyleClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_6

    const/4 v1, 0x1

    .line 3435
    .local v1, "stripViews":Z
    :goto_0
    const/4 v0, 0x0

    .line 3437
    .local v0, "isStripped":Z
    iget-object v3, p0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v4, "android.largeIcon"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3440
    iput-object v5, p0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    .line 3441
    iget-object v3, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v4, "android.rebuild.largeIcon"

    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3442
    const/4 v0, 0x1

    .line 3446
    :cond_0
    if-eqz v1, :cond_1

    .line 3447
    iget-object v3, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    instance-of v3, v3, Landroid/app/Notification$BuilderRemoteViews;

    .line 3446
    if-eqz v3, :cond_1

    .line 3448
    iget-object v3, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v4, "android.rebuild.contentViewActionCount"

    invoke-virtual {v3, v4, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 3449
    iget-object v4, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v4}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    move-result v4

    .line 3448
    if-ne v3, v4, :cond_1

    .line 3450
    iput-object v5, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 3451
    iget-object v3, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v4, "android.rebuild.contentView"

    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3452
    iget-object v3, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v4, "android.rebuild.contentViewActionCount"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 3453
    const/4 v0, 0x1

    .line 3455
    :cond_1
    if-eqz v1, :cond_2

    .line 3456
    iget-object v3, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    instance-of v3, v3, Landroid/app/Notification$BuilderRemoteViews;

    .line 3455
    if-eqz v3, :cond_2

    .line 3457
    iget-object v3, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v4, "android.rebuild.bigViewActionCount"

    invoke-virtual {v3, v4, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 3458
    iget-object v4, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v4}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    move-result v4

    .line 3457
    if-ne v3, v4, :cond_2

    .line 3459
    iput-object v5, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 3460
    iget-object v3, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v4, "android.rebuild.bigView"

    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3461
    iget-object v3, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v4, "android.rebuild.bigViewActionCount"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 3462
    const/4 v0, 0x1

    .line 3464
    :cond_2
    if-eqz v1, :cond_3

    .line 3465
    iget-object v3, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    instance-of v3, v3, Landroid/app/Notification$BuilderRemoteViews;

    .line 3464
    if-eqz v3, :cond_3

    .line 3466
    iget-object v3, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v4, "android.rebuild.hudViewActionCount"

    invoke-virtual {v3, v4, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 3467
    iget-object v4, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v4}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    move-result v4

    .line 3466
    if-ne v3, v4, :cond_3

    .line 3468
    iput-object v5, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 3469
    iget-object v3, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v4, "android.rebuild.hudView"

    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3470
    iget-object v3, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v4, "android.rebuild.hudViewActionCount"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 3471
    const/4 v0, 0x1

    .line 3474
    :cond_3
    if-eqz v0, :cond_4

    .line 3475
    iget-object v3, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v4, "android.rebuild"

    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3424
    :cond_4
    return-void

    .line 3432
    .end local v0    # "isStripped":Z
    .end local v1    # "stripViews":Z
    :cond_5
    const/4 v1, 0x1

    .restart local v1    # "stripViews":Z
    goto/16 :goto_0

    .line 3433
    .end local v1    # "stripViews":Z
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "stripViews":Z
    goto/16 :goto_0
.end method

.method private unshrinkLine3Text(Landroid/widget/RemoteViews;)V
    .locals 3
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .prologue
    .line 2946
    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2947
    const v2, 0x105005a

    .line 2946
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v0, v1

    .line 2948
    .local v0, "regularTextSize":F
    const v1, 0x1020075

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    .line 2945
    return-void
.end method


# virtual methods
.method public addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
    .locals 3
    .param p1, "icon"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "intent"    # Landroid/app/PendingIntent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2802
    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/Notification$Action;

    invoke-static {p2}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, p1, v2, p3}, Landroid/app/Notification$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2803
    return-object p0
.end method

.method public addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "action"    # Landroid/app/Notification$Action;

    .prologue
    .line 2822
    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2823
    return-object p0
.end method

.method public addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 2737
    if-eqz p1, :cond_0

    .line 2738
    iget-object v0, p0, Landroid/app/Notification$Builder;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_1

    .line 2739
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/app/Notification$Builder;->mExtras:Landroid/os/Bundle;

    .line 2744
    :cond_0
    :goto_0
    return-object p0

    .line 2741
    :cond_1
    iget-object v0, p0, Landroid/app/Notification$Builder;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public addPerson(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 2680
    iget-object v0, p0, Landroid/app/Notification$Builder;->mPeople:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2681
    return-object p0
.end method

.method public build()Landroid/app/Notification;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3662
    iget-object v1, p0, Landroid/app/Notification$Builder;->mSmallIcon:Landroid/graphics/drawable/Icon;

    if-eqz v1, :cond_0

    .line 3663
    iget-object v1, p0, Landroid/app/Notification$Builder;->mSmallIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v1}, Landroid/graphics/drawable/Icon;->convertToAshmem()V

    .line 3665
    :cond_0
    iget-object v1, p0, Landroid/app/Notification$Builder;->mLargeIcon:Landroid/graphics/drawable/Icon;

    if-eqz v1, :cond_1

    .line 3666
    iget-object v1, p0, Landroid/app/Notification$Builder;->mLargeIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v1}, Landroid/graphics/drawable/Icon;->convertToAshmem()V

    .line 3668
    :cond_1
    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    iput v1, p0, Landroid/app/Notification$Builder;->mOriginatingUserId:I

    .line 3669
    invoke-direct {p0}, Landroid/app/Notification$Builder;->hasThreeLines()Z

    move-result v1

    iput-boolean v1, p0, Landroid/app/Notification$Builder;->mHasThreeLines:Z

    .line 3671
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->buildUnstyled()Landroid/app/Notification;

    move-result-object v0

    .line 3673
    .local v0, "n":Landroid/app/Notification;
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v1, :cond_2

    .line 3674
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    invoke-virtual {v1}, Landroid/app/Notification$Style;->purgeResources()V

    .line 3675
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    invoke-virtual {v1, v0}, Landroid/app/Notification$Style;->buildStyled(Landroid/app/Notification;)Landroid/app/Notification;

    move-result-object v0

    .line 3678
    :cond_2
    iget-object v1, p0, Landroid/app/Notification$Builder;->mExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_3

    .line 3679
    iget-object v1, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    iget-object v2, p0, Landroid/app/Notification$Builder;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 3682
    :cond_3
    iget-object v1, p0, Landroid/app/Notification$Builder;->mRebuildBundle:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 3683
    iget-object v1, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    iget-object v2, p0, Landroid/app/Notification$Builder;->mRebuildBundle:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 3684
    iget-object v1, p0, Landroid/app/Notification$Builder;->mRebuildBundle:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->clear()V

    .line 3687
    :cond_4
    iget-object v1, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {p0, v1}, Landroid/app/Notification$Builder;->populateExtras(Landroid/os/Bundle;)V

    .line 3688
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v1, :cond_5

    .line 3689
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    iget-object v2, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/app/Notification$Style;->addExtras(Landroid/os/Bundle;)V

    .line 3692
    :cond_5
    iput-boolean v3, p0, Landroid/app/Notification$Builder;->mHasThreeLines:Z

    .line 3693
    return-object v0
.end method

.method public buildInto(Landroid/app/Notification;)Landroid/app/Notification;
    .locals 2
    .param p1, "n"    # Landroid/app/Notification;

    .prologue
    .line 3702
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/app/Notification;->cloneInto(Landroid/app/Notification;Z)V

    .line 3703
    return-object p1
.end method

.method public buildUnstyled()Landroid/app/Notification;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 3335
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    .line 3336
    .local v0, "n":Landroid/app/Notification;
    iget-wide v2, p0, Landroid/app/Notification$Builder;->mWhen:J

    iput-wide v2, v0, Landroid/app/Notification;->when:J

    .line 3337
    iget-object v1, p0, Landroid/app/Notification$Builder;->mSmallIcon:Landroid/graphics/drawable/Icon;

    invoke-static {v0, v1}, Landroid/app/Notification;->-set2(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;

    .line 3338
    iget-object v1, p0, Landroid/app/Notification$Builder;->mSmallIcon:Landroid/graphics/drawable/Icon;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/Notification$Builder;->mSmallIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 3339
    iget-object v1, p0, Landroid/app/Notification$Builder;->mSmallIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v1}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v1

    iput v1, v0, Landroid/app/Notification;->icon:I

    .line 3341
    :cond_0
    iget v1, p0, Landroid/app/Notification$Builder;->mSmallIconLevel:I

    iput v1, v0, Landroid/app/Notification;->iconLevel:I

    .line 3342
    iget v1, p0, Landroid/app/Notification$Builder;->mNumber:I

    iput v1, v0, Landroid/app/Notification;->number:I

    .line 3344
    invoke-direct {p0}, Landroid/app/Notification$Builder;->sanitizeColor()I

    move-result v1

    iput v1, v0, Landroid/app/Notification;->color:I

    .line 3346
    invoke-direct {p0}, Landroid/app/Notification$Builder;->makeContentView()Landroid/widget/RemoteViews;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/app/Notification$Builder;->setBuilderContentView(Landroid/app/Notification;Landroid/widget/RemoteViews;)V

    .line 3347
    iget-object v1, p0, Landroid/app/Notification$Builder;->mContentIntent:Landroid/app/PendingIntent;

    iput-object v1, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 3348
    iget-object v1, p0, Landroid/app/Notification$Builder;->mDeleteIntent:Landroid/app/PendingIntent;

    iput-object v1, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 3349
    iget-object v1, p0, Landroid/app/Notification$Builder;->mFullScreenIntent:Landroid/app/PendingIntent;

    iput-object v1, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 3350
    iget-object v1, p0, Landroid/app/Notification$Builder;->mTickerText:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 3351
    invoke-direct {p0}, Landroid/app/Notification$Builder;->makeTickerView()Landroid/widget/RemoteViews;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    .line 3352
    iget-object v1, p0, Landroid/app/Notification$Builder;->mLargeIcon:Landroid/graphics/drawable/Icon;

    invoke-static {v0, v1}, Landroid/app/Notification;->-set1(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;

    .line 3353
    iget-object v1, p0, Landroid/app/Notification$Builder;->mLargeIcon:Landroid/graphics/drawable/Icon;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/app/Notification$Builder;->mLargeIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 3354
    iget-object v1, p0, Landroid/app/Notification$Builder;->mLargeIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v1}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    .line 3356
    :cond_1
    iget-object v1, p0, Landroid/app/Notification$Builder;->mSound:Landroid/net/Uri;

    iput-object v1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 3357
    iget v1, p0, Landroid/app/Notification$Builder;->mAudioStreamType:I

    iput v1, v0, Landroid/app/Notification;->audioStreamType:I

    .line 3358
    iget-object v1, p0, Landroid/app/Notification$Builder;->mAudioAttributes:Landroid/media/AudioAttributes;

    iput-object v1, v0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 3359
    iget-object v1, p0, Landroid/app/Notification$Builder;->mVibrate:[J

    iput-object v1, v0, Landroid/app/Notification;->vibrate:[J

    .line 3360
    iget v1, p0, Landroid/app/Notification$Builder;->mLedArgb:I

    iput v1, v0, Landroid/app/Notification;->ledARGB:I

    .line 3361
    iget v1, p0, Landroid/app/Notification$Builder;->mLedOnMs:I

    iput v1, v0, Landroid/app/Notification;->ledOnMS:I

    .line 3362
    iget v1, p0, Landroid/app/Notification$Builder;->mLedOffMs:I

    iput v1, v0, Landroid/app/Notification;->ledOffMS:I

    .line 3363
    iget v1, p0, Landroid/app/Notification$Builder;->mDefaults:I

    iput v1, v0, Landroid/app/Notification;->defaults:I

    .line 3364
    iget v1, p0, Landroid/app/Notification$Builder;->mFlags:I

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 3365
    invoke-direct {p0}, Landroid/app/Notification$Builder;->makeBigContentView()Landroid/widget/RemoteViews;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/app/Notification$Builder;->setBuilderBigContentView(Landroid/app/Notification;Landroid/widget/RemoteViews;)V

    .line 3366
    invoke-direct {p0}, Landroid/app/Notification$Builder;->makeHeadsUpContentView()Landroid/widget/RemoteViews;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/app/Notification$Builder;->setBuilderHeadsUpContentView(Landroid/app/Notification;Landroid/widget/RemoteViews;)V

    .line 3367
    iget v1, p0, Landroid/app/Notification$Builder;->mLedOnMs:I

    if-nez v1, :cond_2

    iget v1, p0, Landroid/app/Notification$Builder;->mLedOffMs:I

    if-eqz v1, :cond_3

    .line 3368
    :cond_2
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 3370
    :cond_3
    iget v1, p0, Landroid/app/Notification$Builder;->mDefaults:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_4

    .line 3371
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 3373
    :cond_4
    iget-object v1, p0, Landroid/app/Notification$Builder;->mCategory:Ljava/lang/String;

    iput-object v1, v0, Landroid/app/Notification;->category:Ljava/lang/String;

    .line 3374
    iget-object v1, p0, Landroid/app/Notification$Builder;->mGroupKey:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/app/Notification;->-set0(Landroid/app/Notification;Ljava/lang/String;)Ljava/lang/String;

    .line 3375
    iget-object v1, p0, Landroid/app/Notification$Builder;->mSortKey:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/app/Notification;->-set3(Landroid/app/Notification;Ljava/lang/String;)Ljava/lang/String;

    .line 3376
    iget v1, p0, Landroid/app/Notification$Builder;->mPriority:I

    iput v1, v0, Landroid/app/Notification;->priority:I

    .line 3377
    iget-object v1, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 3378
    iget-object v1, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/app/Notification$Action;

    iput-object v1, v0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 3379
    iget-object v1, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    iget-object v2, v0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 3381
    :cond_5
    iget v1, p0, Landroid/app/Notification$Builder;->mVisibility:I

    iput v1, v0, Landroid/app/Notification;->visibility:I

    .line 3383
    iget-object v1, p0, Landroid/app/Notification$Builder;->mPublicVersion:Landroid/app/Notification;

    if-eqz v1, :cond_6

    .line 3384
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    iput-object v1, v0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    .line 3385
    iget-object v1, p0, Landroid/app/Notification$Builder;->mPublicVersion:Landroid/app/Notification;

    iget-object v2, v0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    invoke-virtual {v1, v2, v4}, Landroid/app/Notification;->cloneInto(Landroid/app/Notification;Z)V

    .line 3388
    :cond_6
    return-object v0
.end method

.method public extend(Landroid/app/Notification$Extender;)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "extender"    # Landroid/app/Notification$Extender;

    .prologue
    .line 2870
    invoke-interface {p1, p0}, Landroid/app/Notification$Extender;->extend(Landroid/app/Notification$Builder;)Landroid/app/Notification$Builder;

    .line 2871
    return-object p0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 2775
    iget-object v0, p0, Landroid/app/Notification$Builder;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 2776
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/app/Notification$Builder;->mExtras:Landroid/os/Bundle;

    .line 2778
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getNotification()Landroid/app/Notification;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3654
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public populateExtras(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 3398
    const-string/jumbo v0, "android.originatingUserId"

    iget v1, p0, Landroid/app/Notification$Builder;->mOriginatingUserId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3399
    const-string/jumbo v0, "android.rebuild.applicationInfo"

    .line 3400
    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 3399
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3401
    const-string/jumbo v0, "android.title"

    iget-object v1, p0, Landroid/app/Notification$Builder;->mContentTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 3402
    const-string/jumbo v0, "android.text"

    iget-object v1, p0, Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 3403
    const-string/jumbo v0, "android.subText"

    iget-object v1, p0, Landroid/app/Notification$Builder;->mSubText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 3404
    const-string/jumbo v0, "android.infoText"

    iget-object v1, p0, Landroid/app/Notification$Builder;->mContentInfo:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 3405
    const-string/jumbo v0, "android.icon"

    iget-object v1, p0, Landroid/app/Notification$Builder;->mSmallIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3406
    const-string/jumbo v0, "android.progress"

    iget v1, p0, Landroid/app/Notification$Builder;->mProgress:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3407
    const-string/jumbo v0, "android.progressMax"

    iget v1, p0, Landroid/app/Notification$Builder;->mProgressMax:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3408
    const-string/jumbo v0, "android.progressIndeterminate"

    iget-boolean v1, p0, Landroid/app/Notification$Builder;->mProgressIndeterminate:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3409
    const-string/jumbo v0, "android.showChronometer"

    iget-boolean v1, p0, Landroid/app/Notification$Builder;->mUseChronometer:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3410
    const-string/jumbo v0, "android.showWhen"

    iget-boolean v1, p0, Landroid/app/Notification$Builder;->mShowWhen:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3411
    iget-object v0, p0, Landroid/app/Notification$Builder;->mLargeIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_0

    .line 3412
    const-string/jumbo v0, "android.largeIcon"

    iget-object v1, p0, Landroid/app/Notification$Builder;->mLargeIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3414
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mPeople:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3415
    const-string/jumbo v1, "android.people"

    iget-object v0, p0, Landroid/app/Notification$Builder;->mPeople:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/app/Notification$Builder;->mPeople:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 3396
    :cond_1
    return-void
.end method

.method public setAutoCancel(Z)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "autoCancel"    # Z

    .prologue
    .line 2608
    const/16 v0, 0x10

    invoke-virtual {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)V

    .line 2609
    return-object p0
.end method

.method public setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 2653
    iput-object p1, p0, Landroid/app/Notification$Builder;->mCategory:Ljava/lang/String;

    .line 2654
    return-object p0
.end method

.method public setColor(I)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "argb"    # I

    .prologue
    .line 2893
    iput p1, p0, Landroid/app/Notification$Builder;->mColor:I

    .line 2894
    return-object p0
.end method

.method public setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "views"    # Landroid/widget/RemoteViews;

    .prologue
    .line 2381
    iput-object p1, p0, Landroid/app/Notification$Builder;->mContentView:Landroid/widget/RemoteViews;

    .line 2382
    return-object p0
.end method

.method public setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "info"    # Ljava/lang/CharSequence;

    .prologue
    .line 2359
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$Builder;->mContentInfo:Ljava/lang/CharSequence;

    .line 2360
    return-object p0
.end method

.method public setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 2397
    iput-object p1, p0, Landroid/app/Notification$Builder;->mContentIntent:Landroid/app/PendingIntent;

    .line 2398
    return-object p0
.end method

.method public setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 2328
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;

    .line 2329
    return-object p0
.end method

.method public setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 2320
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$Builder;->mContentTitle:Ljava/lang/CharSequence;

    .line 2321
    return-object p0
.end method

.method public setDefaults(I)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "defaults"    # I

    .prologue
    .line 2633
    iput p1, p0, Landroid/app/Notification$Builder;->mDefaults:I

    .line 2634
    return-object p0
.end method

.method public setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 2407
    iput-object p1, p0, Landroid/app/Notification$Builder;->mDeleteIntent:Landroid/app/PendingIntent;

    .line 2408
    return-object p0
.end method

.method public setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 2760
    iput-object p1, p0, Landroid/app/Notification$Builder;->mExtras:Landroid/os/Bundle;

    .line 2761
    return-object p0
.end method

.method public setFlag(IZ)V
    .locals 2
    .param p1, "mask"    # I
    .param p2, "value"    # Z

    .prologue
    .line 2878
    if-eqz p2, :cond_0

    .line 2879
    iget v0, p0, Landroid/app/Notification$Builder;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/app/Notification$Builder;->mFlags:I

    .line 2877
    :goto_0
    return-void

    .line 2881
    :cond_0
    iget v0, p0, Landroid/app/Notification$Builder;->mFlags:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/app/Notification$Builder;->mFlags:I

    goto :goto_0
.end method

.method public setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "highPriority"    # Z

    .prologue
    .line 2432
    iput-object p1, p0, Landroid/app/Notification$Builder;->mFullScreenIntent:Landroid/app/PendingIntent;

    .line 2433
    const/16 v0, 0x80

    invoke-virtual {p0, v0, p2}, Landroid/app/Notification$Builder;->setFlag(IZ)V

    .line 2434
    return-object p0
.end method

.method public setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "groupKey"    # Ljava/lang/String;

    .prologue
    .line 2696
    iput-object p1, p0, Landroid/app/Notification$Builder;->mGroupKey:Ljava/lang/String;

    .line 2697
    return-object p0
.end method

.method public setGroupSummary(Z)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "isGroupSummary"    # Z

    .prologue
    .line 2708
    const/16 v0, 0x200

    invoke-virtual {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)V

    .line 2709
    return-object p0
.end method

.method public setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v0, 0x0

    .line 2466
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    .prologue
    .line 2477
    iput-object p1, p0, Landroid/app/Notification$Builder;->mLargeIcon:Landroid/graphics/drawable/Icon;

    .line 2478
    return-object p0
.end method

.method public setLights(III)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "argb"    # I
    .param p2, "onMs"    # I
    .param p3, "offMs"    # I

    .prologue
    .line 2563
    iput p1, p0, Landroid/app/Notification$Builder;->mLedArgb:I

    .line 2564
    iput p2, p0, Landroid/app/Notification$Builder;->mLedOnMs:I

    .line 2565
    iput p3, p0, Landroid/app/Notification$Builder;->mLedOffMs:I

    .line 2566
    return-object p0
.end method

.method public setLocalOnly(Z)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "localOnly"    # Z

    .prologue
    .line 2619
    const/16 v0, 0x100

    invoke-virtual {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)V

    .line 2620
    return-object p0
.end method

.method public setNumber(I)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "number"    # I

    .prologue
    .line 2348
    iput p1, p0, Landroid/app/Notification$Builder;->mNumber:I

    .line 2349
    return-object p0
.end method

.method public setOngoing(Z)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "ongoing"    # Z

    .prologue
    .line 2586
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)V

    .line 2587
    return-object p0
.end method

.method public setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "onlyAlertOnce"    # Z

    .prologue
    .line 2597
    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)V

    .line 2598
    return-object p0
.end method

.method public setPriority(I)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "pri"    # I

    .prologue
    .line 2643
    iput p1, p0, Landroid/app/Notification$Builder;->mPriority:I

    .line 2644
    return-object p0
.end method

.method public setProgress(IIZ)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "max"    # I
    .param p2, "progress"    # I
    .param p3, "indeterminate"    # Z

    .prologue
    .line 2369
    iput p1, p0, Landroid/app/Notification$Builder;->mProgressMax:I

    .line 2370
    iput p2, p0, Landroid/app/Notification$Builder;->mProgress:I

    .line 2371
    iput-boolean p3, p0, Landroid/app/Notification$Builder;->mProgressIndeterminate:Z

    .line 2372
    return-object p0
.end method

.method public setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "n"    # Landroid/app/Notification;

    .prologue
    .line 2861
    iput-object p1, p0, Landroid/app/Notification$Builder;->mPublicVersion:Landroid/app/Notification;

    .line 2862
    return-object p0
.end method

.method public setShowWhen(Z)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 2247
    iput-boolean p1, p0, Landroid/app/Notification$Builder;->mShowWhen:Z

    .line 2248
    return-object p0
.end method

.method public setSmallIcon(I)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "icon"    # I

    .prologue
    .line 2282
    if-eqz p1, :cond_0

    .line 2283
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    .line 2282
    :goto_0
    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    move-result-object v0

    return-object v0

    .line 2284
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSmallIcon(II)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "icon"    # I
    .param p2, "level"    # I

    .prologue
    .line 2299
    iput p2, p0, Landroid/app/Notification$Builder;->mSmallIconLevel:I

    .line 2300
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    .prologue
    .line 2312
    iput-object p1, p0, Landroid/app/Notification$Builder;->mSmallIcon:Landroid/graphics/drawable/Icon;

    .line 2313
    return-object p0
.end method

.method public setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "sortKey"    # Ljava/lang/String;

    .prologue
    .line 2725
    iput-object p1, p0, Landroid/app/Notification$Builder;->mSortKey:Ljava/lang/String;

    .line 2726
    return-object p0
.end method

.method public setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "sound"    # Landroid/net/Uri;

    .prologue
    .line 2494
    iput-object p1, p0, Landroid/app/Notification$Builder;->mSound:Landroid/net/Uri;

    .line 2495
    sget-object v0, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    iput-object v0, p0, Landroid/app/Notification$Builder;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 2496
    return-object p0
.end method

.method public setSound(Landroid/net/Uri;I)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "sound"    # Landroid/net/Uri;
    .param p2, "streamType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2512
    iput-object p1, p0, Landroid/app/Notification$Builder;->mSound:Landroid/net/Uri;

    .line 2513
    iput p2, p0, Landroid/app/Notification$Builder;->mAudioStreamType:I

    .line 2514
    return-object p0
.end method

.method public setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "sound"    # Landroid/net/Uri;
    .param p2, "audioAttributes"    # Landroid/media/AudioAttributes;

    .prologue
    .line 2528
    iput-object p1, p0, Landroid/app/Notification$Builder;->mSound:Landroid/net/Uri;

    .line 2529
    iput-object p2, p0, Landroid/app/Notification$Builder;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 2530
    return-object p0
.end method

.method public setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "style"    # Landroid/app/Notification$Style;

    .prologue
    .line 2832
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eq v0, p1, :cond_0

    .line 2833
    iput-object p1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    .line 2834
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v0, :cond_0

    .line 2835
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    invoke-virtual {v0, p0}, Landroid/app/Notification$Style;->setBuilder(Landroid/app/Notification$Builder;)V

    .line 2838
    :cond_0
    return-object p0
.end method

.method public setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 2338
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$Builder;->mSubText:Ljava/lang/CharSequence;

    .line 2339
    return-object p0
.end method

.method public setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "tickerText"    # Ljava/lang/CharSequence;

    .prologue
    .line 2443
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$Builder;->mTickerText:Ljava/lang/CharSequence;

    .line 2444
    return-object p0
.end method

.method public setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "tickerText"    # Ljava/lang/CharSequence;
    .param p2, "views"    # Landroid/widget/RemoteViews;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2453
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$Builder;->mTickerText:Ljava/lang/CharSequence;

    .line 2454
    iput-object p2, p0, Landroid/app/Notification$Builder;->mTickerView:Landroid/widget/RemoteViews;

    .line 2455
    return-object p0
.end method

.method public setUsesChronometer(Z)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 2263
    iput-boolean p1, p0, Landroid/app/Notification$Builder;->mUseChronometer:Z

    .line 2264
    return-object p0
.end method

.method public setVibrate([J)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "pattern"    # [J

    .prologue
    .line 2546
    iput-object p1, p0, Landroid/app/Notification$Builder;->mVibrate:[J

    .line 2547
    return-object p0
.end method

.method public setVisibility(I)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    .line 2850
    iput p1, p0, Landroid/app/Notification$Builder;->mVisibility:I

    .line 2851
    return-object p0
.end method

.method public setWhen(J)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "when"    # J

    .prologue
    .line 2238
    iput-wide p1, p0, Landroid/app/Notification$Builder;->mWhen:J

    .line 2239
    return-object p0
.end method
