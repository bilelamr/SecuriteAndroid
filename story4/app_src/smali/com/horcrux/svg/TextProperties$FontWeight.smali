.class final enum Lcom/horcrux/svg/TextProperties$FontWeight;
.super Ljava/lang/Enum;
.source "TextProperties.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/horcrux/svg/TextProperties$FontWeight;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/horcrux/svg/TextProperties$FontWeight;

.field public static final enum Bold:Lcom/horcrux/svg/TextProperties$FontWeight;

.field public static final enum Bolder:Lcom/horcrux/svg/TextProperties$FontWeight;

.field public static final enum Lighter:Lcom/horcrux/svg/TextProperties$FontWeight;

.field public static final enum Normal:Lcom/horcrux/svg/TextProperties$FontWeight;

.field public static final enum w100:Lcom/horcrux/svg/TextProperties$FontWeight;

.field public static final enum w200:Lcom/horcrux/svg/TextProperties$FontWeight;

.field public static final enum w300:Lcom/horcrux/svg/TextProperties$FontWeight;

.field public static final enum w400:Lcom/horcrux/svg/TextProperties$FontWeight;

.field public static final enum w500:Lcom/horcrux/svg/TextProperties$FontWeight;

.field public static final enum w600:Lcom/horcrux/svg/TextProperties$FontWeight;

.field public static final enum w700:Lcom/horcrux/svg/TextProperties$FontWeight;

.field public static final enum w800:Lcom/horcrux/svg/TextProperties$FontWeight;

.field public static final enum w900:Lcom/horcrux/svg/TextProperties$FontWeight;

