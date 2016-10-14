.class public final Lcyanogenmod/weatherservice/ServiceRequest;
.super Ljava/lang/Object;
.source "ServiceRequest.java"


# instance fields
.field private volatile mCancelled:Z

.field private final mClient:Lcyanogenmod/weatherservice/IWeatherProviderServiceClient;

.field private final mInfo:Lcyanogenmod/weather/RequestInfo;


# direct methods
.method constructor <init>(Lcyanogenmod/weather/RequestInfo;Lcyanogenmod/weatherservice/IWeatherProviderServiceClient;)V
    .locals 0
    .param p1, "info"    # Lcyanogenmod/weather/RequestInfo;
    .param p2, "client"    # Lcyanogenmod/weatherservice/IWeatherProviderServiceClient;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcyanogenmod/weatherservice/ServiceRequest;->mInfo:Lcyanogenmod/weather/RequestInfo;

    .line 40
    iput-object p2, p0, Lcyanogenmod/weatherservice/ServiceRequest;->mClient:Lcyanogenmod/weatherservice/IWeatherProviderServiceClient;

    .line 38
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcyanogenmod/weatherservice/ServiceRequest;->mCancelled:Z

    .line 115
    return-void
.end method

.method public complete(Lcyanogenmod/weatherservice/ServiceRequestResult;)V
    .locals 6
    .param p1, "result"    # Lcyanogenmod/weatherservice/ServiceRequestResult;

    .prologue
    .line 55
    iget-boolean v2, p0, Lcyanogenmod/weatherservice/ServiceRequest;->mCancelled:Z

    if-nez v2, :cond_0

    .line 57
    :try_start_0
    iget-object v2, p0, Lcyanogenmod/weatherservice/ServiceRequest;->mInfo:Lcyanogenmod/weather/RequestInfo;

    invoke-virtual {v2}, Lcyanogenmod/weather/RequestInfo;->getRequestType()I

    move-result v1

    .line 58
    .local v1, "requestType":I
    packed-switch v1, :pswitch_data_0

    .line 54
    .end local v1    # "requestType":I
    :cond_0
    :goto_0
    return-void

    .line 61
    .restart local v1    # "requestType":I
    :pswitch_0
    invoke-virtual {p1}, Lcyanogenmod/weatherservice/ServiceRequestResult;->getWeatherInfo()Lcyanogenmod/weather/WeatherInfo;

    move-result-object v2

    if-nez v2, :cond_1

    .line 62
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "The service request result does not contain a valid WeatherInfo object"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 80
    .end local v1    # "requestType":I
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 65
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "requestType":I
    :cond_1
    iget-object v2, p0, Lcyanogenmod/weatherservice/ServiceRequest;->mClient:Lcyanogenmod/weatherservice/IWeatherProviderServiceClient;

    iget-object v3, p0, Lcyanogenmod/weatherservice/ServiceRequest;->mInfo:Lcyanogenmod/weather/RequestInfo;

    .line 66
    const/4 v4, 0x1

    .line 65
    invoke-interface {v2, v3, p1, v4}, Lcyanogenmod/weatherservice/IWeatherProviderServiceClient;->setServiceRequestState(Lcyanogenmod/weather/RequestInfo;Lcyanogenmod/weatherservice/ServiceRequestResult;I)V

    goto :goto_0

    .line 69
    :pswitch_1
    invoke-virtual {p1}, Lcyanogenmod/weatherservice/ServiceRequestResult;->getLocationLookupList()Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_2

    .line 72
    iget-object v2, p0, Lcyanogenmod/weatherservice/ServiceRequest;->mClient:Lcyanogenmod/weatherservice/IWeatherProviderServiceClient;

    iget-object v3, p0, Lcyanogenmod/weatherservice/ServiceRequest;->mInfo:Lcyanogenmod/weather/RequestInfo;

    const/4 v4, 0x0

    .line 73
    const/16 v5, -0x65

    .line 72
    invoke-interface {v2, v3, v4, v5}, Lcyanogenmod/weatherservice/IWeatherProviderServiceClient;->setServiceRequestState(Lcyanogenmod/weather/RequestInfo;Lcyanogenmod/weatherservice/ServiceRequestResult;I)V

    goto :goto_0

    .line 75
    :cond_2
    iget-object v2, p0, Lcyanogenmod/weatherservice/ServiceRequest;->mClient:Lcyanogenmod/weatherservice/IWeatherProviderServiceClient;

    iget-object v3, p0, Lcyanogenmod/weatherservice/ServiceRequest;->mInfo:Lcyanogenmod/weather/RequestInfo;

    .line 76
    const/16 v4, 0x64

    .line 75
    invoke-interface {v2, v3, p1, v4}, Lcyanogenmod/weatherservice/IWeatherProviderServiceClient;->setServiceRequestState(Lcyanogenmod/weather/RequestInfo;Lcyanogenmod/weatherservice/ServiceRequestResult;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 58
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public fail()V
    .locals 6

    .prologue
    .line 90
    iget-boolean v2, p0, Lcyanogenmod/weatherservice/ServiceRequest;->mCancelled:Z

    if-nez v2, :cond_0

    .line 92
    :try_start_0
    iget-object v2, p0, Lcyanogenmod/weatherservice/ServiceRequest;->mInfo:Lcyanogenmod/weather/RequestInfo;

    invoke-virtual {v2}, Lcyanogenmod/weather/RequestInfo;->getRequestType()I

    move-result v1

    .line 93
    .local v1, "requestType":I
    packed-switch v1, :pswitch_data_0

    .line 89
    .end local v1    # "requestType":I
    :cond_0
    :goto_0
    return-void

    .line 96
    .restart local v1    # "requestType":I
    :pswitch_0
    iget-object v2, p0, Lcyanogenmod/weatherservice/ServiceRequest;->mClient:Lcyanogenmod/weatherservice/IWeatherProviderServiceClient;

    iget-object v3, p0, Lcyanogenmod/weatherservice/ServiceRequest;->mInfo:Lcyanogenmod/weather/RequestInfo;

    const/4 v4, 0x0

    .line 97
    const/4 v5, -0x2

    .line 96
    invoke-interface {v2, v3, v4, v5}, Lcyanogenmod/weatherservice/IWeatherProviderServiceClient;->setServiceRequestState(Lcyanogenmod/weather/RequestInfo;Lcyanogenmod/weatherservice/ServiceRequestResult;I)V

    goto :goto_0

    .line 104
    .end local v1    # "requestType":I
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 100
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "requestType":I
    :pswitch_1
    iget-object v2, p0, Lcyanogenmod/weatherservice/ServiceRequest;->mClient:Lcyanogenmod/weatherservice/IWeatherProviderServiceClient;

    iget-object v3, p0, Lcyanogenmod/weatherservice/ServiceRequest;->mInfo:Lcyanogenmod/weather/RequestInfo;

    const/4 v4, 0x0

    .line 101
    const/16 v5, -0x64

    .line 100
    invoke-interface {v2, v3, v4, v5}, Lcyanogenmod/weatherservice/IWeatherProviderServiceClient;->setServiceRequestState(Lcyanogenmod/weather/RequestInfo;Lcyanogenmod/weatherservice/ServiceRequestResult;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getRequestInfo()Lcyanogenmod/weather/RequestInfo;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcyanogenmod/weatherservice/ServiceRequest;->mInfo:Lcyanogenmod/weather/RequestInfo;

    return-object v0
.end method
