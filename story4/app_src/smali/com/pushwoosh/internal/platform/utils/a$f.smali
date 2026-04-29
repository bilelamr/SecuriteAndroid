.class public abstract Lcom/pushwoosh/internal/platform/utils/a$f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pushwoosh/internal/platform/utils/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pushwoosh/internal/platform/utils/a$f$a;
    }
.end annotation


# static fields
.field private static c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Ljava/lang/String;

.field b:Lcom/pushwoosh/internal/platform/utils/a$f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/pushwoosh/internal/platform/utils/a$f;->c:Ljava/util/List;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pushwoosh/internal/platform/utils/a$f;->a:Ljava/lang/String;

    sget-object v0, Lcom/pushwoosh/internal/platform/utils/a$f;->c:Ljava/util/List;

    const-string v1, "9774d56d682e549c"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/pushwoosh/internal/platform/utils/a$f;->c:Ljava/util/List;

    const-string v1, "1234567"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/pushwoosh/internal/platform/utils/a$f;->c:Ljava/util/List;

    const-string v1, "abcdef"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/pushwoosh/internal/platform/utils/a$f;->c:Ljava/util/List;

    const-string v1, "dead00beef"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/pushwoosh/internal/platform/utils/a$f;->c:Ljava/util/List;

    const-string v1, "unknown"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic a(Lcom/pushwoosh/internal/platform/utils/a$f;Lcom/pushwoosh/internal/platform/utils/f;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/pushwoosh/internal/platform/utils/a$f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pushwoosh/internal/platform/utils/a$f;->b:Lcom/pushwoosh/internal/platform/utils/a$f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/pushwoosh/internal/platform/utils/a$f;->c()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-interface {p1, p0}, Lcom/pushwoosh/internal/platform/utils/f;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    iput-object p2, p0, Lcom/pushwoosh/internal/platform/utils/a$f;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/pushwoosh/internal/platform/utils/a$f;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x30

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2d

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/pushwoosh/internal/platform/utils/a$f;->c:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method protected abstract a()Ljava/lang/String;
.end method

.method protected a(Lcom/pushwoosh/internal/platform/utils/a$f$a;)V
    .locals 1

    invoke-virtual {p0}, Lcom/pushwoosh/internal/platform/utils/a$f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/pushwoosh/internal/platform/utils/a$f$a;->a(Ljava/lang/String;)V

    return-void
.end method

.method a(Lcom/pushwoosh/internal/platform/utils/a$f;)V
    .locals 0

    iput-object p1, p0, Lcom/pushwoosh/internal/platform/utils/a$f;->b:Lcom/pushwoosh/internal/platform/utils/a$f;

    return-void
.end method

.method public a(Lcom/pushwoosh/internal/platform/utils/f;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/pushwoosh/internal/platform/utils/a$f;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pushwoosh/internal/platform/utils/a$f;->a:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/pushwoosh/internal/platform/utils/f;->a(Ljava/lang/String;)V

    monitor-exit p0

    return-void

    :cond_0
    invoke-static {p0, p1}, Lcom/pushwoosh/internal/platform/utils/e;->a(Lcom/pushwoosh/internal/platform/utils/a$f;Lcom/pushwoosh/internal/platform/utils/f;)Lcom/pushwoosh/internal/platform/utils/a$f$a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/pushwoosh/internal/platform/utils/a$f;->a(Lcom/pushwoosh/internal/platform/utils/a$f$a;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public c()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/pushwoosh/internal/platform/utils/a$f;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pushwoosh/internal/platform/utils/a$f;->a:Ljava/lang/String;

    monitor-exit p0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/pushwoosh/internal/platform/utils/a$f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/pushwoosh/internal/platform/utils/a$f;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/pushwoosh/internal/platform/utils/a$f;->b:Lcom/pushwoosh/internal/platform/utils/a$f;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/pushwoosh/internal/platform/utils/a$f;->b:Lcom/pushwoosh/internal/platform/utils/a$f;

    invoke-virtual {v0}, Lcom/pushwoosh/internal/platform/utils/a$f;->c()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :cond_1
    iput-object v0, p0, Lcom/pushwoosh/internal/platform/utils/a$f;->a:Ljava/lang/String;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