.field private static final weightToEnum:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/horcrux/svg/TextProperties$FontWeight;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final weight:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 95
    new-instance v0, Lcom/horcrux/svg/TextProperties$FontWeight;

    const/4 v1, 0x0

    const-string v2, "Normal"

    const-string v3, "normal"

    invoke-direct {v0, v2, v1, v3}, Lcom/horcrux/svg/TextProperties$FontWeight;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/horcrux/svg/TextProperties$FontWeight;->Normal:Lcom/horcrux/svg/TextProperties$FontWeight;

    .line 96
    new-instance v0, Lcom/horcrux/svg/TextProperties$FontWeight;

    const/4 v2, 0x1

    const-string v3, "Bold"

    const-string v4, "bold"

    invoke-direct {v0, v3, v2, v4}, Lcom/horcrux/svg/TextProperties$FontWeight;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/horcrux/svg/TextProperties$FontWeight;->Bold:Lcom/horcrux/svg/TextProperties$FontWeight;

    .line 97
    new-instance v0, Lcom/horcrux/svg/TextProperties$FontWeight;

    const/4 v3, 0x2

    const-string v4, "Bolder"

    const-string v5, "bolder"

    invoke-direct {v0, v4, v3, v5}, Lcom/horcrux/svg/TextProperties$FontWeight;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/horcrux/svg/TextProperties$FontWeight;->Bolder:Lcom/horcrux/svg/TextProperties$FontWeight;

    .line 98
    new-instance v0, Lcom/horcrux/svg/TextProperties$FontWeight;

    const/4 v4, 0x3

    const-string v5, "Lighter"

    const-string v6, "lighter"

    invoke-direct {v0, v5, v4, v6}, Lcom/horcrux/svg/TextProperties$FontWeight;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/horcrux/svg/TextProperties$FontWeight;->Lighter:Lcom/horcrux/svg/TextProperties$FontWeight;

    .line 99
    new-instance v0, Lcom/horcrux/svg/TextProperties$FontWeight;

    const/4 v5, 0x4

    const-string v6, "w100"

    const-string v7, "100"

    invoke-direct {v0, v6, v5, v7}, Lcom/horcrux/svg/TextProperties$FontWeight;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/horcrux/svg/TextProperties$FontWeight;->w100:Lcom/horcrux/svg/TextProperties$FontWeight;

    .line 100
    new-instance v0, Lcom/horcrux/svg/TextProperties$FontWeight;

    const/4 v6, 0x5

    const-string v7, "w200"

    const-string v8, "200"

    invoke-direct {v0, v7, v6, v8}, Lcom/horcrux/svg/TextProperties$FontWeight;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/horcrux/svg/TextProperties$FontWeight;->w200:Lcom/horcrux/svg/TextProperties$FontWeight;

    .line 101
    new-instance v0, Lcom/horcrux/svg/TextProperties$FontWeight;

    const/4 v7, 0x6

    const-string v8, "w300"

    const-string v9, "300"

    invoke-direct {v0, v8, v7, v9}, Lcom/horcrux/svg/TextProperties$FontWeight;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/horcrux/svg/TextProperties$FontWeight;->w300:Lcom/horcrux/svg/TextProperties$FontWeight;

    .line 102
    new-instance v0, Lcom/horcrux/svg/TextProperties$FontWeight;

    const/4 v8, 0x7

    const-string v9, "w400"

    const-string v10, "400"

    invoke-direct {v0, v9, v8, v10}, Lcom/horcrux/svg/TextProperties$FontWeight;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/horcrux/svg/TextProperties$FontWeight;->w400:Lcom/horcrux/svg/TextProperties$FontWeight;

    .line 103
    new-instance v0, Lcom/horcrux/svg/TextProperties$FontWeight;

    const/16 v9, 0x8

    const-string v10, "w500"

    const-string v11, "500"

    invoke-direct {v0, v10, v9, v11}, Lcom/horcrux/svg/TextProperties$FontWeight;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/horcrux/svg/TextProperties$FontWeight;->w500:Lcom/horcrux/svg/TextProperties$FontWeight;

    .line 104
    new-instance v0, Lcom/horcrux/svg/TextProperties$FontWeight;

    const/16 v10, 0x9

    const-string v11, "w600"

    const-string v12, "600"

    invoke-direct {v0, v11, v10, v12}, Lcom/horcrux/svg/TextProperties$FontWeight;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/horcrux/svg/TextProperties$FontWeight;->w600:Lcom/horcrux/svg/TextProperties$FontWeight;

    .line 105
    new-instance v0, Lcom/horcrux/svg/TextProperties$FontWeight;

    const/16 v11, 0xa

    const-string v12, "w700"

    const-string v13, "700"

    invoke-direct {v0, v12, v11, v13}, Lcom/horcrux/svg/TextProperties$FontWeight;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/horcrux/svg/TextProperties$FontWeight;->w700:Lcom/horcrux/svg/TextProperties$FontWeight;

    .line 106
    new-instance v0, Lcom/horcrux/svg/TextProperties$FontWeight;

    const/16 v12, 0xb

    const-string v13, "w800"

    const-string v14, "800"

    invoke-direct {v0, v13, v12, v14}, Lcom/horcrux/svg/TextProperties$FontWeight;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/horcrux/svg/TextProperties$FontWeight;->w800:Lcom/horcrux/svg/TextProperties$FontWeight;

    .line 107
    new-instance v0, Lcom/horcrux/svg/TextProperties$FontWeight;

    const/16 v13, 0xc

    const-string v14, "w900"

    const-string v15, "900"

    invoke-direct {v0, v14, v13, v15}, Lcom/horcrux/svg/TextProperties$FontWeight;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/horcrux/svg/TextProperties$FontWeight;->w900:Lcom/horcrux/svg/TextProperties$FontWeight;

    const/16 v0, 0xd

    new-array v0, v0, [Lcom/horcrux/svg/TextProperties$FontWeight;

    .line 94
    sget-object v14, Lcom/horcrux/svg/TextProperties$FontWeight;->Normal:Lcom/horcrux/svg/TextProperties$FontWeight;

    aput-object v14, v0, v1

    sget-object v14, Lcom/horcrux/svg/TextProperties$FontWeight;->Bold:Lcom/horcrux/svg/TextProperties$FontWeight;

    aput-object v14, v0, v2

    sget-object v2, Lcom/horcrux/svg/TextProperties$FontWeight;->Bolder:Lcom/horcrux/svg/TextProperties$FontWeight;

    aput-object v2, v0, v3

    sget-object v2, Lcom/horcrux/svg/TextProperties$FontWeight;->Lighter:Lcom/horcrux/svg/TextProperties$FontWeight;

    aput-object v2, v0, v4

    sget-object v2, Lcom/horcrux/svg/TextProperties$FontWeight;->w100:Lcom/horcrux/svg/TextProperties$FontWeight;

    aput-object v2, v0, v5

    sget-object v2, Lcom/horcrux/svg/TextProperties$FontWeight;->w200:Lcom/horcrux/svg/TextProperties$FontWeight;

    aput-object v2, v0, v6

    sget-object v2, Lcom/horcrux/svg/TextProperties$FontWeight;->w300:Lcom/horcrux/svg/TextProperties$FontWeight;

    aput-object v2, v0, v7

    sget-object v2, Lcom/horcrux/svg/TextProperties$FontWeight;->w400:Lcom/horcrux/svg/TextProperties$FontWeight;

    aput-object v2, v0, v8

    sget-object v2, Lcom/horcrux/svg/TextProperties$FontWeight;->w500:Lcom/horcrux/svg/TextProperties$FontWeight;

    aput-object v2, v0, v9

    sget-object v2, Lcom/horcrux/svg/TextProperties$FontWeight;->w600:Lcom/horcrux/svg/TextProperties$FontWeight;

    aput-object v2, v0, v10

    sget-object v2, Lcom/horcrux/svg/TextProperties$FontWeight;->w700:Lcom/horcrux/svg/TextProperties$FontWeight;

    aput-object v2, v0, v11

    sget-object v2, Lcom/horcrux/svg/TextProperties$FontWeight;->w800:Lcom/horcrux/svg/TextProperties$FontWeight;

    aput-object v2, v0, v12

    sget-object v2, Lcom/horcrux/svg/TextProperties$FontWeight;->w900:Lcom/horcrux/svg/TextProperties$FontWeight;

    aput-object v2, v0, v13

    sput-object v0, Lcom/horcrux/svg/TextProperties$FontWeight;->$VALUES:[Lcom/horcrux/svg/TextProperties$FontWeight;

    .line 121
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/horcrux/svg/TextProperties$FontWeight;->weightToEnum:Ljava/util/Map;

    .line 123
    invoke-static {}, Lcom/horcrux/svg/TextProperties$FontWeight;->values()[Lcom/horcrux/svg/TextProperties$FontWeight;

    move-result-object v0

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 124
    sget-object v4, Lcom/horcrux/svg/TextProperties$FontWeight;->weightToEnum:Ljava/util/Map;

    iget-object v5, v3, Lcom/horcrux/svg/TextProperties$FontWeight;->weight:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 110
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 111
    iput-object p3, p0, Lcom/horcrux/svg/TextProperties$FontWeight;->weight:Ljava/lang/String;

    return-void
.end method

.method static getEnum(Ljava/lang/String;)Lcom/horcrux/svg/TextProperties$FontWeight;
    .locals 3

    .line 115
    sget-object v0, Lcom/horcrux/svg/TextProperties$FontWeight;->weightToEnum:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    sget-object v0, Lcom/horcrux/svg/TextProperties$FontWeight;->weightToEnum:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/horcrux/svg/TextProperties$FontWeight;

    return-object p0

    .line 116
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown String Value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/horcrux/svg/TextProperties$FontWeight;
    .locals 1

    .line 94
    const-class v0, Lcom/horcrux/svg/TextProperties$FontWeight;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/horcrux/svg/TextProperties$FontWeight;

    return-object p0
.end method

.method public static values()[Lcom/horcrux/svg/TextProperties$FontWeight;
    .locals 1

    .line 94
    sget-object v0, Lcom/horcrux/svg/TextProperties$FontWeight;->$VALUES:[Lcom/horcrux/svg/TextProperties$FontWeight;

    invoke-virtual {v0}, [Lcom/horcrux/svg/TextProperties$FontWeight;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/horcrux/svg/TextProperties$FontWeight;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/horcrux/svg/TextProperties$FontWeight;->weight:Ljava/lang/String;

    return-object v0
.end method
