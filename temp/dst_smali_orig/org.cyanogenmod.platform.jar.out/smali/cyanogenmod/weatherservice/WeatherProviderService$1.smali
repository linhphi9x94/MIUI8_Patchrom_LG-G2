.class Lcyanogenmod/weatherservice/WeatherProviderService$1;
.super Lcyanogenmod/weatherservice/IWeatherProviderService$Stub;
.source "WeatherProviderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/weatherservice/WeatherProviderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcyanogenmod/weatherservice/WeatherProviderService;


# direct methods
.method constructor <init>(Lcyanogenmod/weatherservice/WeatherProviderService;)V
    .locals 0
    .param p1, "this$0"    # Lcyanogenmod/weatherservice/WeatherProviderService;

    .prologue
    .line 92
    iput-object p1, p0, Lcyanogenmod/weatherservice/WeatherProviderService$1;->this$0:Lcyanogenmod/weatherservice/WeatherProviderService;

    invoke-direct {p0}, Lcyanogenmod/weatherservice/IWeatherProviderService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelOngoingRequests()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcyanogenmod/weatherservice/WeatherProviderService$1;->this$0:Lcyanogenmod/weatherservice/WeatherProviderService;

    invoke-static {v0}, Lcyanogenmod/weatherservice/WeatherProviderService;->-get1(Lcyanogenmod/weatherservice/WeatherProviderService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 110
    return-void
.end method

.method public processCityNameLookupRequest(Lcyanogenmod/weather/RequestInfo;)V
    .locals 2
    .param p1, "info"    # Lcyanogenmod/weather/RequestInfo;

    .prologue
    .line 101
    iget-object v0, p0, Lcyanogenmod/weatherservice/WeatherProviderService$1;->this$0:Lcyanogenmod/weatherservice/WeatherProviderService;

    invoke-static {v0}, Lcyanogenmod/weatherservice/WeatherProviderService;->-get1(Lcyanogenmod/weatherservice/WeatherProviderService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 100
    return-void
.end method

.method public processWeatherUpdateRequest(Lcyanogenmod/weather/RequestInfo;)V
    .locals 2
    .param p1, "info"    # Lcyanogenmod/weather/RequestInfo;

    .prologue
    .line 96
    iget-object v0, p0, Lcyanogenmod/weatherservice/WeatherProviderService$1;->this$0:Lcyanogenmod/weatherservice/WeatherProviderService;

    invoke-static {v0}, Lcyanogenmod/weatherservice/WeatherProviderService;->-get1(Lcyanogenmod/weatherservice/WeatherProviderService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 95
    return-void
.end method

.method public setServiceClient(Lcyanogenmod/weatherservice/IWeatherProviderServiceClient;)V
    .locals 2
    .param p1, "client"    # Lcyanogenmod/weatherservice/IWeatherProviderServiceClient;

    .prologue
    .line 106
    iget-object v0, p0, Lcyanogenmod/weatherservice/WeatherProviderService$1;->this$0:Lcyanogenmod/weatherservice/WeatherProviderService;

    invoke-static {v0}, Lcyanogenmod/weatherservice/WeatherProviderService;->-get1(Lcyanogenmod/weatherservice/WeatherProviderService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 105
    return-void
.end method
