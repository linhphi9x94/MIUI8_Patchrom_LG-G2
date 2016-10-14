.class public Landroid/graphics/Typeface;
.super Ljava/lang/Object;
.source "Typeface.java"


# static fields
.field public static final BOLD:I = 0x1

.field public static final BOLD_ITALIC:I = 0x3

.field public static final DEFAULT:Landroid/graphics/Typeface;

.field public static final DEFAULT_BOLD:Landroid/graphics/Typeface;

.field private static DEFAULT_BOLD_INTERNAL:Landroid/graphics/Typeface; = null

.field private static DEFAULT_INTERNAL:Landroid/graphics/Typeface; = null

.field static final FONTS_CONFIG:Ljava/lang/String; = "fonts.xml"

.field public static final ITALIC:I = 0x2

.field public static final MONOSPACE:Landroid/graphics/Typeface;

.field private static MONOSPACE_INTERNAL:Landroid/graphics/Typeface; = null

.field public static final NORMAL:I = 0x0

.field public static final SANS_SERIF:Landroid/graphics/Typeface;

.field static final SANS_SERIF_FAMILY_NAME:Ljava/lang/String; = "sans-serif"

.field private static SANS_SERIF_INTERNAL:Landroid/graphics/Typeface;

.field public static final SERIF:Landroid/graphics/Typeface;

.field private static SERIF_INTERNAL:Landroid/graphics/Typeface;

.field private static TAG:Ljava/lang/String;

.field static sDefaultTypeface:Landroid/graphics/Typeface;

