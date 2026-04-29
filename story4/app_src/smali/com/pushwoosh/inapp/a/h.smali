.class public final enum Lcom/pushwoosh/inapp/a/h;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pushwoosh/inapp/a/h;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/pushwoosh/inapp/a/h;

.field public static final enum b:Lcom/pushwoosh/inapp/a/h;

.field public static final enum c:Lcom/pushwoosh/inapp/a/h;

.field private static final synthetic d:[Lcom/pushwoosh/inapp/a/h;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/pushwoosh/inapp/a/h;

    const/4 v1, 0x0

    const-string v2, "TRIGGER_CAP_EXCEEDED"

    invoke-direct {v0, v2, v1}, Lcom/pushwoosh/inapp/a/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pushwoosh/inapp/a/h;->a:Lcom/pushwoosh/inapp/a/h;

    new-instance v0, Lcom/pushwoosh/inapp/a/h;

    const/4 v2, 0x1

    const-string v3, "CONDITION_NOT_SATISFIED"

    invoke-direct {v0, v3, v2}, Lcom/pushwoosh/inapp/a/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pushwoosh/inapp/a/h;->b:Lcom/pushwoosh/inapp/a/h;

    new-instance v0, Lcom/pushwoosh/inapp/a/h;

    const/4 v3, 0x2

    const-string v4, "LOADING_FAILED"

    invoke-direct {v0, v4, v3}, Lcom/pushwoosh/inapp/a/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pushwoosh/inapp/a/h;->c:Lcom/pushwoosh/inapp/a/h;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/pushwoosh/inapp/a/h;

    sget-object v4, Lcom/pushwoosh/inapp/a/h;->a:Lcom/pushwoosh/inapp/a/h;

    aput-object v4, v0, v1

    sget-object v1, Lcom/pushwoosh/inapp/a/h;->b:Lcom/pushwoosh/inapp/a/h;

    aput-object v1, v0, v2

    sget-object v1, Lcom/pushwoosh/inapp/a/h;->c:Lcom/pushwoosh/inapp/a/h;

    aput-object v1, v0, v3

    sput-object v0, Lcom/pushwoosh/inapp/a/h;->d:[Lcom/pushwoosh/inapp/a/h;

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

.method public static valueOf(Ljava/lang/String;)Lcom/pushwoosh/inapp/a/h;
    .locals 1

    const-class v0, Lcom/pushwoosh/inapp/a/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/pushwoosh/inapp/a/h;

    return-object p0
.end method

.method public static values()[Lcom/pushwoosh/inapp/a/h;
    .locals 1

    sget-object v0, Lcom/pushwoosh/inapp/a/h;->d:[Lcom/pushwoosh/inapp/a/h;

    invoke-virtual {v0}, [Lcom/pushwoosh/inapp/a/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pushwoosh/inapp/a/h;

    return-object v0
.end method
