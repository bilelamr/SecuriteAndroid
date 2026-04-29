.class final enum Lcom/horcrux/svg/TextProperties$FontVariantLigatures;
.super Ljava/lang/Enum;
.source "TextProperties.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/horcrux/svg/TextProperties$FontVariantLigatures;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/horcrux/svg/TextProperties$FontVariantLigatures;

.field public static final enum none:Lcom/horcrux/svg/TextProperties$FontVariantLigatures;

.field public static final enum normal:Lcom/horcrux/svg/TextProperties$FontVariantLigatures;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 84
    new-instance v0, Lcom/horcrux/svg/TextProperties$FontVariantLigatures;

    const/4 v1, 0x0

    const-string v2, "normal"

    invoke-direct {v0, v2, v1}, Lcom/horcrux/svg/TextProperties$FontVariantLigatures;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/horcrux/svg/TextProperties$FontVariantLigatures;->normal:Lcom/horcrux/svg/TextProperties$FontVariantLigatures;

    .line 85
    new-instance v0, Lcom/horcrux/svg/TextProperties$FontVariantLigatures;

    const/4 v2, 0x1

    const-string v3, "none"

    invoke-direct {v0, v3, v2}, Lcom/horcrux/svg/TextProperties$FontVariantLigatures;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/horcrux/svg/TextProperties$FontVariantLigatures;->none:Lcom/horcrux/svg/TextProperties$FontVariantLigatures;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/horcrux/svg/TextProperties$FontVariantLigatures;

    .line 83
    sget-object v3, Lcom/horcrux/svg/TextProperties$FontVariantLigatures;->normal:Lcom/horcrux/svg/TextProperties$FontVariantLigatures;

    aput-object v3, v0, v1

    sget-object v1, Lcom/horcrux/svg/TextProperties$FontVariantLigatures;->none:Lcom/horcrux/svg/TextProperties$FontVariantLigatures;

    aput-object v1, v0, v2

    sput-object v0, Lcom/horcrux/svg/TextProperties$FontVariantLigatures;->$VALUES:[Lcom/horcrux/svg/TextProperties$FontVariantLigatures;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 83
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/horcrux/svg/TextProperties$FontVariantLigatures;
    .locals 1

    .line 83
    const-class v0, Lcom/horcrux/svg/TextProperties$FontVariantLigatures;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/horcrux/svg/TextProperties$FontVariantLigatures;

    return-object p0
.end method

.method public static values()[Lcom/horcrux/svg/TextProperties$FontVariantLigatures;
    .locals 1

    .line 83
    sget-object v0, Lcom/horcrux/svg/TextProperties$FontVariantLigatures;->$VALUES:[Lcom/horcrux/svg/TextProperties$FontVariantLigatures;

    invoke-virtual {v0}, [Lcom/horcrux/svg/TextProperties$FontVariantLigatures;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/horcrux/svg/TextProperties$FontVariantLigatures;

    return-object v0
.end method
