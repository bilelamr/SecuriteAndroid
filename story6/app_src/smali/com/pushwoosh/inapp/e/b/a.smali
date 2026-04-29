.class public final enum Lcom/pushwoosh/inapp/e/b/a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pushwoosh/inapp/e/b/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/pushwoosh/inapp/e/b/a;

.field public static final enum b:Lcom/pushwoosh/inapp/e/b/a;

.field public static final enum c:Lcom/pushwoosh/inapp/e/b/a;

.field public static final enum d:Lcom/pushwoosh/inapp/e/b/a;

.field private static final synthetic f:[Lcom/pushwoosh/inapp/e/b/a;


# instance fields
.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/pushwoosh/inapp/e/b/a;

    const/4 v1, 0x0

    const-string v2, "FULLSCREEN"

    const-string v3, "fullscreen"

    invoke-direct {v0, v2, v1, v3}, Lcom/pushwoosh/inapp/e/b/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/pushwoosh/inapp/e/b/a;->a:Lcom/pushwoosh/inapp/e/b/a;

    new-instance v0, Lcom/pushwoosh/inapp/e/b/a;

    const/4 v2, 0x1

    const-string v3, "DIALOG"

    const-string v4, "centerbox"

    invoke-direct {v0, v3, v2, v4}, Lcom/pushwoosh/inapp/e/b/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/pushwoosh/inapp/e/b/a;->b:Lcom/pushwoosh/inapp/e/b/a;

    new-instance v0, Lcom/pushwoosh/inapp/e/b/a;

    const/4 v3, 0x2

    const-string v4, "TOP"

    const-string v5, "topbanner"

    invoke-direct {v0, v4, v3, v5}, Lcom/pushwoosh/inapp/e/b/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/pushwoosh/inapp/e/b/a;->c:Lcom/pushwoosh/inapp/e/b/a;

    new-instance v0, Lcom/pushwoosh/inapp/e/b/a;

    const/4 v4, 0x3

    const-string v5, "BOTTOM"

    const-string v6, "bottombanner"

    invoke-direct {v0, v5, v4, v6}, Lcom/pushwoosh/inapp/e/b/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/pushwoosh/inapp/e/b/a;->d:Lcom/pushwoosh/inapp/e/b/a;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/pushwoosh/inapp/e/b/a;

    sget-object v5, Lcom/pushwoosh/inapp/e/b/a;->a:Lcom/pushwoosh/inapp/e/b/a;

    aput-object v5, v0, v1

    sget-object v1, Lcom/pushwoosh/inapp/e/b/a;->b:Lcom/pushwoosh/inapp/e/b/a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/pushwoosh/inapp/e/b/a;->c:Lcom/pushwoosh/inapp/e/b/a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/pushwoosh/inapp/e/b/a;->d:Lcom/pushwoosh/inapp/e/b/a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/pushwoosh/inapp/e/b/a;->f:[Lcom/pushwoosh/inapp/e/b/a;

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

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/pushwoosh/inapp/e/b/a;->e:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/pushwoosh/inapp/e/b/a;
    .locals 5

    invoke-static {}, Lcom/pushwoosh/inapp/e/b/a;->values()[Lcom/pushwoosh/inapp/e/b/a;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, v3, Lcom/pushwoosh/inapp/e/b/a;->e:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/pushwoosh/inapp/e/b/a;->b:Lcom/pushwoosh/inapp/e/b/a;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pushwoosh/inapp/e/b/a;
    .locals 1

    const-class v0, Lcom/pushwoosh/inapp/e/b/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/pushwoosh/inapp/e/b/a;

    return-object p0
.end method

.method public static values()[Lcom/pushwoosh/inapp/e/b/a;
    .locals 1

    sget-object v0, Lcom/pushwoosh/inapp/e/b/a;->f:[Lcom/pushwoosh/inapp/e/b/a;

    invoke-virtual {v0}, [Lcom/pushwoosh/inapp/e/b/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pushwoosh/inapp/e/b/a;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/inapp/e/b/a;->e:Ljava/lang/String;

    return-object v0
.end method
