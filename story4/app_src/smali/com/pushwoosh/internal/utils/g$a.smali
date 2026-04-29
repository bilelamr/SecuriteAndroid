.class final enum Lcom/pushwoosh/internal/utils/g$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pushwoosh/internal/utils/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pushwoosh/internal/utils/g$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/pushwoosh/internal/utils/g$a;

.field public static final enum b:Lcom/pushwoosh/internal/utils/g$a;

.field private static final synthetic c:[Lcom/pushwoosh/internal/utils/g$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/pushwoosh/internal/utils/g$a;

    const/4 v1, 0x0

    const-string v2, "sound"

    invoke-direct {v0, v2, v1}, Lcom/pushwoosh/internal/utils/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pushwoosh/internal/utils/g$a;->a:Lcom/pushwoosh/internal/utils/g$a;

    new-instance v0, Lcom/pushwoosh/internal/utils/g$a;

    const/4 v2, 0x1

    const-string v3, "image"

    invoke-direct {v0, v3, v2}, Lcom/pushwoosh/internal/utils/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pushwoosh/internal/utils/g$a;->b:Lcom/pushwoosh/internal/utils/g$a;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/pushwoosh/internal/utils/g$a;

    sget-object v3, Lcom/pushwoosh/internal/utils/g$a;->a:Lcom/pushwoosh/internal/utils/g$a;

    aput-object v3, v0, v1

    sget-object v1, Lcom/pushwoosh/internal/utils/g$a;->b:Lcom/pushwoosh/internal/utils/g$a;

    aput-object v1, v0, v2

    sput-object v0, Lcom/pushwoosh/internal/utils/g$a;->c:[Lcom/pushwoosh/internal/utils/g$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pushwoosh/internal/utils/g$a;
    .locals 1

    const-class v0, Lcom/pushwoosh/internal/utils/g$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/pushwoosh/internal/utils/g$a;

    return-object p0
.end method

.method public static values()[Lcom/pushwoosh/internal/utils/g$a;
    .locals 1

    sget-object v0, Lcom/pushwoosh/internal/utils/g$a;->c:[Lcom/pushwoosh/internal/utils/g$a;

    invoke-virtual {v0}, [Lcom/pushwoosh/internal/utils/g$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pushwoosh/internal/utils/g$a;

    return-object v0
.end method
