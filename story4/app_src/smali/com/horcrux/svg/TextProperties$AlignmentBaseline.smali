.class final enum Lcom/horcrux/svg/TextProperties$AlignmentBaseline;
.super Ljava/lang/Enum;
.source "TextProperties.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/horcrux/svg/TextProperties$AlignmentBaseline;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/horcrux/svg/TextProperties$AlignmentBaseline;

.field public static final enum afterEdge:Lcom/horcrux/svg/TextProperties$AlignmentBaseline;

.field private static final alignmentToEnum:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/horcrux/svg/TextProperties$AlignmentBaseline;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum alphabetic:Lcom/horcrux/svg/TextProperties$AlignmentBaseline;

.field public static final enum baseline:Lcom/horcrux/svg/TextProperties$AlignmentBaseline;

.field public static final enum beforeEdge:Lcom/horcrux/svg/TextProperties$AlignmentBaseline;

.field public static final enum bottom:Lcom/horcrux/svg/TextProperties$AlignmentBaseline;

.field public static final enum center:Lcom/horcrux/svg/TextProperties$AlignmentBaseline;

.field public static final enum central:Lcom/horcrux/svg/TextProperties$AlignmentBaseline;

.field public static final enum hanging:Lcom/horcrux/svg/TextProperties$AlignmentBaseline;

.field public static final enum ideographic:Lcom/horcrux/svg/TextProperties$AlignmentBaseline;

.field public static final enum mathematical:Lcom/horcrux/svg/TextProperties$AlignmentBaseline;

.field public static final enum middle:Lcom/horcrux/svg/TextProperties$AlignmentBaseline;

.field public static final enum textAfterEdge:Lcom/horcrux/svg/TextProperties$AlignmentBaseline;

.field public static final enum textBeforeEdge:Lcom/horcrux/svg/TextProperties$AlignmentBaseline;

.field public static final enum textBottom:Lcom/horcrux/svg/TextProperties$AlignmentBaseline;

.field public static final enum textTop:Lcom/horcrux/svg/TextProperties$AlignmentBaseline;

.field public static final enum top:Lcom/horcrux/svg/TextProperties$AlignmentBaseline;


