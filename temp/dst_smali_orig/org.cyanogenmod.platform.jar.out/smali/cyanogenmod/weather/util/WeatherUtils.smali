.class public Lcyanogenmod/weather/util/WeatherUtils;
.super Ljava/lang/Object;
.source "WeatherUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static celsiusToFahrenheit(F)F
    .locals 2
    .param p0, "celsius"    # F

    .prologue
    .line 35
    const v0, 0x3fe66666    # 1.8f

    mul-float/2addr v0, p0

    const/high16 v1, 0x42000000    # 32.0f

    add-float/2addr v0, v1

    return v0
.end method

.method public static fahrenheitToCelsius(F)F
    .locals 2
    .param p0, "fahrenheit"    # F

    .prologue
    .line 44
    const/high16 v0, 0x42000000    # 32.0f

    sub-float v0, p0, v0

    const v1, 0x3f0e38e4

    mul-float/2addr v0, v1

    return v0
.end method

.method public static formatTemperature(FI)Ljava/lang/String;
    .locals 6
    .param p0, "temperature"    # F
    .param p1, "tempUnit"    # I

    .prologue
    .line 56
    invoke-static {p1}, Lcyanogenmod/weather/util/WeatherUtils;->isValidTempUnit(I)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    return-object v3

    .line 57
    :cond_0
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "-"

    return-object v3

    .line 59
    :cond_1
    new-instance v1, Ljava/text/DecimalFormat;

    const-string/jumbo v3, "0"

    invoke-direct {v1, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 60
    .local v1, "noDigitsFormat":Ljava/text/DecimalFormat;
    float-to-double v4, p0

    invoke-virtual {v1, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    .line 61
    .local v2, "noDigitsTemp":Ljava/lang/String;
    const-string/jumbo v3, "-0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 62
    const-string/jumbo v2, "0"

    .line 65
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 66
    const-string/jumbo v4, "\u00b0"

    .line 65
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 67
    .local v0, "formatted":Ljava/lang/StringBuilder;
    const/4 v3, 0x1

    if-ne p1, v3, :cond_4

    .line 68
    const-string/jumbo v3, "C"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    :cond_3
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 69
    :cond_4
    const/4 v3, 0x2

    if-ne p1, v3, :cond_3

    .line 70
    const-string/jumbo v3, "F"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static isValidTempUnit(I)Z
    .locals 1
    .param p0, "unit"    # I

    .prologue
    .line 76
    packed-switch p0, :pswitch_data_0

    .line 81
    const/4 v0, 0x0

    return v0

    .line 79
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 76
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
