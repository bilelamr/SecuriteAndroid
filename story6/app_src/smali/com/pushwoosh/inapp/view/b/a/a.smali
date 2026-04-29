.class public final enum Lcom/pushwoosh/inapp/view/b/a/a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pushwoosh/inapp/view/b/a/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/pushwoosh/inapp/view/b/a/a;

.field public static final enum b:Lcom/pushwoosh/inapp/view/b/a/a;

.field public static final enum c:Lcom/pushwoosh/inapp/view/b/a/a;

.field private static final synthetic d:[Lcom/pushwoosh/inapp/view/b/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/pushwoosh/inapp/view/b/a/a;

    const/4 v1, 0x0

    const-string v2, "IN_APP"

    invoke-direct {v0, v2, v1}, Lcom/pushwoosh/inapp/view/b/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pushwoosh/inapp/view/b/a/a;->a:Lcom/pushwoosh/inapp/view/b/a/a;

    new-instance v0, Lcom/pushwoosh/inapp/view/b/a/a;

    const/4 v2, 0x1

    const-string v3, "RICH_MEDIA"

    invoke-direct {v0, v3, v2}, Lcom/pushwoosh/inapp/view/b/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pushwoosh/inapp/view/b/a/a;->b:Lcom/pushwoosh/inapp/view/b/a/a;

    new-instance v0, Lcom/pushwoosh/inapp/view/b/a/a;

    const/4 v3, 0x2

    const-string v4, "REMOTE_URL"

    invoke-direct {v0, v4, v3}, Lcom/pushwoosh/inapp/view/b/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pushwoosh/inapp/view/b/a/a;->c:Lcom/pushwoosh/inapp/view/b/a/a;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/pushwoosh/inapp/view/b/a/a;

    sget-object v4, Lcom/pushwoosh/inapp/view/b/a/a;->a:Lcom/pushwoosh/inapp/view/b/a/a;

    aput-object v4, v0, v1

    sget-object v1, Lcom/pushwoosh/inapp/view/b/a/a;->b:Lcom/pushwoosh/inapp/view/b/a/a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/pushwoosh/inapp/view/b/a/a;->c:Lcom/pushwoosh/inapp/view/b/a/a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/pushwoosh/inapp/view/b/a/a;->d:[Lcom/pushwoosh/inapp/view/b/a/a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/pushwoosh/inapp/view/b/a/a;
    .locals 1

    const-class v0, Lcom/pushwoosh/inapp/view/b/a/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/pushwoosh/inapp/view/b/a/a;

    return-object p0
.end method

.method public static values()[Lcom/pushwoosh/inapp/view/b/a/a;
    .locals 1

    sget-object v0, Lcom/pushwoosh/inapp/view/b/a/a;->d:[Lcom/pushwoosh/inapp/view/b/a/a;

    invoke-virtual {v0}, [Lcom/pushwoosh/inapp/view/b/a/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pushwoosh/inapp/view/b/a/a;

    return-object v0
.end method