.field static sDefaults:[Landroid/graphics/Typeface;

.field static sFallbackFonts:[Landroid/graphics/FontFamily;

.field static sSystemFontMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private static final sTypefaceCache:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Typeface;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mStyle:I

.field public native_instance:J


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x3

    const/4 v1, 0x0

    const/4 v4, 0x0

    const-string v0, "Typeface"

    sput-object v0, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0, v5}, Landroid/util/LongSparseArray;-><init>(I)V

    sput-object v0, Landroid/graphics/Typeface;->sTypefaceCache:Landroid/util/LongSparseArray;

    invoke-static {v4}, Landroid/graphics/Typeface;->init(Z)V

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->DEFAULT_INTERNAL:Landroid/graphics/Typeface;

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD_INTERNAL:Landroid/graphics/Typeface;

    const-string v0, "sans-serif"

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->SANS_SERIF_INTERNAL:Landroid/graphics/Typeface;

    const-string v0, "serif"

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->SERIF_INTERNAL:Landroid/graphics/Typeface;

    const-string v0, "monospace"

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->MONOSPACE_INTERNAL:Landroid/graphics/Typeface;

    new-instance v0, Landroid/graphics/Typeface;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_INTERNAL:Landroid/graphics/Typeface;

    iget-wide v2, v2, Landroid/graphics/Typeface;->native_instance:J

    invoke-direct {v0, v2, v3}, Landroid/graphics/Typeface;-><init>(J)V

    sput-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    new-instance v0, Landroid/graphics/Typeface;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD_INTERNAL:Landroid/graphics/Typeface;

    iget-wide v2, v2, Landroid/graphics/Typeface;->native_instance:J

    invoke-direct {v0, v2, v3}, Landroid/graphics/Typeface;-><init>(J)V

    sput-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    new-instance v0, Landroid/graphics/Typeface;

    sget-object v2, Landroid/graphics/Typeface;->SANS_SERIF_INTERNAL:Landroid/graphics/Typeface;

    iget-wide v2, v2, Landroid/graphics/Typeface;->native_instance:J

    invoke-direct {v0, v2, v3}, Landroid/graphics/Typeface;-><init>(J)V

    sput-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    new-instance v0, Landroid/graphics/Typeface;

    sget-object v2, Landroid/graphics/Typeface;->SERIF_INTERNAL:Landroid/graphics/Typeface;

    iget-wide v2, v2, Landroid/graphics/Typeface;->native_instance:J

    invoke-direct {v0, v2, v3}, Landroid/graphics/Typeface;-><init>(J)V

    sput-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    new-instance v0, Landroid/graphics/Typeface;

    sget-object v2, Landroid/graphics/Typeface;->MONOSPACE_INTERNAL:Landroid/graphics/Typeface;

    iget-wide v2, v2, Landroid/graphics/Typeface;->native_instance:J

    invoke-direct {v0, v2, v3}, Landroid/graphics/Typeface;-><init>(J)V

    sput-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    const/4 v0, 0x4

    new-array v2, v0, [Landroid/graphics/Typeface;

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    aput-object v0, v2, v4

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    aput-object v0, v2, v6

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    aput-object v0, v2, v7

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    aput-object v0, v2, v5

    sput-object v2, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    return-void
.end method

.method private constructor <init>(J)V
    .locals 3
    .param p1, "ni"    # J

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/Typeface;->mStyle:I

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "native typeface cannot be made"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-wide p1, p0, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {p1, p2}, Landroid/graphics/Typeface;->nativeGetStyle(J)I

    move-result v0

    iput v0, p0, Landroid/graphics/Typeface;->mStyle:I

    return-void
.end method

.method private static addFallbackFontsForFamilyName(Landroid/graphics/FontListParser$Config;Landroid/graphics/FontListParser$Config;Ljava/lang/String;)V
    .locals 3
    .param p0, "src"    # Landroid/graphics/FontListParser$Config;
    .param p1, "dst"    # Landroid/graphics/FontListParser$Config;
    .param p2, "familyName"    # Ljava/lang/String;

    .prologue
    iget-object v2, p0, Landroid/graphics/FontListParser$Config;->families:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "srcFamily$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/FontListParser$Family;

    .local v0, "srcFamily":Landroid/graphics/FontListParser$Family;
    iget-object v2, v0, Landroid/graphics/FontListParser$Family;->name:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    iput-object v2, v0, Landroid/graphics/FontListParser$Family;->name:Ljava/lang/String;

    iget-object v2, p1, Landroid/graphics/FontListParser$Config;->families:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .end local v0    # "srcFamily":Landroid/graphics/FontListParser$Family;
    :cond_1
    return-void
.end method

.method private static addMissingFontAliases(Landroid/graphics/FontListParser$Config;Landroid/graphics/FontListParser$Config;)V
    .locals 7
    .param p0, "src"    # Landroid/graphics/FontListParser$Config;
    .param p1, "dst"    # Landroid/graphics/FontListParser$Config;

    .prologue
    iget-object v6, p1, Landroid/graphics/FontListParser$Config;->aliases:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "N":I
    iget-object v6, p0, Landroid/graphics/FontListParser$Config;->aliases:Ljava/util/List;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "alias$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/FontListParser$Alias;

    .local v2, "alias":Landroid/graphics/FontListParser$Alias;
    const/4 v1, 0x1

    .local v1, "addAlias":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v0, :cond_1

    iget-object v6, p1, Landroid/graphics/FontListParser$Config;->aliases:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/FontListParser$Alias;

    iget-object v4, v6, Landroid/graphics/FontListParser$Alias;->name:Ljava/lang/String;

    .local v4, "dstAliasName":Ljava/lang/String;
    if-eqz v4, :cond_2

    iget-object v6, v2, Landroid/graphics/FontListParser$Alias;->name:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v1, 0x0

    .end local v4    # "dstAliasName":Ljava/lang/String;
    :cond_1
    if-eqz v1, :cond_0

    iget-object v6, p1, Landroid/graphics/FontListParser$Config;->aliases:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .restart local v4    # "dstAliasName":Ljava/lang/String;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .end local v1    # "addAlias":Z
    .end local v2    # "alias":Landroid/graphics/FontListParser$Alias;
    .end local v4    # "dstAliasName":Ljava/lang/String;
    .end local v5    # "i":I
    :cond_3
    return-void
.end method

.method private static addMissingFontFamilies(Landroid/graphics/FontListParser$Config;Landroid/graphics/FontListParser$Config;)V
    .locals 8
    .param p0, "src"    # Landroid/graphics/FontListParser$Config;
    .param p1, "dst"    # Landroid/graphics/FontListParser$Config;

    .prologue
    iget-object v7, p1, Landroid/graphics/FontListParser$Config;->families:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "N":I
    iget-object v7, p0, Landroid/graphics/FontListParser$Config;->families:Ljava/util/List;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "srcFamily$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/FontListParser$Family;

    .local v5, "srcFamily":Landroid/graphics/FontListParser$Family;
    const/4 v1, 0x1

    .local v1, "addFamily":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v0, :cond_1

    iget-object v7, p1, Landroid/graphics/FontListParser$Config;->families:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/FontListParser$Family;

    .local v2, "dstFamily":Landroid/graphics/FontListParser$Family;
    iget-object v3, v2, Landroid/graphics/FontListParser$Family;->name:Ljava/lang/String;

    .local v3, "dstFamilyName":Ljava/lang/String;
    if-eqz v3, :cond_2

    iget-object v7, v5, Landroid/graphics/FontListParser$Family;->name:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v1, 0x0

    .end local v2    # "dstFamily":Landroid/graphics/FontListParser$Family;
    .end local v3    # "dstFamilyName":Ljava/lang/String;
    :cond_1
    if-eqz v1, :cond_0

    iget-object v7, p1, Landroid/graphics/FontListParser$Config;->families:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .restart local v2    # "dstFamily":Landroid/graphics/FontListParser$Family;
    .restart local v3    # "dstFamilyName":Ljava/lang/String;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v1    # "addFamily":Z
    .end local v2    # "dstFamily":Landroid/graphics/FontListParser$Family;
    .end local v3    # "dstFamilyName":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v5    # "srcFamily":Landroid/graphics/FontListParser$Family;
    :cond_3
    return-void
.end method

.method public static create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;
    .locals 6
    .param p0, "family"    # Landroid/graphics/Typeface;
    .param p1, "style"    # I

    .prologue
    if-ltz p1, :cond_0

    const/4 v4, 0x3

    if-le p1, v4, :cond_1

    :cond_0
    const/4 p1, 0x0

    :cond_1
    const-wide/16 v0, 0x0

    .local v0, "ni":J
    if-eqz p0, :cond_3

    iget v4, p0, Landroid/graphics/Typeface;->mStyle:I

    if-ne v4, p1, :cond_2

    return-object p0

    :cond_2
    iget-wide v0, p0, Landroid/graphics/Typeface;->native_instance:J

    :cond_3
    sget-object v4, Landroid/graphics/Typeface;->sTypefaceCache:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .local v2, "styles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Typeface;>;"
    if-eqz v2, :cond_4

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Typeface;

    .local v3, "typeface":Landroid/graphics/Typeface;
    if-eqz v3, :cond_4

    return-object v3

    .end local v3    # "typeface":Landroid/graphics/Typeface;
    :cond_4
    new-instance v3, Landroid/graphics/Typeface;

    invoke-static {v0, v1, p1}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Landroid/graphics/Typeface;-><init>(J)V

    .restart local v3    # "typeface":Landroid/graphics/Typeface;
    if-nez v2, :cond_5

    new-instance v2, Landroid/util/SparseArray;

    .end local v2    # "styles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Typeface;>;"
    const/4 v4, 0x4

    invoke-direct {v2, v4}, Landroid/util/SparseArray;-><init>(I)V

    .restart local v2    # "styles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Typeface;>;"
    sget-object v4, Landroid/graphics/Typeface;->sTypefaceCache:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v0, v1, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_5
    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v3
.end method

.method public static create(Ljava/lang/String;I)Landroid/graphics/Typeface;
    .locals 2
    .param p0, "familyName"    # Ljava/lang/String;
    .param p1, "style"    # I

    .prologue
    const/4 v1, 0x0

    sget-object v0, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    invoke-static {v0, p1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public static createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 5
    .param p0, "mgr"    # Landroid/content/res/AssetManager;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    sget-object v2, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    if-eqz v2, :cond_0

    new-instance v1, Landroid/graphics/FontFamily;

    invoke-direct {v1}, Landroid/graphics/FontFamily;-><init>()V

    .local v1, "fontFamily":Landroid/graphics/FontFamily;
    invoke-virtual {v1, p0, p1}, Landroid/graphics/FontFamily;->addFontFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    new-array v0, v2, [Landroid/graphics/FontFamily;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .local v0, "families":[Landroid/graphics/FontFamily;
    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFamiliesWithDefault([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v2

    return-object v2

    .end local v0    # "families":[Landroid/graphics/FontFamily;
    .end local v1    # "fontFamily":Landroid/graphics/FontFamily;
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Font asset not found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static createFromFamilies([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;
    .locals 6
    .param p0, "families"    # [Landroid/graphics/FontFamily;

    .prologue
    array-length v3, p0

    new-array v1, v3, [J

    .local v1, "ptrArray":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_0

    aget-object v3, p0, v0

    iget-wide v4, v3, Landroid/graphics/FontFamily;->mNativePtr:J

    aput-wide v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/graphics/Typeface;

    invoke-static {v1}, Landroid/graphics/Typeface;->nativeCreateFromArray([J)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Landroid/graphics/Typeface;-><init>(J)V

    .local v2, "typeface":Landroid/graphics/Typeface;
    return-object v2
.end method

.method public static createFromFamiliesWithDefault([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;
    .locals 6
    .param p0, "families"    # [Landroid/graphics/FontFamily;

    .prologue
    array-length v2, p0

    sget-object v3, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    array-length v3, v3

    add-int/2addr v2, v3

    new-array v1, v2, [J

    .local v1, "ptrArray":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget-object v2, p0, v0

    iget-wide v2, v2, Landroid/graphics/FontFamily;->mNativePtr:J

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    sget-object v2, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    array-length v2, p0

    add-int/2addr v2, v0

    sget-object v3, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    aget-object v3, v3, v0

    iget-wide v4, v3, Landroid/graphics/FontFamily;->mNativePtr:J

    aput-wide v4, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    new-instance v2, Landroid/graphics/Typeface;

    invoke-static {v1}, Landroid/graphics/Typeface;->nativeCreateFromArray([J)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Landroid/graphics/Typeface;-><init>(J)V

    return-object v2
.end method

.method public static createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;
    .locals 1
    .param p0, "path"    # Ljava/io/File;

    .prologue
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public static createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 5
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    sget-object v2, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    if-eqz v2, :cond_0

    new-instance v1, Landroid/graphics/FontFamily;

    invoke-direct {v1}, Landroid/graphics/FontFamily;-><init>()V

    .local v1, "fontFamily":Landroid/graphics/FontFamily;
    invoke-virtual {v1, p0}, Landroid/graphics/FontFamily;->addFont(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    new-array v0, v2, [Landroid/graphics/FontFamily;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .local v0, "families":[Landroid/graphics/FontFamily;
    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFamiliesWithDefault([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v2

    return-object v2

    .end local v0    # "families":[Landroid/graphics/FontFamily;
    .end local v1    # "fontFamily":Landroid/graphics/FontFamily;
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Font not found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static defaultFromStyle(I)Landroid/graphics/Typeface;
    .locals 1
    .param p0, "style"    # I

    .prologue
    sget-object v0, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v0, v0, p0

    return-object v0
.end method

.method private static getSystemFontConfigLocation()Ljava/io/File;
    .locals 2

    .prologue
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static getSystemFontDirLocation()Ljava/io/File;
    .locals 2

    .prologue
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/fonts/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static getThemeFontConfigLocation()Ljava/io/File;
    .locals 2

    .prologue
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/theme/fonts/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static getThemeFontDirLocation()Ljava/io/File;
    .locals 2

    .prologue
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/theme/fonts/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static init(Z)V
    .locals 31
    .param p0, "forceSystemFonts"    # Z

    .prologue
    invoke-static {}, Landroid/graphics/Typeface;->getSystemFontConfigLocation()Ljava/io/File;

    move-result-object v22

    .local v22, "systemFontConfigLocation":Ljava/io/File;
    invoke-static {}, Landroid/graphics/Typeface;->getThemeFontConfigLocation()Ljava/io/File;

    move-result-object v25

    .local v25, "themeFontConfigLocation":Ljava/io/File;
    new-instance v20, Ljava/io/File;

    const-string v28, "fonts.xml"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v20, "systemConfigFile":Ljava/io/File;
    new-instance v24, Ljava/io/File;

    const-string v28, "fonts.xml"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v24, "themeConfigFile":Ljava/io/File;
    const/4 v7, 0x0

    .local v7, "configFile":Ljava/io/File;
    if-nez p0, :cond_3

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->exists()Z

    move-result v28

    if-eqz v28, :cond_3

    move-object/from16 v7, v24

    .local v7, "configFile":Ljava/io/File;
    invoke-static {}, Landroid/graphics/Typeface;->getThemeFontDirLocation()Ljava/io/File;

    move-result-object v16

    .local v16, "fontDir":Ljava/io/File;
    :goto_0
    :try_start_0
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-static {v7, v0}, Landroid/graphics/FontListParser;->parse(Ljava/io/File;Ljava/lang/String;)Landroid/graphics/FontListParser$Config;

    move-result-object v15

    .local v15, "fontConfig":Landroid/graphics/FontListParser$Config;
    const/16 v21, 0x0

    .local v21, "systemFontConfig":Landroid/graphics/FontListParser$Config;
    move-object/from16 v0, v24

    if-ne v7, v0, :cond_0

    invoke-static {}, Landroid/graphics/Typeface;->getSystemFontDirLocation()Ljava/io/File;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/graphics/FontListParser;->parse(Ljava/io/File;Ljava/lang/String;)Landroid/graphics/FontListParser$Config;

    move-result-object v21

    .local v21, "systemFontConfig":Landroid/graphics/FontListParser$Config;
    const-string v28, "sans-serif"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-static {v0, v15, v1}, Landroid/graphics/Typeface;->addFallbackFontsForFamilyName(Landroid/graphics/FontListParser$Config;Landroid/graphics/FontListParser$Config;Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-static {v0, v15}, Landroid/graphics/Typeface;->addMissingFontFamilies(Landroid/graphics/FontListParser$Config;Landroid/graphics/FontListParser$Config;)V

    move-object/from16 v0, v21

    invoke-static {v0, v15}, Landroid/graphics/Typeface;->addMissingFontAliases(Landroid/graphics/FontListParser$Config;Landroid/graphics/FontListParser$Config;)V

    .end local v21    # "systemFontConfig":Landroid/graphics/FontListParser$Config;
    :cond_0
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .local v14, "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontFamily;>;"
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_1
    iget-object v0, v15, Landroid/graphics/FontListParser$Config;->families:Ljava/util/List;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v28

    move/from16 v0, v18

    move/from16 v1, v28

    if-ge v0, v1, :cond_4

    iget-object v0, v15, Landroid/graphics/FontListParser$Config;->families:Ljava/util/List;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/FontListParser$Family;

    .local v12, "f":Landroid/graphics/FontListParser$Family;
    if-eqz v18, :cond_1

    iget-object v0, v12, Landroid/graphics/FontListParser$Family;->name:Ljava/lang/String;

    move-object/from16 v28, v0

    if-nez v28, :cond_2

    :cond_1
    invoke-static {v12}, Landroid/graphics/Typeface;->makeFamilyFromParsed(Landroid/graphics/FontListParser$Family;)Landroid/graphics/FontFamily;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2

    :cond_2
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .end local v12    # "f":Landroid/graphics/FontListParser$Family;
    .end local v14    # "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontFamily;>;"
    .end local v15    # "fontConfig":Landroid/graphics/FontListParser$Config;
    .end local v16    # "fontDir":Ljava/io/File;
    .end local v18    # "i":I
    .local v7, "configFile":Ljava/io/File;
    :cond_3
    move-object/from16 v7, v20

    .local v7, "configFile":Ljava/io/File;
    invoke-static {}, Landroid/graphics/Typeface;->getSystemFontDirLocation()Ljava/io/File;

    move-result-object v16

    .restart local v16    # "fontDir":Ljava/io/File;
    goto :goto_0

    .restart local v14    # "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontFamily;>;"
    .restart local v15    # "fontConfig":Landroid/graphics/FontListParser$Config;
    .restart local v18    # "i":I
    :cond_4
    :try_start_1
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v28

    move/from16 v0, v28

    new-array v0, v0, [Landroid/graphics/FontFamily;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-interface {v14, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v28

    check-cast v28, [Landroid/graphics/FontFamily;

    sput-object v28, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    sget-object v28, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    invoke-static/range {v28 .. v28}, Landroid/graphics/Typeface;->createFromFamilies([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Landroid/graphics/Typeface;->setDefault(Landroid/graphics/Typeface;)V

    new-instance v23, Ljava/util/HashMap;

    invoke-direct/range {v23 .. v23}, Ljava/util/HashMap;-><init>()V

    .local v23, "systemFonts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    const/16 v18, 0x0

    :goto_2
    iget-object v0, v15, Landroid/graphics/FontListParser$Config;->families:Ljava/util/List;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v28

    move/from16 v0, v18

    move/from16 v1, v28

    if-ge v0, v1, :cond_7

    iget-object v0, v15, Landroid/graphics/FontListParser$Config;->families:Ljava/util/List;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/FontListParser$Family;

    .restart local v12    # "f":Landroid/graphics/FontListParser$Family;
    iget-object v0, v12, Landroid/graphics/FontListParser$Family;->name:Ljava/lang/String;

    move-object/from16 v28, v0

    if-eqz v28, :cond_5

    if-nez v18, :cond_6

    sget-object v26, Landroid/graphics/Typeface;->sDefaultTypeface:Landroid/graphics/Typeface;

    .local v26, "typeface":Landroid/graphics/Typeface;
    :goto_3
    iget-object v0, v12, Landroid/graphics/FontListParser$Family;->name:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v26    # "typeface":Landroid/graphics/Typeface;
    :cond_5
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    :cond_6
    invoke-static {v12}, Landroid/graphics/Typeface;->makeFamilyFromParsed(Landroid/graphics/FontListParser$Family;)Landroid/graphics/FontFamily;

    move-result-object v17

    .local v17, "fontFamily":Landroid/graphics/FontFamily;
    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v13, v0, [Landroid/graphics/FontFamily;

    const/16 v28, 0x0

    aput-object v17, v13, v28

    .local v13, "families":[Landroid/graphics/FontFamily;
    invoke-static {v13}, Landroid/graphics/Typeface;->createFromFamiliesWithDefault([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v26

    .restart local v26    # "typeface":Landroid/graphics/Typeface;
    goto :goto_3

    .end local v12    # "f":Landroid/graphics/FontListParser$Family;
    .end local v13    # "families":[Landroid/graphics/FontFamily;
    .end local v17    # "fontFamily":Landroid/graphics/FontFamily;
    .end local v26    # "typeface":Landroid/graphics/Typeface;
    :cond_7
    iget-object v0, v15, Landroid/graphics/FontListParser$Config;->aliases:Ljava/util/List;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "alias$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/FontListParser$Alias;

    .local v4, "alias":Landroid/graphics/FontListParser$Alias;
    iget-object v0, v4, Landroid/graphics/FontListParser$Alias;->toName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Typeface;

    .local v6, "base":Landroid/graphics/Typeface;
    move-object/from16 v19, v6

    .local v19, "newFace":Landroid/graphics/Typeface;
    iget v0, v4, Landroid/graphics/FontListParser$Alias;->weight:I

    move/from16 v27, v0

    .local v27, "weight":I
    const/16 v28, 0x190

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_8

    new-instance v19, Landroid/graphics/Typeface;

    .end local v19    # "newFace":Landroid/graphics/Typeface;
    iget-wide v0, v6, Landroid/graphics/Typeface;->native_instance:J

    move-wide/from16 v28, v0

    move-wide/from16 v0, v28

    move/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/graphics/Typeface;->nativeCreateWeightAlias(JI)J

    move-result-wide v28

    move-object/from16 v0, v19

    move-wide/from16 v1, v28

    invoke-direct {v0, v1, v2}, Landroid/graphics/Typeface;-><init>(J)V

    .restart local v19    # "newFace":Landroid/graphics/Typeface;
    :cond_8
    iget-object v0, v4, Landroid/graphics/FontListParser$Alias;->name:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_4

    .end local v4    # "alias":Landroid/graphics/FontListParser$Alias;
    .end local v5    # "alias$iterator":Ljava/util/Iterator;
    .end local v6    # "base":Landroid/graphics/Typeface;
    .end local v14    # "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontFamily;>;"
    .end local v15    # "fontConfig":Landroid/graphics/FontListParser$Config;
    .end local v18    # "i":I
    .end local v19    # "newFace":Landroid/graphics/Typeface;
    .end local v23    # "systemFonts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    .end local v27    # "weight":I
    :catch_0
    move-exception v10

    .local v10, "e":Ljava/lang/RuntimeException;
    sget-object v28, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    const-string v29, "Didn\'t create default family (most likely, non-Minikin build)"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v1, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v10    # "e":Ljava/lang/RuntimeException;
    :goto_5
    return-void

    .restart local v5    # "alias$iterator":Ljava/util/Iterator;
    .restart local v14    # "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontFamily;>;"
    .restart local v15    # "fontConfig":Landroid/graphics/FontListParser$Config;
    .restart local v18    # "i":I
    .restart local v23    # "systemFonts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    :cond_9
    :try_start_2
    sput-object v23, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    .end local v5    # "alias$iterator":Ljava/util/Iterator;
    .end local v14    # "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontFamily;>;"
    .end local v15    # "fontConfig":Landroid/graphics/FontListParser$Config;
    .end local v18    # "i":I
    .end local v23    # "systemFonts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    :catch_1
    move-exception v8

    .local v8, "e":Ljava/io/FileNotFoundException;
    sget-object v28, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Error opening "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .end local v8    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v11

    .local v11, "e":Lorg/xmlpull/v1/XmlPullParserException;
    sget-object v28, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "XML parse exception for "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .end local v11    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_3
    move-exception v9

    .local v9, "e":Ljava/io/IOException;
    sget-object v28, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Error reading "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method private static makeFamilyFromParsed(Landroid/graphics/FontListParser$Family;)Landroid/graphics/FontFamily;
    .locals 6
    .param p0, "family"    # Landroid/graphics/FontListParser$Family;

    .prologue
    new-instance v2, Landroid/graphics/FontFamily;

    iget-object v3, p0, Landroid/graphics/FontListParser$Family;->lang:Ljava/lang/String;

    iget-object v4, p0, Landroid/graphics/FontListParser$Family;->variant:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/graphics/FontFamily;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v2, "fontFamily":Landroid/graphics/FontFamily;
    iget-object v3, p0, Landroid/graphics/FontListParser$Family;->fonts:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "font$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/FontListParser$Font;

    .local v0, "font":Landroid/graphics/FontListParser$Font;
    iget-object v3, v0, Landroid/graphics/FontListParser$Font;->fontName:Ljava/lang/String;

    iget v4, v0, Landroid/graphics/FontListParser$Font;->weight:I

    iget-boolean v5, v0, Landroid/graphics/FontListParser$Font;->isItalic:Z

    invoke-virtual {v2, v3, v4, v5}, Landroid/graphics/FontFamily;->addFontWeightStyle(Ljava/lang/String;IZ)Z

    goto :goto_0

    .end local v0    # "font":Landroid/graphics/FontListParser$Font;
    :cond_0
    return-object v2
.end method

.method private static native nativeCreateFromArray([J)J
.end method

.method private static native nativeCreateFromTypeface(JI)J
.end method

.method private static native nativeCreateWeightAlias(JI)J
.end method

.method private static native nativeGetStyle(J)I
.end method

.method private static native nativeSetDefault(J)V
.end method

.method private static native nativeUnref(J)V
.end method

.method public static recreateDefaults()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/graphics/Typeface;->recreateDefaults(Z)V

    return-void
.end method

.method public static recreateDefaults(Z)V
    .locals 6
    .param p0, "forceSystemFonts"    # Z

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v3, 0x0

    sget-object v0, Landroid/graphics/Typeface;->sTypefaceCache:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    sget-object v0, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-static {p0}, Landroid/graphics/Typeface;->init(Z)V

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->DEFAULT_INTERNAL:Landroid/graphics/Typeface;

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD_INTERNAL:Landroid/graphics/Typeface;

    const-string v0, "sans-serif"

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->SANS_SERIF_INTERNAL:Landroid/graphics/Typeface;

    const-string v0, "serif"

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->SERIF_INTERNAL:Landroid/graphics/Typeface;

    const-string v0, "monospace"

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->MONOSPACE_INTERNAL:Landroid/graphics/Typeface;

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_INTERNAL:Landroid/graphics/Typeface;

    iget-wide v2, v2, Landroid/graphics/Typeface;->native_instance:J

    iput-wide v2, v0, Landroid/graphics/Typeface;->native_instance:J

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD_INTERNAL:Landroid/graphics/Typeface;

    iget-wide v2, v2, Landroid/graphics/Typeface;->native_instance:J

    iput-wide v2, v0, Landroid/graphics/Typeface;->native_instance:J

    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    sget-object v2, Landroid/graphics/Typeface;->SANS_SERIF_INTERNAL:Landroid/graphics/Typeface;

    iget-wide v2, v2, Landroid/graphics/Typeface;->native_instance:J

    iput-wide v2, v0, Landroid/graphics/Typeface;->native_instance:J

    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    sget-object v2, Landroid/graphics/Typeface;->SERIF_INTERNAL:Landroid/graphics/Typeface;

    iget-wide v2, v2, Landroid/graphics/Typeface;->native_instance:J

    iput-wide v2, v0, Landroid/graphics/Typeface;->native_instance:J

    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    sget-object v2, Landroid/graphics/Typeface;->MONOSPACE_INTERNAL:Landroid/graphics/Typeface;

    iget-wide v2, v2, Landroid/graphics/Typeface;->native_instance:J

    iput-wide v2, v0, Landroid/graphics/Typeface;->native_instance:J

    sget-object v2, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    aput-object v0, v2, v4

    sget-object v0, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    aput-object v1, v0, v5

    return-void
.end method

.method private static setDefault(Landroid/graphics/Typeface;)V
    .locals 2
    .param p0, "t"    # Landroid/graphics/Typeface;

    .prologue
    sput-object p0, Landroid/graphics/Typeface;->sDefaultTypeface:Landroid/graphics/Typeface;

    iget-wide v0, p0, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->nativeSetDefault(J)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Typeface;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    :cond_1
    return v2

    :cond_2
    move-object v0, p1

    check-cast v0, Landroid/graphics/Typeface;

    .local v0, "typeface":Landroid/graphics/Typeface;
    iget v3, p0, Landroid/graphics/Typeface;->mStyle:I

    iget v4, v0, Landroid/graphics/Typeface;->mStyle:I

    if-ne v3, v4, :cond_3

    iget-wide v4, p0, Landroid/graphics/Typeface;->native_instance:J

    iget-wide v6, v0, Landroid/graphics/Typeface;->native_instance:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    :goto_0
    return v1

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    :try_start_0
    iget-wide v0, p0, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->nativeUnref(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getStyle()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/graphics/Typeface;->mStyle:I

    return v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    iget-wide v2, p0, Landroid/graphics/Typeface;->native_instance:J

    iget-wide v4, p0, Landroid/graphics/Typeface;->native_instance:J

    const/16 v1, 0x20

    ushr-long/2addr v4, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/lit16 v0, v1, 0x20f

    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/graphics/Typeface;->mStyle:I

    add-int v0, v1, v2

    return v0
.end method

.method public final isBold()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    iget v1, p0, Landroid/graphics/Typeface;->mStyle:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final isItalic()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    iget v1, p0, Landroid/graphics/Typeface;->mStyle:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
