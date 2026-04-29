.class final enum Lcom/horcrux/svg/SVGLengthUnitType;
.super Ljava/lang/Enum;
.source "SVGLength.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/horcrux/svg/SVGLengthUnitType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/horcrux/svg/SVGLengthUnitType;

.field public static final enum SVG_LENGTHTYPE_CM:Lcom/horcrux/svg/SVGLengthUnitType;

.field public static final enum SVG_LENGTHTYPE_EMS:Lcom/horcrux/svg/SVGLengthUnitType;

.field public static final enum SVG_LENGTHTYPE_EXS:Lcom/horcrux/svg/SVGLengthUnitType;

.field public static final enum SVG_LENGTHTYPE_IN:Lcom/horcrux/svg/SVGLengthUnitType;

.field public static final enum SVG_LENGTHTYPE_MM:Lcom/horcrux/svg/SVGLengthUnitType;

.field public static final enum SVG_LENGTHTYPE_NUMBER:Lcom/horcrux/svg/SVGLengthUnitType;

.field public static final enum SVG_LENGTHTYPE_PC:Lcom/horcrux/svg/SVGLengthUnitType;

.field public static final enum SVG_LENGTHTYPE_PERCENTAGE:Lcom/horcrux/svg/SVGLengthUnitType;

.field public static final enum SVG_LENGTHTYPE_PT:Lcom/horcrux/svg/SVGLengthUnitType;

.field public static final enum SVG_LENGTHTYPE_PX:Lcom/horcrux/svg/SVGLengthUnitType;

