.class Lcom/android/server/wifi/WifiController$DeviceInactiveState;
.super Lcom/android/internal/util/State;
.source "WifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DeviceInactiveState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiController;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiController;

    .prologue
    .line 779
    iput-object p1, p0, Lcom/android/server/wifi/WifiController$DeviceInactiveState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x0

    .line 782
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 792
    return v1

    .line 784
    :sswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$DeviceInactiveState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-wrap2(Lcom/android/server/wifi/WifiController;)V

    .line 785
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$DeviceInactiveState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-wrap11(Lcom/android/server/wifi/WifiController;)V

    .line 786
    const/4 v0, 0x1

    return v0

    .line 788
    :sswitch_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$DeviceInactiveState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-wrap1(Lcom/android/server/wifi/WifiController;)V

    .line 790
    return v1

    .line 782
    nop

    :sswitch_data_0
    .sparse-switch
        0x26002 -> :sswitch_1
        0x26006 -> :sswitch_0
    .end sparse-switch
.end method
