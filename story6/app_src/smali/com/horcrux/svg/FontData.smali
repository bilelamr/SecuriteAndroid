.class Lcom/horcrux/svg/FontData;
.super Ljava/lang/Object;
.source "FontData.java"


# static fields
.field static final Defaults:Lcom/horcrux/svg/FontData;


# instance fields
.field final fontData:Lcom/facebook/react/bridge/ReadableMap;

.field final fontFamily:Ljava/lang/String;

.field final fontFeatureSettings:Ljava/lang/String;

.field final fontSize:D

.field final fontStyle:Lcom/horcrux/svg/TextProperties$FontStyle;

.field final fontVariantLigatures:Lcom/horcrux/svg/TextProperties$FontVariantLigatures;

.field final fontWeight:Lcom/horcrux/svg/TextProperties$FontWeight;

.field final kerning:D

.field final letterSpacing:D

.field final manualKerning:Z

.field final textAnchor:Lcom/horcrux/svg/TextProperties$TextAnchor;

.field private final textDecoration:Lcom/horcrux/svg/TextProperties$TextDecoration;

.field final wordSpacing:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Lcom/horcrux/svg/FontData;

    invoke-direct {v0}, Lcom/horcrux/svg/FontData;-><init>()V

    sput-object v0, Lcom/horcrux/svg/FontData;->Defaults:Lcom/horcrux/svg/FontData;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/horcrux/svg/FontData;->fontData:Lcom/facebook/react/bridge/ReadableMap;

    const-string v0, ""

    .line 49
    iput-object v0, p0, Lcom/horcrux/svg/FontData;->fontFamily:Ljava/lang/String;

    .line 50
    sget-object v1, Lcom/horcrux/svg/TextProperties$FontStyle;->normal:Lcom/horcrux/svg/TextProperties$FontStyle;

    iput-object v1, p0, Lcom/horcrux/svg/FontData;->fontStyle:Lcom/horcrux/svg/TextProperties$FontStyle;

    .line 51
    sget-object v1, Lcom/horcrux/svg/TextProperties$FontWeight;->Normal:Lcom/horcrux/svg/TextProperties$FontWeight;

    iput-object v1, p0, Lcom/horcrux/svg/FontData;->fontWeight:Lcom/horcrux/svg/TextProperties$FontWeight;

    .line 52
    iput-object v0, p0, Lcom/horcrux/svg/FontData;->fontFeatureSettings:Ljava/lang/String;

    .line 53
    sget-object v0, Lcom/horcrux/svg/TextProperties$FontVariantLigatures;->normal:Lcom/horcrux/svg/TextProperties$FontVariantLigatures;

    iput-object v0, p0, Lcom/horcrux/svg/FontData;->fontVariantLigatures:Lcom/horcrux/svg/TextProperties$FontVariantLigatures;

    .line 55
    sget-object v0, Lcom/horcrux/svg/TextProperties$TextAnchor;->start:Lcom/horcrux/svg/TextProperties$TextAnchor;

    iput-object v0, p0, Lcom/horcrux/svg/FontData;->textAnchor:Lcom/horcrux/svg/TextProperties$TextAnchor;

    .line 56
    sget-object v0, Lcom/horcrux/svg/TextProperties$TextDecoration;->None:Lcom/horcrux/svg/TextProperties$TextDecoration;

    iput-object v0, p0, Lcom/horcrux/svg/FontData;->textDecoration:Lcom/horcrux/svg/TextProperties$TextDecoration;

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcom/horcrux/svg/FontData;->manualKerning:Z

    const-wide/16 v0, 0x0

    .line 59
    iput-wide v0, p0, Lcom/horcrux/svg/FontData;->kerning:D

    const-wide/high16 v2, 0x4028000000000000L    # 12.0

    .line 60
    iput-wide v2, p0, Lcom/horcrux/svg/FontData;->fontSize:D

    .line 61
    iput-wide v0, p0, Lcom/horcrux/svg/FontData;->wordSpacing:D

    .line 62
    iput-wide v0, p0, Lcom/horcrux/svg/FontData;->letterSpacing:D

    return-void
