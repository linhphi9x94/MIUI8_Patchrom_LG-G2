.class Lcyanogenmod/weatherservice/WeatherProviderService$ServiceHandler$1;
.super Ljava/lang/Object;
.source "WeatherProviderService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcyanogenmod/weatherservice/WeatherProviderService$ServiceHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcyanogenmod/weatherservice/WeatherProviderService$ServiceHandler;

.field final synthetic val$request:Lcyanogenmod/weatherservice/ServiceRequest;


# direct methods
.method constructor <init>(Lcyanogenmod/weatherservice/WeatherProviderService$ServiceHandler;Lcyanogenmod/weatherservice/ServiceRequest;)V
    .locals 0
    .param p1, "this$1"    # Lcyanogenmod/weatherservice/WeatherProviderService$ServiceHandler;
    .param p2, "val$request"    # Lcyanogenmod/weatherservice/ServiceRequest;

    .prologue
    .line 153
    iput-object p1, p0, Lcyanogenmod/weatherservice/WeatherProviderService$ServiceHandler$1;->this$1:Lcyanogenmod/weatherservice/WeatherProviderService$ServiceHandler;

    iput-object p2, p0, Lcyanogenmod/weatherservice/WeatherProviderService$ServiceHandler$1;->val$request:Lcyanogenmod/weatherservice/ServiceRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcyanogenmod/weatherservice/WeatherProviderService$ServiceHandler$1;->this$1:Lcyanogenmod/weatherservice/WeatherProviderService$ServiceHandler;

    iget-object v0, v0, Lcyanogenmod/weatherservice/WeatherProviderService$ServiceHandler;->this$0:Lcyanogenmod/weatherservice/WeatherProviderService;

    iget-object v1, p0, Lcyanogenmod/weatherservice/WeatherProviderService$ServiceHandler$1;->val$request:Lcyanogenmod/weatherservice/ServiceRequest;

    invoke-virtual {v0, v1}, Lcyanogenmod/weatherservice/WeatherProviderService;->onRequestCancelled(Lcyanogenmod/weatherservice/ServiceRequest;)V

    .line 155
    return-void
.end method
