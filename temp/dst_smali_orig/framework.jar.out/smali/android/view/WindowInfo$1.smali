.class final Landroid/view/WindowInfo$1;
.super Ljava/lang/Object;
.source "WindowInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/view/WindowInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/view/WindowInfo;
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    invoke-static {}, Landroid/view/WindowInfo;->obtain()Landroid/view/WindowInfo;

    move-result-object v0

    .local v0, "window":Landroid/view/WindowInfo;
    invoke-static {v0, p1}, Landroid/view/WindowInfo;->-wrap0(Landroid/view/WindowInfo;Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    invoke-virtual {p0, p1}, Landroid/view/WindowInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/WindowInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/view/WindowInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    new-array v0, p1, [Landroid/view/WindowInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    invoke-virtual {p0, p1}, Landroid/view/WindowInfo$1;->newArray(I)[Landroid/view/WindowInfo;

    move-result-object v0

    return-object v0
.end method