.end method

.method constructor <init>(Lcom/facebook/react/bridge/ReadableMap;Lcom/horcrux/svg/FontData;D)V
    .locals 9

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iget-wide v7, p2, Lcom/horcrux/svg/FontData;->fontSize:D

    const-string v0, "fontSize"

    .line 78
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 79
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getType(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableType;

    move-result-object v1

    .line 80
    sget-object v2, Lcom/facebook/react/bridge/ReadableType;->Number:Lcom/facebook/react/bridge/ReadableType;

    if-ne v1, v2, :cond_0

    .line 81
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/horcrux/svg/FontData;->fontSize:D

    goto :goto_0

    .line 83
    :cond_0
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v3, 0x0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    move-wide v1, v7

    .line 84
    invoke-static/range {v0 .. v8}, Lcom/horcrux/svg/PropHelper;->fromRelative(Ljava/lang/String;DDDD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/horcrux/svg/FontData;->fontSize:D

    goto :goto_0

    .line 93
    :cond_1
    iput-wide v7, p0, Lcom/horcrux/svg/FontData;->fontSize:D

    :goto_0
    const-string v0, "fontData"

    .line 96
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v0, p2, Lcom/horcrux/svg/FontData;->fontData:Lcom/facebook/react/bridge/ReadableMap;

    :goto_1
    iput-object v0, p0, Lcom/horcrux/svg/FontData;->fontData:Lcom/facebook/react/bridge/ReadableMap;

    const-string v0, "fontFamily"

    .line 98
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    iget-object v0, p2, Lcom/horcrux/svg/FontData;->fontFamily:Ljava/lang/String;

    :goto_2
    iput-object v0, p0, Lcom/horcrux/svg/FontData;->fontFamily:Ljava/lang/String;

    const-string v0, "fontStyle"

    .line 99
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/horcrux/svg/TextProperties$FontStyle;->valueOf(Ljava/lang/String;)Lcom/horcrux/svg/TextProperties$FontStyle;

    move-result-object v0

    goto :goto_3

    :cond_4
    iget-object v0, p2, Lcom/horcrux/svg/FontData;->fontStyle:Lcom/horcrux/svg/TextProperties$FontStyle;

    :goto_3
    iput-object v0, p0, Lcom/horcrux/svg/FontData;->fontStyle:Lcom/horcrux/svg/TextProperties$FontStyle;

    const-string v0, "fontWeight"

    .line 100
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/horcrux/svg/TextProperties$FontWeight;->getEnum(Ljava/lang/String;)Lcom/horcrux/svg/TextProperties$FontWeight;

    move-result-object v0

    goto :goto_4

    :cond_5
    iget-object v0, p2, Lcom/horcrux/svg/FontData;->fontWeight:Lcom/horcrux/svg/TextProperties$FontWeight;

    :goto_4
    iput-object v0, p0, Lcom/horcrux/svg/FontData;->fontWeight:Lcom/horcrux/svg/TextProperties$FontWeight;

    const-string v0, "fontFeatureSettings"

    .line 101
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_6
    iget-object v0, p2, Lcom/horcrux/svg/FontData;->fontFeatureSettings:Ljava/lang/String;

    :goto_5
    iput-object v0, p0, Lcom/horcrux/svg/FontData;->fontFeatureSettings:Ljava/lang/String;

    const-string v0, "fontVariantLigatures"

    .line 102
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/horcrux/svg/TextProperties$FontVariantLigatures;->valueOf(Ljava/lang/String;)Lcom/horcrux/svg/TextProperties$FontVariantLigatures;

    move-result-object v0

    goto :goto_6

    :cond_7
    iget-object v0, p2, Lcom/horcrux/svg/FontData;->fontVariantLigatures:Lcom/horcrux/svg/TextProperties$FontVariantLigatures;

    :goto_6
    iput-object v0, p0, Lcom/horcrux/svg/FontData;->fontVariantLigatures:Lcom/horcrux/svg/TextProperties$FontVariantLigatures;

    const-string v0, "textAnchor"

    .line 104
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/horcrux/svg/TextProperties$TextAnchor;->valueOf(Ljava/lang/String;)Lcom/horcrux/svg/TextProperties$TextAnchor;

    move-result-object v0

    goto :goto_7

    :cond_8
    iget-object v0, p2, Lcom/horcrux/svg/FontData;->textAnchor:Lcom/horcrux/svg/TextProperties$TextAnchor;

    :goto_7
    iput-object v0, p0, Lcom/horcrux/svg/FontData;->textAnchor:Lcom/horcrux/svg/TextProperties$TextAnchor;

    const-string v0, "textDecoration"

    .line 105
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/horcrux/svg/TextProperties$TextDecoration;->getEnum(Ljava/lang/String;)Lcom/horcrux/svg/TextProperties$TextDecoration;

    move-result-object v0

    goto :goto_8

    :cond_9
    iget-object v0, p2, Lcom/horcrux/svg/FontData;->textDecoration:Lcom/horcrux/svg/TextProperties$TextDecoration;

    :goto_8
    iput-object v0, p0, Lcom/horcrux/svg/FontData;->textDecoration:Lcom/horcrux/svg/TextProperties$TextDecoration;

    const-string v0, "kerning"

    .line 107
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 108
    iget-boolean v2, p2, Lcom/horcrux/svg/FontData;->manualKerning:Z

    if-eqz v2, :cond_a

    goto :goto_9

    :cond_a
    const/4 v2, 0x0

    goto :goto_a

    :cond_b
    :goto_9
    const/4 v2, 0x1

    :goto_a
    iput-boolean v2, p0, Lcom/horcrux/svg/FontData;->manualKerning:Z

    if-eqz v1, :cond_c

    .line 113
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-wide v7, p0, Lcom/horcrux/svg/FontData;->fontSize:D

    move-object v3, p0

    move-wide v5, p3

    invoke-direct/range {v3 .. v8}, Lcom/horcrux/svg/FontData;->toAbsolute(Ljava/lang/String;DD)D

    move-result-wide v0

    goto :goto_b

    :cond_c
    iget-wide v0, p2, Lcom/horcrux/svg/FontData;->kerning:D

    :goto_b
    iput-wide v0, p0, Lcom/horcrux/svg/FontData;->kerning:D

    const-string v0, "wordSpacing"

    .line 114
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-wide v6, p0, Lcom/horcrux/svg/FontData;->fontSize:D

    move-object v2, p0

    move-wide v4, p3

    invoke-direct/range {v2 .. v7}, Lcom/horcrux/svg/FontData;->toAbsolute(Ljava/lang/String;DD)D

    move-result-wide v0

    goto :goto_c

    :cond_d
    iget-wide v0, p2, Lcom/horcrux/svg/FontData;->wordSpacing:D

    :goto_c
    iput-wide v0, p0, Lcom/horcrux/svg/FontData;->wordSpacing:D

    const-string v0, "letterSpacing"

    .line 115
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-wide v6, p0, Lcom/horcrux/svg/FontData;->fontSize:D

    move-object v2, p0

    move-wide v4, p3

    invoke-direct/range {v2 .. v7}, Lcom/horcrux/svg/FontData;->toAbsolute(Ljava/lang/String;DD)D

    move-result-wide p1

    goto :goto_d

    :cond_e
    iget-wide p1, p2, Lcom/horcrux/svg/FontData;->letterSpacing:D

    :goto_d
    iput-wide p1, p0, Lcom/horcrux/svg/FontData;->letterSpacing:D

    return-void
.end method

.method private toAbsolute(Ljava/lang/String;DD)D
    .locals 9

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    move-object v0, p1

    move-wide v5, p2

    move-wide v7, p4

    .line 66
    invoke-static/range {v0 .. v8}, Lcom/horcrux/svg/PropHelper;->fromRelative(Ljava/lang/String;DDDD)D

    move-result-wide p1

    return-wide p1
.end method
