.class Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectModeState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 7448
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 1

    .prologue
    .line 7452
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->connectScanningService()V

    .line 7451
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 54
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 7464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap39(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Lcom/android/internal/util/State;)V

    .line 7466
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v48, v0

    sparse-switch v48, :sswitch_data_0

    .line 8251
    const/16 v48, 0x0

    return v48

    .line 7468
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get113(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/DummyWifiLogger;

    move-result-object v48

    const/16 v49, 0x1

    invoke-virtual/range {v48 .. v49}, Lcom/android/server/wifi/DummyWifiLogger;->captureBugReportData(I)V

    .line 7469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    const/16 v49, 0x0

    invoke-static/range {v48 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->-set0(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 7470
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 7471
    .local v6, "bssid":Ljava/lang/String;
    if-eqz v6, :cond_0

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v48

    if-eqz v48, :cond_1

    .line 7473
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get92(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v6

    .line 7475
    :cond_1
    if-eqz v6, :cond_2

    .line 7477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get78(Lcom/android/server/wifi/WifiStateMachine;)Landroid/util/LruCache;

    move-result-object v49

    monitor-enter v49

    .line 7478
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v50, v0

    invoke-static/range {v50 .. v50}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v50

    .line 7479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get58(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v51

    const/16 v52, 0x0

    .line 7478
    move-object/from16 v0, v50

    move/from16 v1, v51

    move/from16 v2, v52

    invoke-virtual {v0, v1, v6, v2}, Lcom/android/server/wifi/WifiConfigStore;->handleBSSIDBlackList(ILjava/lang/String;Z)Z

    move-result v50

    move-object/from16 v0, v48

    move/from16 v1, v50

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set0(Lcom/android/server/wifi/WifiStateMachine;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v49

    .line 7482
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get87(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v48

    const v49, 0x2402b

    invoke-virtual/range {v48 .. v49}, Lcom/android/server/wifi/SupplicantStateTracker;->sendMessage(I)V

    .line 8253
    .end local v6    # "bssid":Ljava/lang/String;
    :cond_3
    :goto_0
    const/16 v48, 0x1

    return v48

    .line 7477
    .restart local v6    # "bssid":Ljava/lang/String;
    :catchall_0
    move-exception v48

    monitor-exit v49

    throw v48

    .line 7485
    .end local v6    # "bssid":Ljava/lang/String;
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get113(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/DummyWifiLogger;

    move-result-object v48

    const/16 v49, 0x2

    invoke-virtual/range {v48 .. v49}, Lcom/android/server/wifi/DummyWifiLogger;->captureBugReportData(I)V

    .line 7486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get87(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v48

    const v49, 0x24007

    invoke-virtual/range {v48 .. v49}, Lcom/android/server/wifi/SupplicantStateTracker;->sendMessage(I)V

    .line 7487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get80(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v48

    if-nez v48, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get16(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v48

    if-eqz v48, :cond_3

    .line 7492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get54(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v48

    if-nez v48, :cond_3

    .line 7493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    const/16 v49, 0x1

    invoke-virtual/range {v48 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->enableBackgroundScan(Z)Z

    move-result v48

    if-nez v48, :cond_3

    .line 7494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-wrap33(Lcom/android/server/wifi/WifiStateMachine;)V

    goto :goto_0

    .line 7501
    :sswitch_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Ljava/lang/String;

    .line 7502
    .local v37, "substr":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v48, v0

    const v49, 0x2400d

    move/from16 v0, v48

    move/from16 v1, v49

    if-ne v0, v1, :cond_4

    .line 7503
    const-string/jumbo v16, "temp-disabled"

    .line 7504
    .local v16, "en":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v50, "ConnectModeState SSID state="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string/jumbo v50, " nid="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    .line 7505
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v50, v0

    invoke-static/range {v50 .. v50}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v50

    .line 7504
    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    .line 7505
    const-string/jumbo v50, " ["

    .line 7504
    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    .line 7505
    const-string/jumbo v50, "]"

    .line 7504
    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 7506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get78(Lcom/android/server/wifi/WifiStateMachine;)Landroid/util/LruCache;

    move-result-object v49

    monitor-enter v49

    .line 7507
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v50

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v51, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v48, v0

    .line 7508
    const v52, 0x2400e

    .line 7507
    move/from16 v0, v48

    move/from16 v1, v52

    if-ne v0, v1, :cond_5

    const/16 v48, 0x1

    .line 7508
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v52, v0

    invoke-static/range {v52 .. v52}, Lcom/android/server/wifi/WifiStateMachine;->-get111(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v52

    .line 7507
    move-object/from16 v0, v50

    move/from16 v1, v51

    move/from16 v2, v48

    move-object/from16 v3, v37

    move-object/from16 v4, v52

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/WifiConfigStore;->handleSSIDStateChange(IZLjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v16    # "en":Ljava/lang/String;
    .end local v37    # "substr":Ljava/lang/String;
    :goto_3
    monitor-exit v49

    goto/16 :goto_0

    .line 7503
    .restart local v37    # "substr":Ljava/lang/String;
    :cond_4
    const-string/jumbo v16, "re-enabled"

    .restart local v16    # "en":Ljava/lang/String;
    goto/16 :goto_1

    .line 7507
    :cond_5
    const/16 v48, 0x0

    goto :goto_2

    .line 7506
    :catchall_1
    move-exception v48

    monitor-exit v49

    throw v48

    .line 7512
    .end local v16    # "en":Ljava/lang/String;
    .end local v37    # "substr":Ljava/lang/String;
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap0(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)Landroid/net/wifi/SupplicantState;

    move-result-object v35

    .line 7515
    .local v35, "state":Landroid/net/wifi/SupplicantState;
    invoke-static/range {v35 .. v35}, Landroid/net/wifi/SupplicantState;->isDriverActive(Landroid/net/wifi/SupplicantState;)Z

    move-result v48

    if-nez v48, :cond_7

    .line 7516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get63(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v48

    sget-object v49, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v48

    move-object/from16 v1, v49

    if-eq v0, v1, :cond_6

    .line 7517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-wrap32(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 7519
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    const-string/jumbo v49, "Detected an interface down, restart driver"

    invoke-virtual/range {v48 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 7520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v49, v0

    invoke-static/range {v49 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->-get39(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->-wrap60(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 7521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    const v49, 0x2000d

    invoke-virtual/range {v48 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 7530
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get13(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v48

    if-nez v48, :cond_9

    sget-object v48, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v35

    move-object/from16 v1, v48

    if-ne v0, v1, :cond_9

    .line 7531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get63(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v48

    sget-object v49, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v48

    move-object/from16 v1, v49

    if-eq v0, v1, :cond_9

    .line 7532
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    move-result v48

    if-eqz v48, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    const-string/jumbo v49, "Missed CTRL-EVENT-DISCONNECTED, disconnect"

    invoke-virtual/range {v48 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 7533
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-wrap32(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 7534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v49, v0

    invoke-static/range {v49 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->-get31(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->-wrap60(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 7540
    :cond_9
    sget-object v48, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v35

    move-object/from16 v1, v48

    if-ne v0, v1, :cond_a

    .line 7541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get51(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/IpReachabilityMonitor;

    move-result-object v48

    if-eqz v48, :cond_a

    .line 7542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get51(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/IpReachabilityMonitor;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Landroid/net/IpReachabilityMonitor;->probeAll()V

    .line 7546
    :cond_a
    sget-object v48, Landroid/net/wifi/SupplicantState;->ASSOCIATED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v35

    move-object/from16 v1, v48

    if-ne v0, v1, :cond_3

    .line 7547
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Lcom/android/server/wifi/StateChangeResult;

    .line 7548
    .local v36, "stateChangeResult":Lcom/android/server/wifi/StateChangeResult;
    if-eqz v36, :cond_3

    .line 7549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    move-object/from16 v0, v36

    iget v0, v0, Lcom/android/server/wifi/StateChangeResult;->networkId:I

    move/from16 v49, v0

    invoke-static/range {v48 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->-set10(Lcom/android/server/wifi/WifiStateMachine;I)I

    goto/16 :goto_0

    .line 7554
    .end local v35    # "state":Landroid/net/wifi/SupplicantState;
    .end local v36    # "stateChangeResult":Lcom/android/server/wifi/StateChangeResult;
    :sswitch_4
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v48, v0

    const/16 v49, 0x1

    move/from16 v0, v48

    move/from16 v1, v49

    if-ne v0, v1, :cond_b

    .line 7555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get115(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    .line 7556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    const/16 v49, 0x1

    invoke-static/range {v48 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->-set49(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    goto/16 :goto_0

    .line 7558
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get115(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Lcom/android/server/wifi/WifiNative;->reconnect()Z

    .line 7559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    const/16 v49, 0x0

    invoke-static/range {v48 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->-set49(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    goto/16 :goto_0

    .line 7563
    :sswitch_5
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/net/wifi/WifiConfiguration;

    .line 7565
    .local v8, "config":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v49, v0

    .line 7566
    const/16 v50, 0x0

    .line 7565
    move-object/from16 v0, v48

    move/from16 v1, v49

    move/from16 v2, v50

    invoke-virtual {v0, v8, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->recordUidIfAuthorized(Landroid/net/wifi/WifiConfiguration;IZ)Z

    move-result v48

    if-nez v48, :cond_c

    .line 7567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v50, "Not authorized to update network  config="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    .line 7568
    iget-object v0, v8, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v50, v0

    .line 7567
    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    .line 7569
    const-string/jumbo v50, " cnid="

    .line 7567
    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    .line 7569
    iget v0, v8, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v50, v0

    .line 7567
    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    .line 7570
    const-string/jumbo v50, " uid="

    .line 7567
    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    .line 7570
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v50, v0

    .line 7567
    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->-wrap40(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 7571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v49, v0

    const/16 v50, -0x1

    move-object/from16 v0, v48

    move-object/from16 v1, p1

    move/from16 v2, v49

    move/from16 v3, v50

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap43(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 7575
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v48

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v49, v0

    move-object/from16 v0, v48

    move/from16 v1, v49

    invoke-virtual {v0, v8, v1}, Lcom/android/server/wifi/WifiConfigStore;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;I)I

    move-result v30

    .line 7576
    .local v30, "res":I
    if-gez v30, :cond_e

    .line 7577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get4()I

    move-result v49

    invoke-static/range {v48 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->-set55(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 7600
    :cond_d
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    const v49, 0x20034

    move-object/from16 v0, v48

    move-object/from16 v1, p1

    move/from16 v2, v49

    move/from16 v3, v30

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap43(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 7579
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v10

    .line 7580
    .local v10, "curConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v10, :cond_d

    if-eqz v8, :cond_d

    .line 7581
    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v48, v0

    iget v0, v8, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v49, v0

    move/from16 v0, v48

    move/from16 v1, v49

    if-ge v0, v1, :cond_d

    .line 7582
    iget v0, v8, Landroid/net/wifi/WifiConfiguration;->status:I

    move/from16 v48, v0

    const/16 v49, 0x2

    move/from16 v0, v48

    move/from16 v1, v49

    if-ne v0, v1, :cond_d

    .line 7586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v48

    move-object/from16 v0, v48

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    .line 7587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v48

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v49, v0

    move-object/from16 v0, v48

    move/from16 v1, v49

    invoke-virtual {v0, v8, v1}, Lcom/android/server/wifi/WifiConfigStore;->updateLastConnectUid(Landroid/net/wifi/WifiConfiguration;I)Z

    .line 7588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v48

    const/16 v49, 0x0

    invoke-virtual/range {v48 .. v49}, Lcom/android/server/wifi/WifiConfigStore;->writeKnownNetworkHistory(Z)V

    .line 7591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v50

    move-object/from16 v0, v48

    move-wide/from16 v1, v50

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-set2(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 7593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get110(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConnectionStatistics;

    move-result-object v48

    move-object/from16 v0, v48

    iget v0, v0, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    move/from16 v49, v0

    add-int/lit8 v49, v49, 0x1

    move/from16 v0, v49

    move-object/from16 v1, v48

    iput v0, v1, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    .line 7596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    const/16 v49, -0x3

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    invoke-virtual/range {v48 .. v52}, Lcom/android/server/wifi/WifiStateMachine;->startScan(IILandroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V

    goto/16 :goto_4

    .line 7603
    .end local v8    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v10    # "curConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v30    # "res":I
    :sswitch_6
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    .line 7604
    .local v23, "netId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v48

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v49, v0

    .line 7605
    const/16 v50, 0x0

    .line 7604
    move-object/from16 v0, v48

    move/from16 v1, v49

    move/from16 v2, v23

    move/from16 v3, v50

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiConfigStore;->canModifyNetwork(IIZ)Z

    move-result v48

    if-nez v48, :cond_f

    .line 7606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v50, "Not authorized to remove network  cnid="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    .line 7608
    const-string/jumbo v50, " uid="

    .line 7606
    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    .line 7608
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v50, v0

    .line 7606
    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->-wrap40(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 7609
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v49, v0

    const/16 v50, -0x1

    move-object/from16 v0, v48

    move-object/from16 v1, p1

    move/from16 v2, v49

    move/from16 v3, v50

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap43(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 7613
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v48

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v49, v0

    invoke-virtual/range {v48 .. v49}, Lcom/android/server/wifi/WifiConfigStore;->removeNetwork(I)Z

    move-result v26

    .line 7614
    .local v26, "ok":Z
    if-nez v26, :cond_10

    .line 7615
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get4()I

    move-result v49

    invoke-static/range {v48 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->-set55(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 7617
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v49, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v50, v0

    if-eqz v26, :cond_11

    const/16 v48, 0x1

    :goto_5
    move-object/from16 v0, v49

    move-object/from16 v1, p1

    move/from16 v2, v50

    move/from16 v3, v48

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap43(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    :cond_11
    const/16 v48, -0x1

    goto :goto_5

    .line 7620
    .end local v23    # "netId":I
    .end local v26    # "ok":Z
    :sswitch_7
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v48, v0

    const/16 v49, 0x1

    move/from16 v0, v48

    move/from16 v1, v49

    if-ne v0, v1, :cond_12

    const/4 v13, 0x1

    .line 7621
    .local v13, "disableOthers":Z
    :goto_6
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    .line 7622
    .restart local v23    # "netId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v48

    move-object/from16 v0, v48

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v8

    .line 7623
    .restart local v8    # "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v8, :cond_13

    .line 7624
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v50, "No network with id = "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 7625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get4()I

    move-result v49

    invoke-static/range {v48 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->-set55(Lcom/android/server/wifi/WifiStateMachine;I)I

    goto/16 :goto_0

    .line 7620
    .end local v8    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v13    # "disableOthers":Z
    .end local v23    # "netId":I
    :cond_12
    const/4 v13, 0x0

    .restart local v13    # "disableOthers":Z
    goto :goto_6

    .line 7631
    .restart local v8    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v23    # "netId":I
    :cond_13
    if-eqz v13, :cond_14

    .line 7632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get108(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiAutoJoinController;

    move-result-object v48

    .line 7633
    const/16 v49, 0x1

    const/16 v50, 0x0

    .line 7632
    move-object/from16 v0, v48

    move/from16 v1, v23

    move/from16 v2, v49

    move/from16 v3, v50

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiAutoJoinController;->updateConfigurationHistory(IZZ)V

    .line 7636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v48

    move-object/from16 v0, v48

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    .line 7639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v50

    move-object/from16 v0, v48

    move-wide/from16 v1, v50

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-set2(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 7641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get110(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConnectionStatistics;

    move-result-object v48

    move-object/from16 v0, v48

    iget v0, v0, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    move/from16 v49, v0

    add-int/lit8 v49, v49, 0x1

    move/from16 v0, v49

    move-object/from16 v1, v48

    iput v0, v1, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    .line 7644
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    const-string/jumbo v49, "any"

    move-object/from16 v0, v48

    move/from16 v1, v23

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->autoRoamSetBSSID(ILjava/lang/String;)V

    .line 7646
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v42, v0

    .line 7647
    .local v42, "uid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v48

    move-object/from16 v0, v48

    move/from16 v1, v23

    move/from16 v2, v42

    invoke-virtual {v0, v1, v13, v2}, Lcom/android/server/wifi/WifiConfigStore;->enableNetwork(IZI)Z

    move-result v26

    .line 7648
    .restart local v26    # "ok":Z
    if-nez v26, :cond_15

    .line 7649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get4()I

    move-result v49

    invoke-static/range {v48 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->-set55(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 7652
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v49, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v50, v0

    if-eqz v26, :cond_16

    const/16 v48, 0x1

    :goto_7
    move-object/from16 v0, v49

    move-object/from16 v1, p1

    move/from16 v2, v50

    move/from16 v3, v48

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap43(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    :cond_16
    const/16 v48, -0x1

    goto :goto_7

    .line 7655
    .end local v8    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v13    # "disableOthers":Z
    .end local v23    # "netId":I
    .end local v26    # "ok":Z
    .end local v42    # "uid":I
    :sswitch_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v38

    .line 7656
    .local v38, "time":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get57(Lcom/android/server/wifi/WifiStateMachine;)J

    move-result-wide v48

    sub-long v48, v38, v48

    const-wide/32 v50, 0x927c0

    cmp-long v48, v48, v50

    if-lez v48, :cond_3

    .line 7657
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Lcom/android/server/wifi/WifiConfigStore;->enableAllNetworks()V

    .line 7658
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    move-wide/from16 v1, v38

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-set33(Lcom/android/server/wifi/WifiStateMachine;J)J

    goto/16 :goto_0

    .line 7662
    .end local v38    # "time":J
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v48

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v49, v0

    .line 7663
    const/16 v50, 0x5

    .line 7662
    invoke-virtual/range {v48 .. v50}, Lcom/android/server/wifi/WifiConfigStore;->disableNetwork(II)Z

    move-result v48

    if-eqz v48, :cond_17

    .line 7664
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    const v49, 0x25013

    move-object/from16 v0, v48

    move-object/from16 v1, p1

    move/from16 v2, v49

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap42(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_0

    .line 7666
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get4()I

    move-result v49

    invoke-static/range {v48 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->-set55(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 7667
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    const v49, 0x25012

    .line 7668
    const/16 v50, 0x0

    .line 7667
    move-object/from16 v0, v48

    move-object/from16 v1, p1

    move/from16 v2, v49

    move/from16 v3, v50

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap43(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 7672
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v49

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v48, v0

    check-cast v48, Ljava/lang/String;

    move-object/from16 v0, v49

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->disableEphemeralNetwork(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v8

    .line 7673
    .restart local v8    # "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v8, :cond_3

    .line 7674
    iget v0, v8, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v49, v0

    invoke-static/range {v49 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->-get58(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v49

    move/from16 v0, v48

    move/from16 v1, v49

    if-ne v0, v1, :cond_3

    .line 7676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    const v49, 0x20049

    invoke-virtual/range {v48 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 7681
    .end local v8    # "config":Landroid/net/wifi/WifiConfiguration;
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v49

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v48, v0

    check-cast v48, Ljava/lang/String;

    move-object/from16 v0, v49

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->blackListBssid(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 7684
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Lcom/android/server/wifi/WifiConfigStore;->clearBssidBlacklist()V

    goto/16 :goto_0

    .line 7687
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Lcom/android/server/wifi/WifiConfigStore;->saveConfig()Z

    move-result v26

    .line 7689
    .restart local v26    # "ok":Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    move-result v48

    if-eqz v48, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v50, "did save config "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 7690
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v49, v0

    if-eqz v26, :cond_19

    const/16 v48, 0x1

    :goto_8
    const v50, 0x2003a

    move-object/from16 v0, v49

    move-object/from16 v1, p1

    move/from16 v2, v50

    move/from16 v3, v48

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap43(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    .line 7694
    const-string/jumbo v48, "backup"

    invoke-static/range {v48 .. v48}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v48

    .line 7693
    invoke-static/range {v48 .. v48}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v17

    .line 7695
    .local v17, "ibm":Landroid/app/backup/IBackupManager;
    if-eqz v17, :cond_3

    .line 7697
    :try_start_2
    const-string/jumbo v48, "com.android.providers.settings"

    move-object/from16 v0, v17

    move-object/from16 v1, v48

    invoke-interface {v0, v1}, Landroid/app/backup/IBackupManager;->dataChanged(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 7698
    :catch_0
    move-exception v14

    .local v14, "e":Ljava/lang/Exception;
    goto/16 :goto_0

    .line 7690
    .end local v14    # "e":Ljava/lang/Exception;
    .end local v17    # "ibm":Landroid/app/backup/IBackupManager;
    :cond_19
    const/16 v48, -0x1

    goto :goto_8

    .line 7704
    .end local v26    # "ok":Z
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v49, v0

    .line 7705
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v50, v0

    invoke-static/range {v50 .. v50}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Lcom/android/server/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v50

    .line 7704
    move-object/from16 v0, v48

    move-object/from16 v1, p1

    move/from16 v2, v49

    move-object/from16 v3, v50

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap44(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 7708
    :sswitch_f
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v24, v0

    .line 7709
    .local v24, "networkId":I
    const/16 v19, 0x0

    .line 7710
    .local v19, "identitySent":Z
    const/4 v15, -0x1

    .line 7712
    .local v15, "eapMethod":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get120(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v48

    if-eqz v48, :cond_1a

    .line 7713
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get120(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v48

    move-object/from16 v0, v48

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v48, v0

    if-eqz v48, :cond_1a

    .line 7714
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get120(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v48

    move-object/from16 v0, v48

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v15

    .line 7718
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get120(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v48

    if-eqz v48, :cond_1d

    .line 7719
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get120(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v48

    move-object/from16 v0, v48

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v48, v0

    move/from16 v0, v48

    move/from16 v1, v24

    if-ne v0, v1, :cond_1d

    .line 7720
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get120(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v48

    move-object/from16 v0, v48

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v48, v0

    .line 7721
    const/16 v49, 0x3

    .line 7720
    invoke-virtual/range {v48 .. v49}, Ljava/util/BitSet;->get(I)Z

    move-result v48

    .line 7718
    if-eqz v48, :cond_1d

    .line 7722
    const/16 v48, 0x4

    move/from16 v0, v48

    if-eq v15, v0, :cond_1b

    .line 7723
    const/16 v48, 0x5

    move/from16 v0, v48

    if-ne v15, v0, :cond_1f

    .line 7726
    :cond_1b
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get21(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v48

    const-string/jumbo v49, "phone"

    invoke-virtual/range {v48 .. v49}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v40

    .line 7725
    check-cast v40, Landroid/telephony/TelephonyManager;

    .line 7727
    .local v40, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v40, :cond_1d

    .line 7728
    invoke-virtual/range {v40 .. v40}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v20

    .line 7729
    .local v20, "imsi":Ljava/lang/String;
    const-string/jumbo v22, ""

    .line 7731
    .local v22, "mccMnc":Ljava/lang/String;
    invoke-virtual/range {v40 .. v40}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v48

    const/16 v49, 0x5

    move/from16 v0, v48

    move/from16 v1, v49

    if-ne v0, v1, :cond_1c

    .line 7732
    invoke-virtual/range {v40 .. v40}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v22

    .line 7734
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    invoke-static {v0, v15, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap18(Lcom/android/server/wifi/WifiStateMachine;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 7736
    .local v18, "identity":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->isEmpty()Z

    move-result v48

    if-nez v48, :cond_1d

    .line 7737
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get115(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v48

    move-object/from16 v0, v48

    move/from16 v1, v24

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiNative;->simIdentityResponse(ILjava/lang/String;)Z

    .line 7738
    const/16 v19, 0x1

    .line 7742
    .end local v18    # "identity":Ljava/lang/String;
    .end local v20    # "imsi":Ljava/lang/String;
    .end local v22    # "mccMnc":Ljava/lang/String;
    .end local v40    # "tm":Landroid/telephony/TelephonyManager;
    :cond_1d
    if-nez v19, :cond_3

    .line 7744
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Ljava/lang/String;

    .line 7745
    .local v34, "ssid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get120(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v48

    if-eqz v48, :cond_1e

    if-eqz v34, :cond_1e

    .line 7746
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get120(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v48

    move-object/from16 v0, v48

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v48, v0

    if-eqz v48, :cond_1e

    .line 7747
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get120(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v48

    move-object/from16 v0, v48

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v48, v0

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v50, "\""

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string/jumbo v50, "\""

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    .line 7745
    if-eqz v48, :cond_1e

    .line 7748
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v48

    .line 7749
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v49, v0

    invoke-static/range {v49 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->-get120(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v49

    move-object/from16 v0, v49

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v49, v0

    .line 7750
    const-string/jumbo v50, "AUTH_FAILED no identity"

    .line 7749
    const/16 v51, 0x0

    .line 7750
    const/16 v52, 0x0

    .line 7748
    move-object/from16 v0, v48

    move/from16 v1, v49

    move/from16 v2, v51

    move-object/from16 v3, v50

    move-object/from16 v4, v52

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/WifiConfigStore;->handleSSIDStateChange(IZLjava/lang/String;Ljava/lang/String;)V

    .line 7754
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v48

    .line 7755
    const/16 v49, -0x1

    .line 7754
    invoke-virtual/range {v48 .. v49}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    .line 7756
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get115(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    goto/16 :goto_0

    .line 7724
    .end local v34    # "ssid":Ljava/lang/String;
    :cond_1f
    const/16 v48, 0x6

    move/from16 v0, v48

    if-ne v15, v0, :cond_1d

    goto/16 :goto_9

    .line 7760
    .end local v15    # "eapMethod":I
    .end local v19    # "identitySent":Z
    .end local v24    # "networkId":I
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    const-string/jumbo v49, "Received SUP_REQUEST_SIM_AUTH"

    invoke-virtual/range {v48 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 7761
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;

    .line 7762
    .local v29, "requestData":Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;
    if-eqz v29, :cond_22

    .line 7763
    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->protocol:I

    move/from16 v48, v0

    const/16 v49, 0x4

    move/from16 v0, v48

    move/from16 v1, v49

    if-ne v0, v1, :cond_20

    .line 7764
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->handleGsmAuthRequest(Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;)V

    goto/16 :goto_0

    .line 7765
    :cond_20
    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->protocol:I

    move/from16 v48, v0

    const/16 v49, 0x5

    move/from16 v0, v48

    move/from16 v1, v49

    if-eq v0, v1, :cond_21

    .line 7766
    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->protocol:I

    move/from16 v48, v0

    const/16 v49, 0x6

    move/from16 v0, v48

    move/from16 v1, v49

    if-ne v0, v1, :cond_3

    .line 7767
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->handle3GAuthRequest(Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;)V

    goto/16 :goto_0

    .line 7770
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    const-string/jumbo v49, "Invalid sim auth request"

    invoke-virtual/range {v48 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 7774
    .end local v29    # "requestData":Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v49, v0

    .line 7775
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v50, v0

    invoke-static/range {v50 .. v50}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Lcom/android/server/wifi/WifiConfigStore;->getPrivilegedConfiguredNetworks()Ljava/util/List;

    move-result-object v50

    .line 7774
    move-object/from16 v0, v48

    move-object/from16 v1, p1

    move/from16 v2, v49

    move-object/from16 v3, v50

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap44(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 7778
    :sswitch_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v49, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v50, v0

    .line 7779
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v51

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v48, v0

    check-cast v48, Landroid/net/wifi/ScanResult;

    move-object/from16 v0, v51

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getMatchingConfig(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v48

    .line 7778
    move-object/from16 v0, v49

    move-object/from16 v1, p1

    move/from16 v2, v50

    move-object/from16 v3, v48

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap44(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 7783
    :sswitch_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v48

    .line 7784
    const/16 v49, -0x1

    .line 7783
    invoke-virtual/range {v48 .. v49}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    .line 7785
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get115(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    goto/16 :goto_0

    .line 7788
    :sswitch_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get108(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiAutoJoinController;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Lcom/android/server/wifi/WifiAutoJoinController;->attemptAutoJoin()Z

    goto/16 :goto_0

    .line 7791
    :sswitch_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v50

    move-object/from16 v0, v48

    move-wide/from16 v1, v50

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-set2(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 7792
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get115(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Lcom/android/server/wifi/WifiNative;->reassociate()Z

    goto/16 :goto_0

    .line 7795
    :sswitch_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Lcom/android/server/wifi/WifiConfigStore;->needsUnlockedKeyStore()Z

    move-result v48

    if-eqz v48, :cond_3

    .line 7796
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    const-string/jumbo v49, "Reconnecting to give a chance to un-connected TLS networks"

    invoke-virtual/range {v48 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 7797
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get115(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    .line 7798
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v50

    move-object/from16 v0, v48

    move-wide/from16 v1, v50

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-set2(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 7799
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get115(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Lcom/android/server/wifi/WifiNative;->reconnect()Z

    goto/16 :goto_0

    .line 7803
    :sswitch_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get3()I

    move-result v49

    invoke-static/range {v48 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->-set55(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 7804
    const/16 v48, 0x1

    return v48

    .line 7814
    :sswitch_18
    const/4 v12, 0x0

    .line 7815
    .local v12, "didDisconnect":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-wrap17(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v48

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v49, v0

    invoke-static/range {v49 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->-get31(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v49

    move-object/from16 v0, v48

    move-object/from16 v1, v49

    if-eq v0, v1, :cond_23

    .line 7819
    const/4 v12, 0x1

    .line 7820
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get115(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    .line 7824
    :cond_23
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/net/wifi/WifiConfiguration;

    .line 7825
    .restart local v8    # "config":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    .line 7826
    .restart local v23    # "netId":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v32, v0

    .line 7827
    .local v32, "roam":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v50, "CMD_AUTO_CONNECT sup state "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    .line 7828
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v50, v0

    invoke-static/range {v50 .. v50}, Lcom/android/server/wifi/WifiStateMachine;->-get87(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Lcom/android/server/wifi/SupplicantStateTracker;->getSupplicantStateName()Ljava/lang/String;

    move-result-object v50

    .line 7827
    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    .line 7829
    const-string/jumbo v50, " my state "

    .line 7827
    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    .line 7829
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v50, v0

    invoke-static/range {v50 .. v50}, Lcom/android/server/wifi/WifiStateMachine;->-wrap17(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v50

    invoke-interface/range {v50 .. v50}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v50

    .line 7827
    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    .line 7830
    const-string/jumbo v50, " nid="

    .line 7827
    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    .line 7830
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v50

    .line 7827
    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    .line 7831
    const-string/jumbo v50, " roam="

    .line 7827
    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    .line 7831
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v50

    .line 7827
    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 7832
    if-nez v8, :cond_24

    .line 7833
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    const-string/jumbo v49, "AUTO_CONNECT and no config, bail out..."

    invoke-virtual/range {v48 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 7838
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    iget-object v0, v8, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    move-object/from16 v49, v0

    move-object/from16 v0, v48

    move/from16 v1, v23

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->autoRoamSetBSSID(ILjava/lang/String;)V

    .line 7841
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v50, "CMD_AUTO_CONNECT will save config -> "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    iget-object v0, v8, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    .line 7842
    const-string/jumbo v50, " nid="

    .line 7841
    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    .line 7842
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v50

    .line 7841
    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 7843
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v48

    const/16 v49, -0x1

    move-object/from16 v0, v48

    move/from16 v1, v49

    invoke-virtual {v0, v8, v1}, Lcom/android/server/wifi/WifiConfigStore;->saveNetwork(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;

    move-result-object v31

    .line 7844
    .local v31, "result":Lcom/android/server/wifi/NetworkUpdateResult;
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v23

    .line 7845
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v50, "CMD_AUTO_CONNECT did save config ->  nid="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    .line 7846
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v50

    .line 7845
    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 7849
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v48

    move-object/from16 v0, v48

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v8

    .line 7850
    if-nez v8, :cond_25

    .line 7851
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    const-string/jumbo v49, "CMD_AUTO_CONNECT couldn\'t update the config, got null config"

    invoke-virtual/range {v48 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 7854
    :cond_25
    iget v0, v8, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v48, v0

    move/from16 v0, v23

    move/from16 v1, v48

    if-eq v0, v1, :cond_26

    .line 7855
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v50, "CMD_AUTO_CONNECT couldn\'t update the config, want nid="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    .line 7856
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v50

    .line 7855
    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    .line 7856
    const-string/jumbo v50, " but got"

    .line 7855
    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    .line 7856
    iget v0, v8, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v50, v0

    .line 7855
    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 7860
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    const/16 v49, 0x0

    move-object/from16 v0, v48

    move-object/from16 v1, p1

    move/from16 v2, v23

    move/from16 v3, v49

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->deferForUserInput(Landroid/os/Message;IZ)Z

    move-result v48

    if-nez v48, :cond_3

    .line 7862
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v48

    move-object/from16 v0, v48

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v48

    move-object/from16 v0, v48

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->userApproved:I

    move/from16 v48, v0

    .line 7863
    const/16 v49, 0x2

    .line 7862
    move/from16 v0, v48

    move/from16 v1, v49

    if-ne v0, v1, :cond_27

    .line 7864
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    const v49, 0x25002

    .line 7865
    const/16 v50, 0x9

    .line 7864
    move-object/from16 v0, v48

    move-object/from16 v1, p1

    move/from16 v2, v49

    move/from16 v3, v50

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap43(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 7870
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v48

    const/16 v49, 0x0

    move-object/from16 v0, v48

    move/from16 v1, v23

    move/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->enableNetworkWithoutBroadcast(IZ)Z

    .line 7874
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v48

    move-object/from16 v0, v48

    invoke-virtual {v0, v8}, Lcom/android/server/wifi/WifiConfigStore;->isLastSelectedConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v48

    if-eqz v48, :cond_2a

    .line 7875
    iget v0, v8, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    move/from16 v21, v0

    .line 7877
    .local v21, "lastConnectUid":I
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v48

    const/16 v49, 0x0

    move-object/from16 v0, v48

    move/from16 v1, v49

    move/from16 v2, v21

    invoke-virtual {v0, v8, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->selectNetwork(Landroid/net/wifi/WifiConfiguration;ZI)Z

    move-result v48

    if-eqz v48, :cond_30

    .line 7878
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get115(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Lcom/android/server/wifi/WifiNative;->reconnect()Z

    move-result v48

    .line 7877
    if-eqz v48, :cond_30

    .line 7879
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v50

    move-object/from16 v0, v48

    move-wide/from16 v1, v50

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-set2(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 7880
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v49, v0

    invoke-static/range {v49 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->-set57(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 7881
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v48

    move-object/from16 v0, v48

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v8

    .line 7882
    if-eqz v8, :cond_28

    .line 7883
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v48

    move-object/from16 v0, v48

    invoke-virtual {v0, v8}, Lcom/android/server/wifi/WifiConfigStore;->isLastSelectedConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v48

    if-eqz v48, :cond_2b

    .line 7899
    :cond_28
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    move/from16 v1, v32

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set7(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 7900
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->isRoaming()Z

    move-result v48

    if-nez v48, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get13(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v48

    if-eqz v48, :cond_2c

    .line 7901
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v49, v0

    invoke-static/range {v49 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->-wrap60(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 7875
    .end local v21    # "lastConnectUid":I
    :cond_2a
    const/16 v21, -0x1

    .restart local v21    # "lastConnectUid":I
    goto/16 :goto_a

    .line 7896
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v48

    .line 7897
    const/16 v49, -0x1

    .line 7896
    invoke-virtual/range {v48 .. v49}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    goto :goto_b

    .line 7902
    :cond_2c
    if-eqz v12, :cond_2d

    .line 7903
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v49, v0

    invoke-static/range {v49 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->-get32(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->-wrap60(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 7906
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get80(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v48

    if-nez v48, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get59(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v48

    if-eqz v48, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get16(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v48

    if-eqz v48, :cond_2f

    .line 7907
    const v11, 0xea60

    .line 7908
    .local v11, "delay":I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get9()Z

    move-result v48

    if-eqz v48, :cond_2e

    .line 7909
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v50, "Starting PNO alarm: "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 7911
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get14(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/AlarmManager;

    move-result-object v48

    .line 7912
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v50

    const-wide/32 v52, 0xea60

    add-long v50, v50, v52

    .line 7913
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v49, v0

    invoke-static/range {v49 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->-get71(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/PendingIntent;

    move-result-object v49

    .line 7911
    const/16 v52, 0x0

    move-object/from16 v0, v48

    move/from16 v1, v52

    move-wide/from16 v2, v50

    move-object/from16 v4, v49

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 7915
    .end local v11    # "delay":I
    :cond_2f
    sget v48, Lcom/android/server/wifi/WifiStateMachine;->mRestartAutoJoinOffloadCounter:I

    add-int/lit8 v48, v48, 0x1

    sput v48, Lcom/android/server/wifi/WifiStateMachine;->mRestartAutoJoinOffloadCounter:I

    goto/16 :goto_0

    .line 7918
    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v50, "Failed to connect config: "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string/jumbo v50, " netId: "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 7919
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    const v49, 0x25002

    .line 7920
    const/16 v50, 0x0

    .line 7919
    move-object/from16 v0, v48

    move-object/from16 v1, p1

    move/from16 v2, v49

    move/from16 v3, v50

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap43(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 7925
    .end local v8    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v12    # "didDisconnect":Z
    .end local v21    # "lastConnectUid":I
    .end local v23    # "netId":I
    .end local v31    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    .end local v32    # "roam":I
    :sswitch_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v49

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v48, v0

    check-cast v48, Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, v49

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->removeNetworksForApp(Landroid/content/pm/ApplicationInfo;)Z

    goto/16 :goto_0

    .line 7928
    :sswitch_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v48

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v49, v0

    invoke-virtual/range {v48 .. v49}, Lcom/android/server/wifi/WifiConfigStore;->removeNetworksForUser(I)Z

    goto/16 :goto_0

    .line 7937
    :sswitch_1b
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    .line 7938
    .restart local v23    # "netId":I
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/net/wifi/WifiConfiguration;

    .line 7939
    .restart local v8    # "config":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get110(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConnectionStatistics;

    move-result-object v48

    move-object/from16 v0, v48

    iget v0, v0, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    move/from16 v49, v0

    add-int/lit8 v49, v49, 0x1

    move/from16 v0, v49

    move-object/from16 v1, v48

    iput v0, v1, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    .line 7940
    const/16 v43, 0x0

    .line 7943
    .local v43, "updatedExisting":Z
    if-eqz v8, :cond_33

    .line 7948
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v49, v0

    .line 7949
    const/16 v50, 0x1

    .line 7948
    move-object/from16 v0, v48

    move/from16 v1, v49

    move/from16 v2, v50

    invoke-virtual {v0, v8, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->recordUidIfAuthorized(Landroid/net/wifi/WifiConfiguration;IZ)Z

    move-result v48

    if-nez v48, :cond_31

    .line 7950
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v50, "Not authorized to update network  config="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    .line 7951
    iget-object v0, v8, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v50, v0

    .line 7950
    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    .line 7952
    const-string/jumbo v50, " cnid="

    .line 7950
    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    .line 7952
    iget v0, v8, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v50, v0

    .line 7950
    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    .line 7953
    const-string/jumbo v50, " uid="

    .line 7950
    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    .line 7953
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v50, v0

    .line 7950
    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->-wrap40(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 7954
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    const v49, 0x25002

    .line 7955
    const/16 v50, 0x9

    .line 7954
    move-object/from16 v0, v48

    move-object/from16 v1, p1

    move/from16 v2, v49

    move/from16 v3, v50

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap43(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 7959
    :cond_31
    const/16 v48, 0x1

    move/from16 v0, v48

    invoke-virtual {v8, v0}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v9

    .line 7961
    .local v9, "configKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v48

    move-object/from16 v0, v48

    invoke-virtual {v0, v9}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v33

    .line 7962
    .local v33, "savedConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v33, :cond_32

    .line 7966
    move-object/from16 v8, v33

    .line 7967
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v50, "CONNECT_NETWORK updating existing config with id="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    .line 7968
    iget v0, v8, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v50, v0

    .line 7967
    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    .line 7968
    const-string/jumbo v50, " configKey="

    .line 7967
    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 7969
    const/16 v48, 0x0

    move/from16 v0, v48

    iput-boolean v0, v8, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    .line 7970
    const/16 v48, 0x0

    move/from16 v0, v48

    iput v0, v8, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    .line 7971
    const/16 v43, 0x1

    .line 7974
    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v48

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v49, v0

    move-object/from16 v0, v48

    move/from16 v1, v49

    invoke-virtual {v0, v8, v1}, Lcom/android/server/wifi/WifiConfigStore;->saveNetwork(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;

    move-result-object v31

    .line 7975
    .restart local v31    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v23

    .line 7977
    .end local v9    # "configKey":Ljava/lang/String;
    .end local v31    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    .end local v33    # "savedConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v48

    move-object/from16 v0, v48

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v8

    .line 7979
    if-nez v8, :cond_34

    .line 7980
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v50, "CONNECT_NETWORK no config for id="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v50

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string/jumbo v50, " "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    .line 7981
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v50, v0

    invoke-static/range {v50 .. v50}, Lcom/android/server/wifi/WifiStateMachine;->-get87(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Lcom/android/server/wifi/SupplicantStateTracker;->getSupplicantStateName()Ljava/lang/String;

    move-result-object v50

    .line 7980
    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    .line 7981
    const-string/jumbo v50, " my state "

    .line 7980
    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    .line 7982
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v50, v0

    invoke-static/range {v50 .. v50}, Lcom/android/server/wifi/WifiStateMachine;->-wrap17(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v50

    invoke-interface/range {v50 .. v50}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v50

    .line 7980
    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 7983
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    const v49, 0x25002

    .line 7984
    const/16 v50, 0x0

    .line 7983
    move-object/from16 v0, v48

    move-object/from16 v1, p1

    move/from16 v2, v49

    move/from16 v3, v50

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap43(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 7987
    :cond_34
    iget-boolean v0, v8, Landroid/net/wifi/WifiConfiguration;->autoJoinBailedDueToLowRssi:Z

    move/from16 v48, v0

    if-eqz v48, :cond_37

    const-string/jumbo v45, " skipped"

    .line 7988
    .local v45, "wasSkipped":Ljava/lang/String;
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v50, "CONNECT_NETWORK id="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v50

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    .line 7989
    const-string/jumbo v50, " config="

    .line 7988
    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    .line 7989
    iget-object v0, v8, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v50, v0

    .line 7988
    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    .line 7990
    const-string/jumbo v50, " cnid="

    .line 7988
    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    .line 7990
    iget v0, v8, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v50, v0

    .line 7988
    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    .line 7991
    const-string/jumbo v50, " supstate="

    .line 7988
    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    .line 7991
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v50, v0

    invoke-static/range {v50 .. v50}, Lcom/android/server/wifi/WifiStateMachine;->-get87(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Lcom/android/server/wifi/SupplicantStateTracker;->getSupplicantStateName()Ljava/lang/String;

    move-result-object v50

    .line 7988
    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    .line 7992
    const-string/jumbo v50, " my state "

    .line 7988
    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    .line 7992
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v50, v0

    invoke-static/range {v50 .. v50}, Lcom/android/server/wifi/WifiStateMachine;->-wrap17(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v50

    invoke-interface/range {v50 .. v50}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v50

    .line 7988
    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    .line 7993
    const-string/jumbo v50, " uid = "

    .line 7988
    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    .line 7993
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v50, v0

    .line 7988
    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 7997
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    const-string/jumbo v49, "any"

    move-object/from16 v0, v48

    move/from16 v1, v23

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->autoRoamSetBSSID(ILjava/lang/String;)V

    .line 7999
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v48, v0

    const/16 v49, 0x3f2

    move/from16 v0, v48

    move/from16 v1, v49

    if-eq v0, v1, :cond_35

    .line 8000
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v48, v0

    const/16 v49, 0x3e8

    move/from16 v0, v48

    move/from16 v1, v49

    if-ne v0, v1, :cond_36

    .line 8007
    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    const-string/jumbo v49, "CONNECT_NETWORK"

    move-object/from16 v0, v48

    move-object/from16 v1, v49

    invoke-virtual {v0, v8, v1}, Lcom/android/server/wifi/WifiStateMachine;->clearConfigBSSID(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V

    .line 8010
    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    const/16 v49, 0x1

    move-object/from16 v0, v48

    move-object/from16 v1, p1

    move/from16 v2, v23

    move/from16 v3, v49

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->deferForUserInput(Landroid/os/Message;IZ)Z

    move-result v48

    if-nez v48, :cond_3

    .line 8012
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v48

    move-object/from16 v0, v48

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v48

    move-object/from16 v0, v48

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->userApproved:I

    move/from16 v48, v0

    .line 8013
    const/16 v49, 0x2

    .line 8012
    move/from16 v0, v48

    move/from16 v1, v49

    if-ne v0, v1, :cond_38

    .line 8014
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    const v49, 0x25002

    .line 8015
    const/16 v50, 0x9

    .line 8014
    move-object/from16 v0, v48

    move-object/from16 v1, p1

    move/from16 v2, v49

    move/from16 v3, v50

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap43(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 7987
    .end local v45    # "wasSkipped":Ljava/lang/String;
    :cond_37
    const-string/jumbo v45, ""

    .restart local v45    # "wasSkipped":Ljava/lang/String;
    goto/16 :goto_c

    .line 8019
    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    const/16 v49, 0x0

    invoke-static/range {v48 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->-set7(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 8023
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v48

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v49, v0

    invoke-virtual/range {v48 .. v49}, Lcom/android/server/wifi/WifiConfigStore;->checkConfigOverridePermission(I)Z

    move-result v27

    .line 8024
    .local v27, "persist":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get108(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiAutoJoinController;

    move-result-object v48

    const/16 v49, 0x1

    move-object/from16 v0, v48

    move/from16 v1, v23

    move/from16 v2, v49

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiAutoJoinController;->updateConfigurationHistory(IZZ)V

    .line 8026
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v48

    move-object/from16 v0, v48

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    .line 8028
    const/4 v12, 0x0

    .line 8029
    .restart local v12    # "didDisconnect":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get58(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v48

    const/16 v49, -0x1

    move/from16 v0, v48

    move/from16 v1, v49

    if-eq v0, v1, :cond_39

    .line 8030
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get58(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v48

    move/from16 v0, v48

    move/from16 v1, v23

    if-eq v0, v1, :cond_39

    .line 8034
    const/4 v12, 0x1

    .line 8035
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get115(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    .line 8039
    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v48

    const/16 v49, 0x0

    move-object/from16 v0, v48

    move/from16 v1, v23

    move/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->enableNetworkWithoutBroadcast(IZ)Z

    .line 8041
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v48

    .line 8042
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v49, v0

    .line 8041
    const/16 v50, 0x1

    move-object/from16 v0, v48

    move/from16 v1, v50

    move/from16 v2, v49

    invoke-virtual {v0, v8, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->selectNetwork(Landroid/net/wifi/WifiConfiguration;ZI)Z

    move-result v48

    if-eqz v48, :cond_3c

    .line 8042
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get115(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Lcom/android/server/wifi/WifiNative;->reconnect()Z

    move-result v48

    .line 8041
    if-eqz v48, :cond_3c

    .line 8043
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v50

    move-object/from16 v0, v48

    move-wide/from16 v1, v50

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-set2(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 8044
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v49, v0

    invoke-static/range {v49 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->-set57(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 8047
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get87(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v48

    const v49, 0x25001

    invoke-virtual/range {v48 .. v49}, Lcom/android/server/wifi/SupplicantStateTracker;->sendMessage(I)V

    .line 8048
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    const v49, 0x25003

    move-object/from16 v0, v48

    move-object/from16 v1, p1

    move/from16 v2, v49

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap42(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    .line 8049
    if-eqz v12, :cond_3a

    .line 8051
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v49, v0

    invoke-static/range {v49 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->-get32(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->-wrap60(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 8052
    :cond_3a
    if-eqz v43, :cond_3b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-wrap17(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v48

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v49, v0

    invoke-static/range {v49 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->-get19(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v49

    move-object/from16 v0, v48

    move-object/from16 v1, v49

    if-ne v0, v1, :cond_3b

    .line 8053
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v48

    move-object/from16 v0, v48

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v48, v0

    move/from16 v0, v48

    move/from16 v1, v23

    if-ne v0, v1, :cond_3b

    .line 8056
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    invoke-static {v0, v8}, Lcom/android/server/wifi/WifiStateMachine;->-wrap61(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)V

    goto/16 :goto_0

    .line 8062
    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v49, v0

    invoke-static/range {v49 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->-get31(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->-wrap60(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 8065
    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v50, "Failed to connect config: "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string/jumbo v50, " netId: "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 8066
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    const v49, 0x25002

    .line 8067
    const/16 v50, 0x0

    .line 8066
    move-object/from16 v0, v48

    move-object/from16 v1, p1

    move/from16 v2, v49

    move/from16 v3, v50

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap43(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 8072
    .end local v8    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v12    # "didDisconnect":Z
    .end local v23    # "netId":I
    .end local v27    # "persist":Z
    .end local v43    # "updatedExisting":Z
    .end local v45    # "wasSkipped":Ljava/lang/String;
    :sswitch_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get110(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConnectionStatistics;

    move-result-object v48

    move-object/from16 v0, v48

    iget v0, v0, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    move/from16 v49, v0

    add-int/lit8 v49, v49, 0x1

    move/from16 v0, v49

    move-object/from16 v1, v48

    iput v0, v1, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    .line 8075
    :sswitch_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    const/16 v49, 0x0

    invoke-static/range {v48 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->-set5(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 8076
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/net/wifi/WifiConfiguration;

    .line 8077
    .restart local v8    # "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v8, :cond_3d

    .line 8078
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v50, "ERROR: SAVE_NETWORK with null configuration"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    .line 8079
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v50, v0

    invoke-static/range {v50 .. v50}, Lcom/android/server/wifi/WifiStateMachine;->-get87(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Lcom/android/server/wifi/SupplicantStateTracker;->getSupplicantStateName()Ljava/lang/String;

    move-result-object v50

    .line 8078
    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    .line 8080
    const-string/jumbo v50, " my state "

    .line 8078
    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    .line 8080
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v50, v0

    invoke-static/range {v50 .. v50}, Lcom/android/server/wifi/WifiStateMachine;->-wrap17(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v50

    invoke-interface/range {v50 .. v50}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v50

    .line 8078
    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 8081
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get4()I

    move-result v49

    invoke-static/range {v48 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->-set55(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 8082
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    const v49, 0x25008

    .line 8083
    const/16 v50, 0x0

    .line 8082
    move-object/from16 v0, v48

    move-object/from16 v1, p1

    move/from16 v2, v49

    move/from16 v3, v50

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap43(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 8086
    :cond_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    new-instance v49, Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v0, v49

    invoke-direct {v0, v8}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    invoke-static/range {v48 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->-set5(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 8087
    iget v0, v8, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v25, v0

    .line 8088
    .local v25, "nid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v50, "SAVE_NETWORK id="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v50

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    .line 8089
    const-string/jumbo v50, " config="

    .line 8088
    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    .line 8089
    iget-object v0, v8, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v50, v0

    .line 8088
    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    .line 8090
    const-string/jumbo v50, " nid="

    .line 8088
    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    .line 8090
    iget v0, v8, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v50, v0

    .line 8088
    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    .line 8091
    const-string/jumbo v50, " supstate="

    .line 8088
    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    .line 8091
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v50, v0

    invoke-static/range {v50 .. v50}, Lcom/android/server/wifi/WifiStateMachine;->-get87(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Lcom/android/server/wifi/SupplicantStateTracker;->getSupplicantStateName()Ljava/lang/String;

    move-result-object v50

    .line 8088
    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    .line 8092
    const-string/jumbo v50, " my state "

    .line 8088
    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    .line 8092
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v50, v0

    invoke-static/range {v50 .. v50}, Lcom/android/server/wifi/WifiStateMachine;->-wrap17(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v50

    invoke-interface/range {v50 .. v50}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v50

    .line 8088
    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 8095
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v48, v0

    const v49, 0x25007

    move/from16 v0, v48

    move/from16 v1, v49

    if-ne v0, v1, :cond_43

    const/4 v7, 0x1

    .line 8096
    .local v7, "checkUid":Z
    :goto_d
    if-eqz v7, :cond_3e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v49, v0

    .line 8097
    const/16 v50, 0x0

    .line 8096
    move-object/from16 v0, v48

    move/from16 v1, v49

    move/from16 v2, v50

    invoke-virtual {v0, v8, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->recordUidIfAuthorized(Landroid/net/wifi/WifiConfiguration;IZ)Z

    move-result v48

    if-eqz v48, :cond_44

    .line 8107
    :cond_3e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v48

    const/16 v49, -0x1

    move-object/from16 v0, v48

    move/from16 v1, v49

    invoke-virtual {v0, v8, v1}, Lcom/android/server/wifi/WifiConfigStore;->saveNetwork(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;

    move-result-object v31

    .line 8108
    .restart local v31    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v48

    const/16 v49, -0x1

    move/from16 v0, v48

    move/from16 v1, v49

    if-eq v0, v1, :cond_46

    .line 8109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get111(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v48

    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v49

    move/from16 v0, v48

    move/from16 v1, v49

    if-ne v0, v1, :cond_40

    .line 8110
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wifi/NetworkUpdateResult;->hasIpChanged()Z

    move-result v48

    if-eqz v48, :cond_3f

    .line 8114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    const-string/jumbo v49, "Reconfiguring IP on connection"

    invoke-virtual/range {v48 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 8117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v49, v0

    invoke-static/range {v49 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->-get66(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->-wrap60(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 8119
    :cond_3f
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wifi/NetworkUpdateResult;->hasProxyChanged()Z

    move-result v48

    if-eqz v48, :cond_40

    .line 8120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    const-string/jumbo v49, "Reconfiguring proxy on connection"

    invoke-virtual/range {v48 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 8121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    const v49, 0x2008c

    invoke-static/range {v48 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->-wrap62(Lcom/android/server/wifi/WifiStateMachine;I)V

    .line 8124
    :cond_40
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    const v49, 0x25009

    move-object/from16 v0, v48

    move-object/from16 v1, p1

    move/from16 v2, v49

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap42(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    .line 8125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    const/16 v49, 0x0

    move-object/from16 v0, v48

    move/from16 v1, v49

    invoke-static {v0, v1, v8}, Lcom/android/server/wifi/WifiStateMachine;->-wrap21(Lcom/android/server/wifi/WifiStateMachine;ILandroid/net/wifi/WifiConfiguration;)V

    .line 8127
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get9()Z

    move-result v48

    if-eqz v48, :cond_41

    .line 8128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v50, "Success save network nid="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    .line 8129
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v50

    invoke-static/range {v50 .. v50}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v50

    .line 8128
    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 8132
    :cond_41
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get78(Lcom/android/server/wifi/WifiStateMachine;)Landroid/util/LruCache;

    move-result-object v49

    monitor-enter v49

    .line 8138
    :try_start_3
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v48, v0

    const v50, 0x25007

    move/from16 v0, v48

    move/from16 v1, v50

    if-ne v0, v1, :cond_45

    const/16 v44, 0x1

    .line 8142
    .local v44, "user":Z
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v48

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v50, v0

    move-object/from16 v0, v48

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->checkConfigOverridePermission(I)Z

    move-result v28

    .line 8144
    .local v28, "persistConnect":Z
    if-eqz v44, :cond_42

    .line 8145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v48

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v50, v0

    move-object/from16 v0, v48

    move/from16 v1, v50

    invoke-virtual {v0, v8, v1}, Lcom/android/server/wifi/WifiConfigStore;->updateLastConnectUid(Landroid/net/wifi/WifiConfiguration;I)Z

    .line 8146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v48

    const/16 v50, 0x0

    move-object/from16 v0, v48

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->writeKnownNetworkHistory(Z)V

    .line 8149
    :cond_42
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get108(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiAutoJoinController;

    move-result-object v48

    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v50

    move-object/from16 v0, v48

    move/from16 v1, v50

    move/from16 v2, v44

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiAutoJoinController;->updateConfigurationHistory(IZZ)V

    .line 8151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get108(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiAutoJoinController;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Lcom/android/server/wifi/WifiAutoJoinController;->attemptAutoJoin()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto/16 :goto_3

    .line 8132
    .end local v28    # "persistConnect":Z
    .end local v44    # "user":Z
    :catchall_2
    move-exception v48

    monitor-exit v49

    throw v48

    .line 8095
    .end local v7    # "checkUid":Z
    .end local v31    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    :cond_43
    const/4 v7, 0x0

    .restart local v7    # "checkUid":Z
    goto/16 :goto_d

    .line 8098
    :cond_44
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v50, "Not authorized to update network  config="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    .line 8099
    iget-object v0, v8, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v50, v0

    .line 8098
    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    .line 8100
    const-string/jumbo v50, " cnid="

    .line 8098
    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    .line 8100
    iget v0, v8, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v50, v0

    .line 8098
    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    .line 8101
    const-string/jumbo v50, " uid="

    .line 8098
    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    .line 8101
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v50, v0

    .line 8098
    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->-wrap40(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 8102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    const v49, 0x25008

    .line 8103
    const/16 v50, 0x9

    .line 8102
    move-object/from16 v0, v48

    move-object/from16 v1, p1

    move/from16 v2, v49

    move/from16 v3, v50

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap43(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 8138
    .restart local v31    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    :cond_45
    const/16 v44, 0x0

    .restart local v44    # "user":Z
    goto/16 :goto_e

    .line 8154
    .end local v44    # "user":Z
    :cond_46
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    const-string/jumbo v49, "Failed to save network"

    invoke-virtual/range {v48 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 8155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get4()I

    move-result v49

    invoke-static/range {v48 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->-set55(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 8156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    const v49, 0x25008

    .line 8157
    const/16 v50, 0x0

    .line 8156
    move-object/from16 v0, v48

    move-object/from16 v1, p1

    move/from16 v2, v49

    move/from16 v3, v50

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap43(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 8163
    .end local v7    # "checkUid":Z
    .end local v8    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v25    # "nid":I
    .end local v31    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    :sswitch_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v48

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v49, v0

    invoke-virtual/range {v48 .. v49}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v41

    .line 8164
    .local v41, "toRemove":Landroid/net/wifi/WifiConfiguration;
    if-nez v41, :cond_47

    .line 8165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    const/16 v49, 0x0

    invoke-static/range {v48 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->-set3(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 8170
    :goto_f
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    .line 8172
    .restart local v23    # "netId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v48

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v49, v0

    .line 8173
    const/16 v50, 0x0

    .line 8172
    move-object/from16 v0, v48

    move/from16 v1, v49

    move/from16 v2, v23

    move/from16 v3, v50

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiConfigStore;->canModifyNetwork(IIZ)Z

    move-result v48

    if-nez v48, :cond_48

    .line 8174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v50, "Not authorized to forget network  cnid="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    .line 8176
    const-string/jumbo v50, " uid="

    .line 8174
    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    .line 8176
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v50, v0

    .line 8174
    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->-wrap40(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 8177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    const v49, 0x25005

    .line 8178
    const/16 v50, 0x9

    .line 8177
    move-object/from16 v0, v48

    move-object/from16 v1, p1

    move/from16 v2, v49

    move/from16 v3, v50

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap43(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 8167
    .end local v23    # "netId":I
    :cond_47
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    new-instance v49, Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v0, v49

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    invoke-static/range {v48 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->-set3(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    goto/16 :goto_f

    .line 8182
    .restart local v23    # "netId":I
    :cond_48
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v48

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v49, v0

    invoke-virtual/range {v48 .. v49}, Lcom/android/server/wifi/WifiConfigStore;->forgetNetwork(I)Z

    move-result v48

    if-eqz v48, :cond_49

    .line 8183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    const v49, 0x25006

    move-object/from16 v0, v48

    move-object/from16 v1, p1

    move/from16 v2, v49

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap42(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    .line 8184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v49, v0

    .line 8185
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v48, v0

    check-cast v48, Landroid/net/wifi/WifiConfiguration;

    .line 8184
    const/16 v50, 0x1

    move-object/from16 v0, v49

    move/from16 v1, v50

    move-object/from16 v2, v48

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap21(Lcom/android/server/wifi/WifiStateMachine;ILandroid/net/wifi/WifiConfiguration;)V

    goto/16 :goto_0

    .line 8187
    :cond_49
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    const-string/jumbo v49, "Failed to forget network"

    invoke-virtual/range {v48 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 8188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    const v49, 0x25005

    .line 8189
    const/16 v50, 0x0

    .line 8188
    move-object/from16 v0, v48

    move-object/from16 v1, p1

    move/from16 v2, v49

    move/from16 v3, v50

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap43(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 8193
    .end local v23    # "netId":I
    .end local v41    # "toRemove":Landroid/net/wifi/WifiConfiguration;
    :sswitch_1f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v46, v0

    check-cast v46, Landroid/net/wifi/WpsInfo;

    .line 8195
    .local v46, "wpsInfo":Landroid/net/wifi/WpsInfo;
    move-object/from16 v0, v46

    iget v0, v0, Landroid/net/wifi/WpsInfo;->setup:I

    move/from16 v48, v0

    packed-switch v48, :pswitch_data_0

    .line 8208
    new-instance v47, Landroid/net/wifi/WpsResult;

    sget-object v48, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    invoke-direct/range {v47 .. v48}, Landroid/net/wifi/WpsResult;-><init>(Landroid/net/wifi/WpsResult$Status;)V

    .line 8209
    .local v47, "wpsResult":Landroid/net/wifi/WpsResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    const-string/jumbo v49, "Invalid setup for WPS"

    invoke-virtual/range {v48 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 8212
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v48

    .line 8213
    const/16 v49, -0x1

    .line 8212
    invoke-virtual/range {v48 .. v49}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    .line 8214
    move-object/from16 v0, v47

    iget-object v0, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    move-object/from16 v48, v0

    sget-object v49, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    move-object/from16 v0, v48

    move-object/from16 v1, v49

    if-ne v0, v1, :cond_4a

    .line 8215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    const v49, 0x2500b

    move-object/from16 v0, v48

    move-object/from16 v1, p1

    move/from16 v2, v49

    move-object/from16 v3, v47

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap44(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    .line 8216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v49, v0

    invoke-static/range {v49 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->-get118(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->-wrap60(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 8197
    .end local v47    # "wpsResult":Landroid/net/wifi/WpsResult;
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-wrap5(Lcom/android/server/wifi/WifiStateMachine;)Z

    .line 8198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    const/16 v49, 0x1

    invoke-static/range {v48 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->-set28(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 8199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v48

    move-object/from16 v0, v48

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->startWpsPbc(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;

    move-result-object v47

    .restart local v47    # "wpsResult":Landroid/net/wifi/WpsResult;
    goto :goto_10

    .line 8202
    .end local v47    # "wpsResult":Landroid/net/wifi/WpsResult;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v48

    move-object/from16 v0, v48

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->startWpsWithPinFromAccessPoint(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;

    move-result-object v47

    .restart local v47    # "wpsResult":Landroid/net/wifi/WpsResult;
    goto :goto_10

    .line 8205
    .end local v47    # "wpsResult":Landroid/net/wifi/WpsResult;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v48

    move-object/from16 v0, v48

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->startWpsWithPinFromDevice(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;

    move-result-object v47

    .restart local v47    # "wpsResult":Landroid/net/wifi/WpsResult;
    goto/16 :goto_10

    .line 8218
    :cond_4a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v50, "Failed to start WPS with config "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v46 .. v46}, Landroid/net/wifi/WpsInfo;->toString()Ljava/lang/String;

    move-result-object v50

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 8219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    const v49, 0x2500c

    const/16 v50, 0x0

    move-object/from16 v0, v48

    move-object/from16 v1, p1

    move/from16 v2, v49

    move/from16 v3, v50

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap43(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 8223
    .end local v46    # "wpsInfo":Landroid/net/wifi/WpsInfo;
    .end local v47    # "wpsResult":Landroid/net/wifi/WpsResult;
    :sswitch_20
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    move-result v48

    if-eqz v48, :cond_4b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    const-string/jumbo v49, "Network connection established"

    invoke-virtual/range {v48 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 8224
    :cond_4b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v49, v0

    invoke-static/range {v48 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->-set34(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 8225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v49, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v48, v0

    check-cast v48, Ljava/lang/String;

    move-object/from16 v0, v49

    move-object/from16 v1, v48

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set31(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 8227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get111(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v48

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v49, v0

    invoke-static/range {v49 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->-get55(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Landroid/net/wifi/WifiInfo;->setBSSID(Ljava/lang/String;)V

    .line 8228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get111(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v48

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v49, v0

    invoke-static/range {v49 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->-get58(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v49

    invoke-virtual/range {v48 .. v49}, Landroid/net/wifi/WifiInfo;->setNetworkId(I)V

    .line 8230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v49, v0

    invoke-static/range {v49 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->-get55(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->-wrap47(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 8231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v49, v0

    invoke-static/range {v49 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->-get66(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->-wrap60(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 8243
    :sswitch_21
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    move-result v48

    if-eqz v48, :cond_4c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    const-string/jumbo v49, "ConnectModeState: Network connection lost "

    invoke-virtual/range {v48 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 8244
    :cond_4c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-wrap32(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 8245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v49, v0

    invoke-static/range {v49 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->-get31(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->-wrap60(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 8248
    :sswitch_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v49, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v48, v0

    check-cast v48, [Landroid/net/wifi/ScanResult;

    move-object/from16 v0, v49

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->processPnoNetworkFound([Landroid/net/wifi/ScanResult;)V

    goto/16 :goto_0

    .line 7466
    :sswitch_data_0
    .sparse-switch
        0x20034 -> :sswitch_5
        0x20035 -> :sswitch_6
        0x20036 -> :sswitch_7
        0x20037 -> :sswitch_8
        0x20038 -> :sswitch_b
        0x20039 -> :sswitch_c
        0x2003a -> :sswitch_d
        0x2003b -> :sswitch_e
        0x2003e -> :sswitch_11
        0x20049 -> :sswitch_13
        0x2004a -> :sswitch_14
        0x2004b -> :sswitch_15
        0x20061 -> :sswitch_19
        0x20062 -> :sswitch_a
        0x20063 -> :sswitch_12
        0x2008e -> :sswitch_16
        0x2008f -> :sswitch_18
        0x20091 -> :sswitch_17
        0x20092 -> :sswitch_1d
        0x20098 -> :sswitch_1a
        0x2009c -> :sswitch_22
        0x2300c -> :sswitch_4
        0x24003 -> :sswitch_20
        0x24004 -> :sswitch_21
        0x24006 -> :sswitch_3
        0x24007 -> :sswitch_1
        0x2400d -> :sswitch_2
        0x2400e -> :sswitch_2
        0x2400f -> :sswitch_f
        0x24010 -> :sswitch_10
        0x2402b -> :sswitch_0
        0x25001 -> :sswitch_1b
        0x25004 -> :sswitch_1e
        0x25007 -> :sswitch_1c
        0x2500a -> :sswitch_1f
        0x25011 -> :sswitch_9
    .end sparse-switch

    .line 8195
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
