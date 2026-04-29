.class Lcom/pushwoosh/badge/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/pushwoosh/badge/b/a;

.field private static b:Lcom/pushwoosh/badge/c/a;


# direct methods
.method static a()V
    .locals 2

    new-instance v0, Lcom/pushwoosh/badge/b/a;

    invoke-direct {v0}, Lcom/pushwoosh/badge/b/a;-><init>()V

    sput-object v0, Lcom/pushwoosh/badge/a;->a:Lcom/pushwoosh/badge/b/a;

    new-instance v0, Lcom/pushwoosh/badge/c/a;

    sget-object v1, Lcom/pushwoosh/badge/a;->a:Lcom/pushwoosh/badge/b/a;

    invoke-direct {v0, v1}, Lcom/pushwoosh/badge/c/a;-><init>(Lcom/pushwoosh/badge/b/a;)V

    sput-object v0, Lcom/pushwoosh/badge/a;->b:Lcom/pushwoosh/badge/c/a;

    return-void
.end method

.method static b()Lcom/pushwoosh/badge/b/a;
    .locals 1

    sget-object v0, Lcom/pushwoosh/badge/a;->a:Lcom/pushwoosh/badge/b/a;

    return-object v0
.end method

.method static c()Lcom/pushwoosh/badge/c/a;
    .locals 1

    sget-object v0, Lcom/pushwoosh/badge/a;->b:Lcom/pushwoosh/badge/c/a;

    return-object v0
.end method
