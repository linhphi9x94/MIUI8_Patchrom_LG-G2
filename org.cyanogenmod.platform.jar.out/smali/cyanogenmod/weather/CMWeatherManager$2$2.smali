.class Lcyanogenmod/weather/CMWeatherManager$2$2;
.super Ljava/lang/Object;
.source "CMWeatherManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcyanogenmod/weather/CMWeatherManager$2;->onLookupCityRequestCompleted(Lcyanogenmod/weather/RequestInfo;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcyanogenmod/weather/CMWeatherManager$2;

.field final synthetic val$listener:Lcyanogenmod/weather/CMWeatherManager$LookupCityRequestListener;

.field final synthetic val$weatherLocations:Ljava/util/List;


# direct methods
.method constructor <init>(Lcyanogenmod/weather/CMWeatherManager$2;Ljava/util/List;Lcyanogenmod/weather/CMWeatherManager$LookupCityRequestListener;)V
    .locals 0
    .param p1, "this$1"    # Lcyanogenmod/weather/CMWeatherManager$2;
    .param p3, "val$listener"    # Lcyanogenmod/weather/CMWeatherManager$LookupCityRequestListener;

    .prologue
    .line 312
    .local p2, "val$weatherLocations":Ljava/util/List;, "Ljava/util/List<Lcyanogenmod/weather/WeatherLocation;>;"
    iput-object p1, p0, Lcyanogenmod/weather/CMWeatherManager$2$2;->this$1:Lcyanogenmod/weather/CMWeatherManager$2;

    iput-object p2, p0, Lcyanogenmod/weather/CMWeatherManager$2$2;->val$weatherLocations:Ljava/util/List;

    iput-object p3, p0, Lcyanogenmod/weather/CMWeatherManager$2$2;->val$listener:Lcyanogenmod/weather/CMWeatherManager$LookupCityRequestListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 315
    const/4 v0, 0x0

    .line 316
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcyanogenmod/weather/WeatherLocation;>;"
    iget-object v1, p0, Lcyanogenmod/weather/CMWeatherManager$2$2;->val$weatherLocations:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 317
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcyanogenmod/weather/WeatherLocation;>;"
    iget-object v1, p0, Lcyanogenmod/weather/CMWeatherManager$2$2;->val$weatherLocations:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 319
    :cond_0
    iget-object v1, p0, Lcyanogenmod/weather/CMWeatherManager$2$2;->val$listener:Lcyanogenmod/weather/CMWeatherManager$LookupCityRequestListener;

    invoke-interface {v1, v0}, Lcyanogenmod/weather/CMWeatherManager$LookupCityRequestListener;->onLookupCityRequestCompleted(Ljava/util/ArrayList;)V

    .line 314
    return-void
.end method
