.class public interface abstract Lcyanogenmod/weather/CMWeatherManager$LookupCityRequestListener;
.super Ljava/lang/Object;
.source "CMWeatherManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/weather/CMWeatherManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LookupCityRequestListener"
.end annotation


# virtual methods
.method public abstract onLookupCityRequestCompleted(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcyanogenmod/weather/WeatherLocation;",
            ">;)V"
        }
    .end annotation
.end method