# instance fields
.field private final alignment:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 24
    new-instance v0, Lcom/horcrux/svg/TextProperties$AlignmentBaseline;

    const-string v1, "baseline"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/horcrux/svg/TextProperties$AlignmentBaseline;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/horcrux/svg/TextProperties$AlignmentBaseline;->baseline:Lcom/horcrux/svg/TextProperties$AlignmentBaseline;

    .line 25
    new-instance v0, Lcom/horcrux/svg/TextProperties$AlignmentBaseline;

    const/4 v1, 0x1

    const-string v3, "textBottom"

    const-string v4, "text-bottom"

    invoke-direct {v0, v3, v1, v4}, Lcom/horcrux/svg/TextProperties$AlignmentBaseline;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/horcrux/svg/TextProperties$AlignmentBaseline;->textBottom:Lcom/horcrux/svg/TextProperties$AlignmentBaseline;

    .line 26
    new-instance v0, Lcom/horcrux/svg/TextProperties$AlignmentBaseline;

    const/4 v3, 0x2

    const-string v4, "alphabetic"

    invoke-direct {v0, v4, v3, v4}, Lcom/horcrux/svg/TextProperties$AlignmentBaseline;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/horcrux/svg/TextProperties$AlignmentBaseline;->alphabetic:Lcom/horcrux/svg/TextProperties$AlignmentBaseline;

    .line 27
    new-instance v0, Lcom/horcrux/svg/TextProperties$AlignmentBaseline;

    const/4 v4, 0x3

    const-string v5, "ideographic"

    invoke-direct {v0, v5, v4, v5}, Lcom/horcrux/svg/TextProperties$AlignmentBaseline;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/horcrux/svg/TextProperties$AlignmentBaseline;->ideographic:Lcom/horcrux/svg/TextProperties$AlignmentBaseline;

    .line 28
    new-instance v0, Lcom/horcrux/svg/TextProperties$AlignmentBaseline;

    const/4 v5, 0x4

    const-string v6, "middle"

    invoke-direct {v0, v6, v5, v6}, Lcom/horcrux/svg/TextProperties$AlignmentBaseline;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/horcrux/svg/TextProperties$AlignmentBaseline;->middle:Lcom/horcrux/svg/TextProperties$AlignmentBaseline;

    .line 29
    new-instance v0, Lcom/horcrux/svg/TextProperties$AlignmentBaseline;

    const/4 v6, 0x5

    const-string v7, "central"

    invoke-direct {v0, v7, v6, v7}, Lcom/horcrux/svg/TextProperties$AlignmentBaseline;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/horcrux/svg/TextProperties$AlignmentBaseline;->central:Lcom/horcrux/svg/TextProperties$AlignmentBaseline;

    .line 30
    new-instance v0, Lcom/horcrux/svg/TextProperties$AlignmentBaseline;

    const/4 v7, 0x6

    const-string v8, "mathematical"

    invoke-direct {v0, v8, v7, v8}, Lcom/horcrux/svg/TextProperties$AlignmentBaseline;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/horcrux/svg/TextProperties$AlignmentBaseline;->mathematical:Lcom/horcrux/svg/TextProperties$AlignmentBaseline;

    .line 31
    new-instance v0, Lcom/horcrux/svg/TextProperties$AlignmentBaseline;

    const/4 v8, 0x7

    const-string v9, "textTop"

    const-string v10, "text-top"

    invoke-direct {v0, v9, v8, v10}, Lcom/horcrux/svg/TextProperties$AlignmentBaseline;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/horcrux/svg/TextProperties$AlignmentBaseline;->textTop:Lcom/horcrux/svg/TextProperties$AlignmentBaseline;

    .line 32
    new-instance v0, Lcom/horcrux/svg/TextProperties$AlignmentBaseline;

    const-string v9, "bottom"

    const/16 v10, 0x8

    invoke-direct {v0, v9, v10, v9}, Lcom/horcrux/svg/TextProperties$AlignmentBaseline;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/horcrux/svg/TextProperties$AlignmentBaseline;->bottom:Lcom/horcrux/svg/TextProperties$AlignmentBaseline;

    .line 33
    new-instance v0, Lcom/horcrux/svg/TextProperties$AlignmentBaseline;

    const-string v9, "center"

    const/16 v10, 0x9

    const-string v11, "center"

    invoke-direct {v0, v9, v10, v11}, Lcom/horcrux/svg/TextProperties$AlignmentBaseline;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/horcrux/svg/TextProperties$AlignmentBaseline;->center:Lcom/horcrux/svg/TextProperties$AlignmentBaseline;

    .line 34
    new-instance v0, Lcom/horcrux/svg/TextProperties$AlignmentBaseline;

    const-string v9, "top"

    const/16 v10, 0xa

    const-string v11, "top"

    invoke-direct {v0, v9, v10, v11}, Lcom/horcrux/svg/TextProperties$AlignmentBaseline;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/horcrux/svg/TextProperties$AlignmentBaseline;->top:Lcom/horcrux/svg/TextProperties$AlignmentBaseline;

    .line 41
    new-instance v0, Lcom/horcrux/svg/TextProperties$AlignmentBaseline;

    const-string v9, "textBeforeEdge"

    const/16 v10, 0xb

    const-string v11, "text-before-edge"

    invoke-direct {v0, v9, v10, v11}, Lcom/horcrux/svg/TextProperties$AlignmentBaseline;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/horcrux/svg/TextProperties$AlignmentBaseline;->textBeforeEdge:Lcom/horcrux/svg/TextProperties$AlignmentBaseline;

    .line 42
    new-instance v0, Lcom/horcrux/svg/TextProperties$AlignmentBaseline;

    const-string v9, "textAfterEdge"

    const/16 v10, 0xc

    const-string v11, "text-after-edge"

    invoke-direct {v0, v9, v10, v11}, Lcom/horcrux/svg/TextProperties$AlignmentBaseline;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/horcrux/svg/TextProperties$AlignmentBaseline;->textAfterEdge:Lcom/horcrux/svg/TextProperties$AlignmentBaseline;

    .line 44
    new-instance v0, Lcom/horcrux/svg/TextProperties$AlignmentBaseline;

    const-string v9, "beforeEdge"

    const/16 v10, 0xd

    const-string v11, "before-edge"

    invoke-direct {v0, v9, v10, v11}, Lcom/horcrux/svg/TextProperties$AlignmentBaseline;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/horcrux/svg/TextProperties$AlignmentBaseline;->beforeEdge:Lcom/horcrux/svg/TextProperties$AlignmentBaseline;

    .line 45
    new-instance v0, Lcom/horcrux/svg/TextProperties$AlignmentBaseline;

    const-string v9, "afterEdge"

    const/16 v10, 0xe

    const-string v11, "after-edge"

    invoke-direct {v0, v9, v10, v11}, Lcom/horcrux/svg/TextProperties$AlignmentBaseline;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/horcrux/svg/TextProperties$AlignmentBaseline;->afterEdge:Lcom/horcrux/svg/TextProperties$AlignmentBaseline;

    .line 46
    new-instance v0, Lcom/horcrux/svg/TextProperties$AlignmentBaseline;

    const-string v9, "hanging"

    const/16 v10, 0xf

    const-string v11, "hanging"

    invoke-direct {v0, v9, v10, v11}, Lcom/horcrux/svg/TextProperties$AlignmentBaseline;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/horcrux/svg/TextProperties$AlignmentBaseline;->hanging:Lcom/horcrux/svg/TextProperties$AlignmentBaseline;

    const/16 v0, 0x10

    new-array v0, v0, [Lcom/horcrux/svg/TextProperties$AlignmentBaseline;

    .line 23
    sget-object v9, Lcom/horcrux/svg/TextProperties$AlignmentBaseline;->baseline:Lcom/horcrux/svg/TextProperties$AlignmentBaseline;

    aput-object v9, v0, v2

    sget-object v9, Lcom/horcrux/svg/TextProperties$AlignmentBaseline;->textBottom:Lcom/horcrux/svg/TextProperties$AlignmentBaseline;

    aput-object v9, v0, v1

    sget-object v1, Lcom/horcrux/svg/TextProperties$AlignmentBaseline;->alphabetic:Lcom/horcrux/svg/TextProperties$AlignmentBaseline;

    aput-object v1, v0, v3

    sget-object v1, Lcom/horcrux/svg/TextProperties$AlignmentBaseline;->ideographic:Lcom/horcrux/svg/TextProperties$AlignmentBaseline;

    aput-object v1, v0, v4

    sget-object v1, Lcom/horcrux/svg/TextProperties$AlignmentBaseline;->middle:Lcom/horcrux/svg/TextProperties$AlignmentBaseline;

    aput-object v1, v0, v5

    sget-object v1, Lcom/horcrux/svg/TextProperties$AlignmentBaseline;->central:Lcom/horcrux/svg/TextProperties$AlignmentBaseline;

    aput-object v1, v0, v6

    sget-object v1, Lcom/horcrux/svg/TextProperties$AlignmentBaseline;->mathematical:Lcom/horcrux/svg/TextProperties$AlignmentBaseline;

    aput-object v1, v0, v7

    sget-object v1, Lcom/horcrux/svg/TextProperties$AlignmentBaseline;->textTop:Lcom/horcrux/svg/TextProperties$AlignmentBaseline;

    aput-object v1, v0, v8

    sget-object v1, Lcom/horcrux/svg/TextProperties$AlignmentBaseline;->bottom:Lcom/horcrux/svg/TextProperties$AlignmentBaseline;

    const/16 v3, 0x8

    aput-object v1, v0, v3

    sget-object v1, Lcom/horcrux/svg/TextProperties$AlignmentBaseline;->center:Lcom/horcrux/svg/TextProperties$AlignmentBaseline;

    const/16 v3, 0x9

    aput-object v1, v0, v3

    sget-object v1, Lcom/horcrux/svg/TextProperties$AlignmentBaseline;->top:Lcom/horcrux/svg/TextProperties$AlignmentBaseline;

    const/16 v3, 0xa

    aput-object v1, v0, v3

    sget-object v1, Lcom/horcrux/svg/TextProperties$AlignmentBaseline;->textBeforeEdge:Lcom/horcrux/svg/TextProperties$AlignmentBaseline;

    const/16 v3, 0xb

    aput-object v1, v0, v3

    sget-object v1, Lcom/horcrux/svg/TextProperties$AlignmentBaseline;->textAfterEdge:Lcom/horcrux/svg/TextProperties$AlignmentBaseline;

    const/16 v3, 0xc

    aput-object v1, v0, v3

    sget-object v1, Lcom/horcrux/svg/TextProperties$AlignmentBaseline;->beforeEdge:Lcom/horcrux/svg/TextProperties$AlignmentBaseline;

    const/16 v3, 0xd

    aput-object v1, v0, v3

    sget-object v1, Lcom/horcrux/svg/TextProperties$AlignmentBaseline;->afterEdge:Lcom/horcrux/svg/TextProperties$AlignmentBaseline;

    const/16 v3, 0xe

    aput-object v1, v0, v3

    sget-object v1, Lcom/horcrux/svg/TextProperties$AlignmentBaseline;->hanging:Lcom/horcrux/svg/TextProperties$AlignmentBaseline;

    const/16 v3, 0xf

    aput-object v1, v0, v3

    sput-object v0, Lcom/horcrux/svg/TextProperties$AlignmentBaseline;->$VALUES:[Lcom/horcrux/svg/TextProperties$AlignmentBaseline;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/horcrux/svg/TextProperties$AlignmentBaseline;->alignmentToEnum:Ljava/util/Map;

    .line 65
    invoke-static {}, Lcom/horcrux/svg/TextProperties$AlignmentBaseline;->values()[Lcom/horcrux/svg/TextProperties$AlignmentBaseline;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 66
    sget-object v4, Lcom/horcrux/svg/TextProperties$AlignmentBaseline;->alignmentToEnum:Ljava/util/Map;

    iget-object v5, v3, Lcom/horcrux/svg/TextProperties$AlignmentBaseline;->alignment:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

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

    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 52
    iput-object p3, p0, Lcom/horcrux/svg/TextProperties$AlignmentBaseline;->alignment:Ljava/lang/String;

    return-void
.end method

.method static getEnum(Ljava/lang/String;)Lcom/horcrux/svg/TextProperties$AlignmentBaseline;
    .locals 3

    .line 56
    sget-object v0, Lcom/horcrux/svg/TextProperties$AlignmentBaseline;->alignmentToEnum:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    sget-object v0, Lcom/horcrux/svg/TextProperties$AlignmentBaseline;->alignmentToEnum:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/horcrux/svg/TextProperties$AlignmentBaseline;

    return-object p0

    .line 57
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

.method public static valueOf(Ljava/lang/String;)Lcom/horcrux/svg/TextProperties$AlignmentBaseline;
    .locals 1

    .line 23
    const-class v0, Lcom/horcrux/svg/TextProperties$AlignmentBaseline;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/horcrux/svg/TextProperties$AlignmentBaseline;

    return-object p0
.end method

.method public static values()[Lcom/horcrux/svg/TextProperties$AlignmentBaseline;
    .locals 1

    .line 23
    sget-object v0, Lcom/horcrux/svg/TextProperties$AlignmentBaseline;->$VALUES:[Lcom/horcrux/svg/TextProperties$AlignmentBaseline;

    invoke-virtual {v0}, [Lcom/horcrux/svg/TextProperties$AlignmentBaseline;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/horcrux/svg/TextProperties$AlignmentBaseline;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/horcrux/svg/TextProperties$AlignmentBaseline;->alignment:Ljava/lang/String;

    return-object v0
.end method
