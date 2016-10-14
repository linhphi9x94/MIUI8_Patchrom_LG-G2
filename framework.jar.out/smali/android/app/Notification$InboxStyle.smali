.class public Landroid/app/Notification$InboxStyle;
.super Landroid/app/Notification$Style;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InboxStyle"
.end annotation


# instance fields
.field private mTexts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 4222
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    .line 4220
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    .line 4222
    return-void
.end method

.method public constructor <init>(Landroid/app/Notification$Builder;)V
    .locals 2
    .param p1, "builder"    # Landroid/app/Notification$Builder;

    .prologue
    .line 4225
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    .line 4220
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    .line 4226
    invoke-virtual {p0, p1}, Landroid/app/Notification$InboxStyle;->setBuilder(Landroid/app/Notification$Builder;)V

    .line 4225
    return-void
.end method

.method private makeBigContentView()Landroid/widget/RemoteViews;
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 4281
    iget-object v8, p0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v8}, Landroid/app/Notification$Builder;->-get1(Landroid/app/Notification$Builder;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 4282
    .local v3, "oldBuilderContentText":Ljava/lang/CharSequence;
    iget-object v8, p0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v8, v11}, Landroid/app/Notification$Builder;->-set0(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 4284
    iget-object v8, p0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v8}, Landroid/app/Notification$Builder;->-wrap6(Landroid/app/Notification$Builder;)I

    move-result v8

    invoke-virtual {p0, v8}, Landroid/app/Notification$InboxStyle;->getStandardView(I)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 4286
    .local v0, "contentView":Landroid/widget/RemoteViews;
    iget-object v8, p0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v8, v3}, Landroid/app/Notification$Builder;->-set0(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 4288
    const v8, 0x1020015

    invoke-virtual {v0, v8, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4290
    const/4 v8, 0x7

    new-array v5, v8, [I

    .local v5, "rowIds":[I
    fill-array-data v5, :array_0

    .line 4294
    array-length v11, v5

    move v8, v9

    :goto_0
    if-ge v8, v11, :cond_0

    aget v4, v5, v8

    .line 4295
    .local v4, "rowId":I
    invoke-virtual {v0, v4, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4294
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 4299
    .end local v4    # "rowId":I
    :cond_0
    iget-object v8, p0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v8}, Landroid/app/Notification$Builder;->-get3(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->fontScale:F

    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v8, v8, v11

    if-lez v8, :cond_2

    const/4 v2, 0x1

    .line 4300
    .local v2, "largeText":Z
    :goto_1
    iget-object v8, p0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v8}, Landroid/app/Notification$Builder;->-get3(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 4301
    const v11, 0x105005c

    .line 4300
    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    int-to-float v7, v8

    .line 4302
    .local v7, "subTextSize":F
    const/4 v1, 0x0

    .line 4303
    .local v1, "i":I
    :goto_2
    iget-object v8, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v1, v8, :cond_4

    array-length v8, v5

    if-ge v1, v8, :cond_4

    .line 4304
    iget-object v8, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    .line 4305
    .local v6, "str":Ljava/lang/CharSequence;
    if-eqz v6, :cond_1

    const-string/jumbo v8, ""

    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 4313
    :cond_1
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 4299
    .end local v1    # "i":I
    .end local v2    # "largeText":Z
    .end local v6    # "str":Ljava/lang/CharSequence;
    .end local v7    # "subTextSize":F
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "largeText":Z
    goto :goto_1

    .line 4306
    .restart local v1    # "i":I
    .restart local v6    # "str":Ljava/lang/CharSequence;
    .restart local v7    # "subTextSize":F
    :cond_3
    aget v8, v5, v1

    invoke-virtual {v0, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4307
    aget v8, v5, v1

    iget-object v11, p0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v11, v6}, Landroid/app/Notification$Builder;->-wrap7(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v0, v8, v11}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 4308
    if-eqz v2, :cond_1

    .line 4309
    aget v8, v5, v1

    invoke-virtual {v0, v8, v9, v7}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    goto :goto_3

    .line 4317
    .end local v6    # "str":Ljava/lang/CharSequence;
    :cond_4
    iget-object v8, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_5

    move v8, v9

    .line 4316
    :goto_4
    const v11, 0x1020383

    invoke-virtual {v0, v11, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4320
    iget-object v8, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    array-length v11, v5

    if-le v8, v11, :cond_6

    .line 4319
    :goto_5
    const v8, 0x1020382

    invoke-virtual {v0, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4322
    invoke-virtual {p0, v0}, Landroid/app/Notification$InboxStyle;->applyTopPadding(Landroid/widget/RemoteViews;)V

    .line 4324
    iget-object v8, p0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v8, v0}, Landroid/app/Notification$Builder;->-wrap10(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;)V

    .line 4326
    iget-object v8, p0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    const v9, 0x1020376

    invoke-static {v8, v0, v9}, Landroid/app/Notification$Builder;->-wrap2(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;I)Z

    .line 4328
    return-object v0

    :cond_5
    move v8, v10

    .line 4317
    goto :goto_4

    :cond_6
    move v9, v10

    .line 4320
    goto :goto_5

    .line 4290
    :array_0
    .array-data 4
        0x102037b
        0x102037c
        0x102037d
        0x102037e
        0x102037f
        0x1020380
        0x1020381
    .end array-data
.end method


# virtual methods
.method public addExtras(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 4258
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->addExtras(Landroid/os/Bundle;)V

    .line 4260
    iget-object v1, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/CharSequence;

    .line 4261
    .local v0, "a":[Ljava/lang/CharSequence;
    const-string/jumbo v2, "android.textLines"

    iget-object v1, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 4257
    return-void
.end method

.method public addLine(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;
    .locals 2
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .prologue
    .line 4250
    iget-object v0, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4251
    return-object p0
.end method

.method public populateBigContentView(Landroid/app/Notification;)V
    .locals 2
    .param p1, "wip"    # Landroid/app/Notification;

    .prologue
    .line 4336
    iget-object v0, p0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-direct {p0}, Landroid/app/Notification$InboxStyle;->makeBigContentView()Landroid/widget/RemoteViews;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroid/app/Notification$Builder;->-wrap8(Landroid/app/Notification$Builder;Landroid/app/Notification;Landroid/widget/RemoteViews;)V

    .line 4335
    return-void
.end method

.method protected restoreFromExtras(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 4269
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->restoreFromExtras(Landroid/os/Bundle;)V

    .line 4271
    iget-object v0, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4272
    const-string/jumbo v0, "android.textLines"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4273
    iget-object v0, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.textLines"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 4268
    :cond_0
    return-void
.end method

.method public setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 4234
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Notification$InboxStyle;->internalSetBigContentTitle(Ljava/lang/CharSequence;)V

    .line 4235
    return-object p0
.end method

.method public setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;
    .locals 1
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .prologue
    .line 4242
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Notification$InboxStyle;->internalSetSummaryText(Ljava/lang/CharSequence;)V

    .line 4243
    return-object p0
.end method
