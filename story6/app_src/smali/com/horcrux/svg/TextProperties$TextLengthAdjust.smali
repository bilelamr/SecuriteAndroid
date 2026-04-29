.class final enum Lcom/horcrux/svg/TextProperties$TextLengthAdjust;
.super Ljava/lang/Enum;
.source "TextProperties.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/horcrux/svg/TextProperties$TextLengthAdjust;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/horcrux/svg/TextProperties$TextLengthAdjust;

.field public static final enum spacing:Lcom/horcrux/svg/TextProperties$TextLengthAdjust;

.field public static final enum spacingAndGlyphs:Lcom/horcrux/svg/TextProperties$TextLengthAdjust;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 176
    new-instance v0, Lcom/horcrux/svg/TextProperties$TextLengthAdjust;

    const/4 v1, 0x0

    const-string v2, "spacing"

    invoke-direct {v0, v2, v1}, Lcom/horcrux/svg/TextProperties$TextLengthAdjust;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/horcrux/svg/TextProperties$TextLengthAdjust;->spacing:Lcom/horcrux/svg/TextProperties$TextLengthAdjust;

    .line 177
    new-instance v0, Lcom/horcrux/svg/TextProperties$TextLengthAdjust;

    const/4 v2, 0x1

    const-string v3, "spacingAndGlyphs"

    invoke-direct {v0, v3, v2}, Lcom/horcrux/svg/TextProperties$TextLengthAdjust;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/horcrux/svg/TextProperties$TextLengthAdjust;->spacingAndGlyphs:Lcom/horcrux/svg/TextProperties$TextLengthAdjust;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/horcrux/svg/TextProperties$TextLengthAdjust;

    .line 174
    sget-object v3, Lcom/horcrux/svg/TextProperties$TextLengthAdjust;->spacing:Lcom/horcrux/svg/TextProperties$TextLengthAdjust;

    aput-object v3, v0, v1

    sget-object v1, Lcom/horcrux/svg/TextProperties$TextLengthAdjust;->spacingAndGlyphs:Lcom/horcrux/svg/TextProperties$TextLengthAdjust;

    aput-object v1, v0, v2

    sput-object v0, Lcom/horcrux/svg/TextProperties$TextLengthAdjust;->$VALUES:[Lcom/horcrux/svg/TextProperties$TextLengthAdjust;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 174
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/horcrux/svg/TextProperties$TextLengthAdjust;
    .locals 1

    .line 174
    const-class v0, Lcom/horcrux/svg/TextProperties$TextLengthAdjust;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/horcrux/svg/TextProperties$TextLengthAdjust;

    return-object p0
.end method

.method public static values()[Lcom/horcrux/svg/TextProperties$TextLengthAdjust;
    .locals 1

    .line 174
    sget-object v0, Lcom/horcrux/svg/TextProperties$TextLengthAdjust;->$VALUES:[Lcom/horcrux/svg/TextProperties$TextLengthAdjust;

    invoke-virtual {v0}, [Lcom/horcrux/svg/TextProperties$TextLengthAdjust;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/horcrux/svg/TextProperties$TextLengthAdjust;

    return-object v0
.end method