.field public static final enum SVG_LENGTHTYPE_UNKNOWN:Lcom/horcrux/svg/SVGLengthUnitType;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 10
    new-instance v0, Lcom/horcrux/svg/SVGLengthUnitType;

    const/4 v1, 0x0

    const-string v2, "SVG_LENGTHTYPE_UNKNOWN"

    invoke-direct {v0, v2, v1}, Lcom/horcrux/svg/SVGLengthUnitType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/horcrux/svg/SVGLengthUnitType;->SVG_LENGTHTYPE_UNKNOWN:Lcom/horcrux/svg/SVGLengthUnitType;

    .line 11
    new-instance v0, Lcom/horcrux/svg/SVGLengthUnitType;

    const/4 v2, 0x1

    const-string v3, "SVG_LENGTHTYPE_NUMBER"

    invoke-direct {v0, v3, v2}, Lcom/horcrux/svg/SVGLengthUnitType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/horcrux/svg/SVGLengthUnitType;->SVG_LENGTHTYPE_NUMBER:Lcom/horcrux/svg/SVGLengthUnitType;

    .line 12
    new-instance v0, Lcom/horcrux/svg/SVGLengthUnitType;

    const/4 v3, 0x2

    const-string v4, "SVG_LENGTHTYPE_PERCENTAGE"

    invoke-direct {v0, v4, v3}, Lcom/horcrux/svg/SVGLengthUnitType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/horcrux/svg/SVGLengthUnitType;->SVG_LENGTHTYPE_PERCENTAGE:Lcom/horcrux/svg/SVGLengthUnitType;

    .line 13
    new-instance v0, Lcom/horcrux/svg/SVGLengthUnitType;

    const/4 v4, 0x3

    const-string v5, "SVG_LENGTHTYPE_EMS"

    invoke-direct {v0, v5, v4}, Lcom/horcrux/svg/SVGLengthUnitType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/horcrux/svg/SVGLengthUnitType;->SVG_LENGTHTYPE_EMS:Lcom/horcrux/svg/SVGLengthUnitType;

    .line 14
    new-instance v0, Lcom/horcrux/svg/SVGLengthUnitType;

    const/4 v5, 0x4

    const-string v6, "SVG_LENGTHTYPE_EXS"

    invoke-direct {v0, v6, v5}, Lcom/horcrux/svg/SVGLengthUnitType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/horcrux/svg/SVGLengthUnitType;->SVG_LENGTHTYPE_EXS:Lcom/horcrux/svg/SVGLengthUnitType;

    .line 15
    new-instance v0, Lcom/horcrux/svg/SVGLengthUnitType;

    const/4 v6, 0x5

    const-string v7, "SVG_LENGTHTYPE_PX"

    invoke-direct {v0, v7, v6}, Lcom/horcrux/svg/SVGLengthUnitType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/horcrux/svg/SVGLengthUnitType;->SVG_LENGTHTYPE_PX:Lcom/horcrux/svg/SVGLengthUnitType;

    .line 16
    new-instance v0, Lcom/horcrux/svg/SVGLengthUnitType;

    const/4 v7, 0x6

    const-string v8, "SVG_LENGTHTYPE_CM"

    invoke-direct {v0, v8, v7}, Lcom/horcrux/svg/SVGLengthUnitType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/horcrux/svg/SVGLengthUnitType;->SVG_LENGTHTYPE_CM:Lcom/horcrux/svg/SVGLengthUnitType;

    .line 17
    new-instance v0, Lcom/horcrux/svg/SVGLengthUnitType;

    const/4 v8, 0x7

    const-string v9, "SVG_LENGTHTYPE_MM"

    invoke-direct {v0, v9, v8}, Lcom/horcrux/svg/SVGLengthUnitType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/horcrux/svg/SVGLengthUnitType;->SVG_LENGTHTYPE_MM:Lcom/horcrux/svg/SVGLengthUnitType;

    .line 18
    new-instance v0, Lcom/horcrux/svg/SVGLengthUnitType;

    const/16 v9, 0x8

    const-string v10, "SVG_LENGTHTYPE_IN"

    invoke-direct {v0, v10, v9}, Lcom/horcrux/svg/SVGLengthUnitType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/horcrux/svg/SVGLengthUnitType;->SVG_LENGTHTYPE_IN:Lcom/horcrux/svg/SVGLengthUnitType;

    .line 19
    new-instance v0, Lcom/horcrux/svg/SVGLengthUnitType;

    const/16 v10, 0x9

    const-string v11, "SVG_LENGTHTYPE_PT"

    invoke-direct {v0, v11, v10}, Lcom/horcrux/svg/SVGLengthUnitType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/horcrux/svg/SVGLengthUnitType;->SVG_LENGTHTYPE_PT:Lcom/horcrux/svg/SVGLengthUnitType;

    .line 20
    new-instance v0, Lcom/horcrux/svg/SVGLengthUnitType;

    const/16 v11, 0xa

    const-string v12, "SVG_LENGTHTYPE_PC"

    invoke-direct {v0, v12, v11}, Lcom/horcrux/svg/SVGLengthUnitType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/horcrux/svg/SVGLengthUnitType;->SVG_LENGTHTYPE_PC:Lcom/horcrux/svg/SVGLengthUnitType;

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/horcrux/svg/SVGLengthUnitType;

    .line 9
    sget-object v12, Lcom/horcrux/svg/SVGLengthUnitType;->SVG_LENGTHTYPE_UNKNOWN:Lcom/horcrux/svg/SVGLengthUnitType;

    aput-object v12, v0, v1

    sget-object v1, Lcom/horcrux/svg/SVGLengthUnitType;->SVG_LENGTHTYPE_NUMBER:Lcom/horcrux/svg/SVGLengthUnitType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/horcrux/svg/SVGLengthUnitType;->SVG_LENGTHTYPE_PERCENTAGE:Lcom/horcrux/svg/SVGLengthUnitType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/horcrux/svg/SVGLengthUnitType;->SVG_LENGTHTYPE_EMS:Lcom/horcrux/svg/SVGLengthUnitType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/horcrux/svg/SVGLengthUnitType;->SVG_LENGTHTYPE_EXS:Lcom/horcrux/svg/SVGLengthUnitType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/horcrux/svg/SVGLengthUnitType;->SVG_LENGTHTYPE_PX:Lcom/horcrux/svg/SVGLengthUnitType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/horcrux/svg/SVGLengthUnitType;->SVG_LENGTHTYPE_CM:Lcom/horcrux/svg/SVGLengthUnitType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/horcrux/svg/SVGLengthUnitType;->SVG_LENGTHTYPE_MM:Lcom/horcrux/svg/SVGLengthUnitType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/horcrux/svg/SVGLengthUnitType;->SVG_LENGTHTYPE_IN:Lcom/horcrux/svg/SVGLengthUnitType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/horcrux/svg/SVGLengthUnitType;->SVG_LENGTHTYPE_PT:Lcom/horcrux/svg/SVGLengthUnitType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/horcrux/svg/SVGLengthUnitType;->SVG_LENGTHTYPE_PC:Lcom/horcrux/svg/SVGLengthUnitType;

    aput-object v1, v0, v11

    sput-object v0, Lcom/horcrux/svg/SVGLengthUnitType;->$VALUES:[Lcom/horcrux/svg/SVGLengthUnitType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/horcrux/svg/SVGLengthUnitType;
    .locals 1

    .line 9
    const-class v0, Lcom/horcrux/svg/SVGLengthUnitType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/horcrux/svg/SVGLengthUnitType;

    return-object p0
.end method

.method public static values()[Lcom/horcrux/svg/SVGLengthUnitType;
    .locals 1

    .line 9
    sget-object v0, Lcom/horcrux/svg/SVGLengthUnitType;->$VALUES:[Lcom/horcrux/svg/SVGLengthUnitType;

    invoke-virtual {v0}, [Lcom/horcrux/svg/SVGLengthUnitType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/horcrux/svg/SVGLengthUnitType;

    return-object v0
.end method
