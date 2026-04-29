.class final Lcom/pushwoosh/internal/crash/b;
.super Ljava/lang/Object;


# static fields
.field static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.pushwoosh"

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/pushwoosh/internal/crash/b;->a:Ljava/util/List;

    return-void
.end method

.method static a()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/pushwoosh/q;->e()Lcom/pushwoosh/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/q;->f()Lcom/pushwoosh/internal/utils/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/pushwoosh/internal/utils/d;->n()Lcom/pushwoosh/internal/PluginProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/pushwoosh/internal/PluginProvider;->getPluginType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static b()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/pushwoosh/Pushwoosh;->getInstance()Lcom/pushwoosh/Pushwoosh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/Pushwoosh;->getAppId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
