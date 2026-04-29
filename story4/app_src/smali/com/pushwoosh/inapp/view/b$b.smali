.class public final enum Lcom/pushwoosh/inapp/view/b$b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pushwoosh/inapp/view/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pushwoosh/inapp/view/b$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/pushwoosh/inapp/view/b$b;

.field public static final enum b:Lcom/pushwoosh/inapp/view/b$b;

.field public static final enum c:Lcom/pushwoosh/inapp/view/b$b;

.field public static final enum d:Lcom/pushwoosh/inapp/view/b$b;

.field private static final synthetic e:[Lcom/pushwoosh/inapp/view/b$b;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/pushwoosh/inapp/view/b$b;

    const/4 v1, 0x0

    const-string v2, "LOADING"

    invoke-direct {v0, v2, v1}, Lcom/pushwoosh/inapp/view/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pushwoosh/inapp/view/b$b;->a:Lcom/pushwoosh/inapp/view/b$b;

    new-instance v0, Lcom/pushwoosh/inapp/view/b$b;

    const/4 v2, 0x1

    const-string v3, "SUCCESS"

    invoke-direct {v0, v3, v2}, Lcom/pushwoosh/inapp/view/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pushwoosh/inapp/view/b$b;->b:Lcom/pushwoosh/inapp/view/b$b;

    new-instance v0, Lcom/pushwoosh/inapp/view/b$b;

    const/4 v3, 0x2

    const-string v4, "ERROR"

    invoke-direct {v0, v4, v3}, Lcom/pushwoosh/inapp/view/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pushwoosh/inapp/view/b$b;->c:Lcom/pushwoosh/inapp/view/b$b;

    new-instance v0, Lcom/pushwoosh/inapp/view/b$b;

    const/4 v4, 0x3

    const-string v5, "NONE"

    invoke-direct {v0, v5, v4}, Lcom/pushwoosh/inapp/view/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pushwoosh/inapp/view/b$b;->d:Lcom/pushwoosh/inapp/view/b$b;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/pushwoosh/inapp/view/b$b;

    sget-object v5, Lcom/pushwoosh/inapp/view/b$b;->a:Lcom/pushwoosh/inapp/view/b$b;

    aput-object v5, v0, v1

    sget-object v1, Lcom/pushwoosh/inapp/view/b$b;->b:Lcom/pushwoosh/inapp/view/b$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/pushwoosh/inapp/view/b$b;->c:Lcom/pushwoosh/inapp/view/b$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/pushwoosh/inapp/view/b$b;->d:Lcom/pushwoosh/inapp/view/b$b;

    aput-object v1, v0, v4

    sput-object v0, Lcom/pushwoosh/inapp/view/b$b;->e:[Lcom/pushwoosh/inapp/view/b$b;

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

.method public static valueOf(Ljava/lang/String;)Lcom/pushwoosh/inapp/view/b$b;
    .locals 1

    const-class v0, Lcom/pushwoosh/inapp/view/b$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/pushwoosh/inapp/view/b$b;

    return-object p0
.end method

.method public static values()[Lcom/pushwoosh/inapp/view/b$b;
    .locals 1

    sget-object v0, Lcom/pushwoosh/inapp/view/b$b;->e:[Lcom/pushwoosh/inapp/view/b$b;

    invoke-virtual {v0}, [Lcom/pushwoosh/inapp/view/b$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pushwoosh/inapp/view/b$b;

    return-object v0
.end method
