.class Lcyanogenmod/weatherservice/WeatherProviderService$ServiceHandler;
.super Landroid/os/Handler;
.source "WeatherProviderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/weatherservice/WeatherProviderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceHandler"
.end annotation


# static fields
.field public static final MSG_CANCEL_ONGOING_REQUESTS:I = 0x3

.field public static final MSG_ON_NEW_REQUEST:I = 0x2

.field public static final MSG_SET_CLIENT:I = 0x1


# instance fields
.field final synthetic this$0:Lcyanogenmod/weatherservice/WeatherProviderService;


# direct methods
.method public constructor <init>(Lcyanogenmod/weatherservice/WeatherProviderService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcyanogenmod/weatherservice/WeatherProviderService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 117
    iput-object p1, p0, Lcyanogenmod/weatherservice/WeatherProviderService$ServiceHandler;->this$0:Lcyanogenmod/weatherservice/WeatherProviderService;

    .line 118
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 117
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 126
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 125
    :goto_0
    return-void

    .line 128
    :pswitch_0
    iget-object v4, p0, Lcyanogenmod/weatherservice/WeatherProviderService$ServiceHandler;->this$0:Lcyanogenmod/weatherservice/WeatherProviderService;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcyanogenmod/weatherservice/IWeatherProviderServiceClient;

    invoke-static {v4, v3}, Lcyanogenmod/weatherservice/WeatherProviderService;->-set0(Lcyanogenmod/weatherservice/WeatherProviderService;Lcyanogenmod/weatherservice/IWeatherProviderServiceClient;)Lcyanogenmod/weatherservice/IWeatherProviderServiceClient;

    .line 129
    iget-object v3, p0, Lcyanogenmod/weatherservice/WeatherProviderService$ServiceHandler;->this$0:Lcyanogenmod/weatherservice/WeatherProviderService;

    invoke-static {v3}, Lcyanogenmod/weatherservice/WeatherProviderService;->-get0(Lcyanogenmod/weatherservice/WeatherProviderService;)Lcyanogenmod/weatherservice/IWeatherProviderServiceClient;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 130
    iget-object v3, p0, Lcyanogenmod/weatherservice/WeatherProviderService$ServiceHandler;->this$0:Lcyanogenmod/weatherservice/WeatherProviderService;

    invoke-virtual {v3}, Lcyanogenmod/weatherservice/WeatherProviderService;->onConnected()V

    .line 134
    :goto_1
    return-void

    .line 132
    :cond_0
    iget-object v3, p0, Lcyanogenmod/weatherservice/WeatherProviderService$ServiceHandler;->this$0:Lcyanogenmod/weatherservice/WeatherProviderService;

    invoke-virtual {v3}, Lcyanogenmod/weatherservice/WeatherProviderService;->onDisconnected()V

    goto :goto_1

    .line 137
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcyanogenmod/weather/RequestInfo;

    .line 138
    .local v0, "info":Lcyanogenmod/weather/RequestInfo;
    if-eqz v0, :cond_1

    .line 139
    new-instance v1, Lcyanogenmod/weatherservice/ServiceRequest;

    iget-object v3, p0, Lcyanogenmod/weatherservice/WeatherProviderService$ServiceHandler;->this$0:Lcyanogenmod/weatherservice/WeatherProviderService;

    invoke-static {v3}, Lcyanogenmod/weatherservice/WeatherProviderService;->-get0(Lcyanogenmod/weatherservice/WeatherProviderService;)Lcyanogenmod/weatherservice/IWeatherProviderServiceClient;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcyanogenmod/weatherservice/ServiceRequest;-><init>(Lcyanogenmod/weather/RequestInfo;Lcyanogenmod/weatherservice/IWeatherProviderServiceClient;)V

    .line 140
    .local v1, "request":Lcyanogenmod/weatherservice/ServiceRequest;
    iget-object v3, p0, Lcyanogenmod/weatherservice/WeatherProviderService$ServiceHandler;->this$0:Lcyanogenmod/weatherservice/WeatherProviderService;

    invoke-static {v3}, Lcyanogenmod/weatherservice/WeatherProviderService;->-get2(Lcyanogenmod/weatherservice/WeatherProviderService;)Ljava/util/Set;

    move-result-object v4

    monitor-enter v4

    .line 141
    :try_start_0
    iget-object v3, p0, Lcyanogenmod/weatherservice/WeatherProviderService$ServiceHandler;->this$0:Lcyanogenmod/weatherservice/WeatherProviderService;

    invoke-static {v3}, Lcyanogenmod/weatherservice/WeatherProviderService;->-get2(Lcyanogenmod/weatherservice/WeatherProviderService;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 143
    iget-object v3, p0, Lcyanogenmod/weatherservice/WeatherProviderService$ServiceHandler;->this$0:Lcyanogenmod/weatherservice/WeatherProviderService;

    invoke-virtual {v3, v1}, Lcyanogenmod/weatherservice/WeatherProviderService;->onRequestSubmitted(Lcyanogenmod/weatherservice/ServiceRequest;)V

    .line 145
    .end local v1    # "request":Lcyanogenmod/weatherservice/ServiceRequest;
    :cond_1
    return-void

    .line 140
    .restart local v1    # "request":Lcyanogenmod/weatherservice/ServiceRequest;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 148
    .end local v0    # "info":Lcyanogenmod/weather/RequestInfo;
    .end local v1    # "request":Lcyanogenmod/weatherservice/ServiceRequest;
    :pswitch_2
    iget-object v3, p0, Lcyanogenmod/weatherservice/WeatherProviderService$ServiceHandler;->this$0:Lcyanogenmod/weatherservice/WeatherProviderService;

    invoke-static {v3}, Lcyanogenmod/weatherservice/WeatherProviderService;->-get2(Lcyanogenmod/weatherservice/WeatherProviderService;)Ljava/util/Set;

    move-result-object v4

    monitor-enter v4

    .line 149
    :try_start_1
    iget-object v3, p0, Lcyanogenmod/weatherservice/WeatherProviderService$ServiceHandler;->this$0:Lcyanogenmod/weatherservice/WeatherProviderService;

    invoke-static {v3}, Lcyanogenmod/weatherservice/WeatherProviderService;->-get2(Lcyanogenmod/weatherservice/WeatherProviderService;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "request$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcyanogenmod/weatherservice/ServiceRequest;

    .line 150
    .restart local v1    # "request":Lcyanogenmod/weatherservice/ServiceRequest;
    if-eqz v1, :cond_2

    .line 151
    invoke-virtual {v1}, Lcyanogenmod/weatherservice/ServiceRequest;->cancel()V

    .line 152
    iget-object v3, p0, Lcyanogenmod/weatherservice/WeatherProviderService$ServiceHandler;->this$0:Lcyanogenmod/weatherservice/WeatherProviderService;

    invoke-static {v3}, Lcyanogenmod/weatherservice/WeatherProviderService;->-get2(Lcyanogenmod/weatherservice/WeatherProviderService;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 153
    iget-object v3, p0, Lcyanogenmod/weatherservice/WeatherProviderService$ServiceHandler;->this$0:Lcyanogenmod/weatherservice/WeatherProviderService;

    invoke-static {v3}, Lcyanogenmod/weatherservice/WeatherProviderService;->-get1(Lcyanogenmod/weatherservice/WeatherProviderService;)Landroid/os/Handler;

    move-result-object v3

    new-instance v5, Lcyanogenmod/weatherservice/WeatherProviderService$ServiceHandler$1;

    invoke-direct {v5, p0, v1}, Lcyanogenmod/weatherservice/WeatherProviderService$ServiceHandler$1;-><init>(Lcyanogenmod/weatherservice/WeatherProviderService$ServiceHandler;Lcyanogenmod/weatherservice/ServiceRequest;)V

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    .line 148
    .end local v1    # "request":Lcyanogenmod/weatherservice/ServiceRequest;
    .end local v2    # "request$iterator":Ljava/util/Iterator;
    :catchall_1
    move-exception v3

    monitor-exit v4

    throw v3

    .restart local v2    # "request$iterator":Ljava/util/Iterator;
    :cond_3
    monitor-exit v4

    goto/16 :goto_0

    .line 126
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
