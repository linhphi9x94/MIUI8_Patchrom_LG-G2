.class public final Landroid/view/MotionEvent$PointerCoords;
.super Ljava/lang/Object;
.source "MotionEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/MotionEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PointerCoords"
.end annotation


# static fields
.field private static final INITIAL_PACKED_AXIS_VALUES:I = 0x8


# instance fields
.field private mPackedAxisBits:J

.field private mPackedAxisValues:[F

.field public orientation:F

.field public pressure:F

.field public size:F

.field public toolMajor:F

.field public toolMinor:F

.field public touchMajor:F

.field public touchMinor:F

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/view/MotionEvent$PointerCoords;)V
    .locals 0
    .param p1, "other"    # Landroid/view/MotionEvent$PointerCoords;

    .prologue
    .line 3341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3342
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent$PointerCoords;->copyFrom(Landroid/view/MotionEvent$PointerCoords;)V

    .line 3341
    return-void
.end method

.method public static createArray(I)[Landroid/view/MotionEvent$PointerCoords;
    .locals 3
    .param p0, "size"    # I

    .prologue
    .line 3347
    new-array v0, p0, [Landroid/view/MotionEvent$PointerCoords;

    .line 3348
    .local v0, "array":[Landroid/view/MotionEvent$PointerCoords;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p0, :cond_0

    .line 3349
    new-instance v2, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v2, v0, v1

    .line 3348
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3351
    :cond_0
    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3454
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 3456
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 3457
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 3458
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 3459
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 3460
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    .line 3461
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    .line 3462
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    .line 3463
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    .line 3464
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    .line 3453
    return-void
.end method

.method public copyFrom(Landroid/view/MotionEvent$PointerCoords;)V
    .locals 9
    .param p1, "other"    # Landroid/view/MotionEvent$PointerCoords;

    .prologue
    const/4 v8, 0x0

    .line 3473
    iget-wide v0, p1, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 3474
    .local v0, "bits":J
    iput-wide v0, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 3475
    const-wide/16 v6, 0x0

    cmp-long v5, v0, v6

    if-eqz v5, :cond_2

    .line 3476
    iget-object v3, p1, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    .line 3477
    .local v3, "otherValues":[F
    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v2

    .line 3478
    .local v2, "count":I
    iget-object v4, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    .line 3479
    .local v4, "values":[F
    if-eqz v4, :cond_0

    array-length v5, v4

    if-le v2, v5, :cond_1

    .line 3480
    :cond_0
    array-length v5, v3

    new-array v4, v5, [F

    .line 3481
    iput-object v4, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    .line 3483
    :cond_1
    invoke-static {v3, v8, v4, v8, v2}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 3486
    .end local v2    # "count":I
    .end local v3    # "otherValues":[F
    .end local v4    # "values":[F
    :cond_2
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->x:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 3487
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->y:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 3488
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 3489
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->size:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 3490
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    .line 3491
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    .line 3492
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    .line 3493
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    .line 3494
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    .line 3472
    return-void
.end method

.method public getAxisValue(I)F
    .locals 10
    .param p1, "axis"    # I

    .prologue
    .line 3507
    packed-switch p1, :pswitch_data_0

    .line 3527
    if-ltz p1, :cond_0

    const/16 v5, 0x3f

    if-le p1, v5, :cond_1

    .line 3528
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "Axis out of range."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3509
    :pswitch_0
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->x:F

    return v5

    .line 3511
    :pswitch_1
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->y:F

    return v5

    .line 3513
    :pswitch_2
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    return v5

    .line 3515
    :pswitch_3
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->size:F

    return v5

    .line 3517
    :pswitch_4
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    return v5

    .line 3519
    :pswitch_5
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    return v5

    .line 3521
    :pswitch_6
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    return v5

    .line 3523
    :pswitch_7
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    return v5

    .line 3525
    :pswitch_8
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    return v5

    .line 3530
    :cond_1
    iget-wide v2, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 3531
    .local v2, "bits":J
    const-wide/high16 v6, -0x8000000000000000L

    ushr-long v0, v6, p1

    .line 3532
    .local v0, "axisBit":J
    and-long v6, v2, v0

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_2

    .line 3533
    const/4 v5, 0x0

    return v5

    .line 3535
    :cond_2
    const-wide/16 v6, -0x1

    ushr-long/2addr v6, p1

    not-long v6, v6

    and-long/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Long;->bitCount(J)I

    move-result v4

    .line 3536
    .local v4, "index":I
    iget-object v5, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    aget v5, v5, v4

    return v5

    .line 3507
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public setAxisValue(IF)V
    .locals 13
    .param p1, "axis"    # I
    .param p2, "value"    # F

    .prologue
    const/4 v12, 0x0

    .line 3551
    packed-switch p1, :pswitch_data_0

    .line 3580
    if-ltz p1, :cond_0

    const/16 v8, 0x3f

    if-le p1, v8, :cond_1

    .line 3581
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "Axis out of range."

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 3553
    :pswitch_0
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 3550
    :goto_0
    return-void

    .line 3556
    :pswitch_1
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->y:F

    goto :goto_0

    .line 3559
    :pswitch_2
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    goto :goto_0

    .line 3562
    :pswitch_3
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->size:F

    goto :goto_0

    .line 3565
    :pswitch_4
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    goto :goto_0

    .line 3568
    :pswitch_5
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    goto :goto_0

    .line 3571
    :pswitch_6
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    goto :goto_0

    .line 3574
    :pswitch_7
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    goto :goto_0

    .line 3577
    :pswitch_8
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    goto :goto_0

    .line 3583
    :cond_1
    iget-wide v2, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 3584
    .local v2, "bits":J
    const-wide/high16 v8, -0x8000000000000000L

    ushr-long v0, v8, p1

    .line 3585
    .local v0, "axisBit":J
    const-wide/16 v8, -0x1

    ushr-long/2addr v8, p1

    not-long v8, v8

    and-long/2addr v8, v2

    invoke-static {v8, v9}, Ljava/lang/Long;->bitCount(J)I

    move-result v5

    .line 3586
    .local v5, "index":I
    iget-object v7, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    .line 3587
    .local v7, "values":[F
    and-long v8, v2, v0

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_3

    .line 3588
    if-nez v7, :cond_4

    .line 3589
    const/16 v8, 0x8

    new-array v7, v8, [F

    .line 3590
    iput-object v7, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    .line 3607
    :cond_2
    :goto_1
    or-long v8, v2, v0

    iput-wide v8, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 3609
    :cond_3
    aput p2, v7, v5

    goto :goto_0

    .line 3592
    :cond_4
    invoke-static {v2, v3}, Ljava/lang/Long;->bitCount(J)I

    move-result v4

    .line 3593
    .local v4, "count":I
    array-length v8, v7

    if-ge v4, v8, :cond_5

    .line 3594
    if-eq v5, v4, :cond_2

    .line 3595
    add-int/lit8 v8, v5, 0x1

    .line 3596
    sub-int v9, v4, v5

    .line 3595
    invoke-static {v7, v5, v7, v8, v9}, Ljava/lang/System;->arraycopy([FI[FII)V

    goto :goto_1

    .line 3599
    :cond_5
    mul-int/lit8 v8, v4, 0x2

    new-array v6, v8, [F

    .line 3600
    .local v6, "newValues":[F
    invoke-static {v7, v12, v6, v12, v5}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 3601
    add-int/lit8 v8, v5, 0x1

    .line 3602
    sub-int v9, v4, v5

    .line 3601
    invoke-static {v7, v5, v6, v8, v9}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 3603
    move-object v7, v6

    .line 3604
    iput-object v7, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    goto :goto_1

    .line 3551
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
