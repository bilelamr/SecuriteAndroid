.class public Lcom/pushwoosh/PushwooshInitProvider;
.super Landroid/content/ContentProvider;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    invoke-static {}, Lcom/pushwoosh/internal/checker/a;->a()Lcom/pushwoosh/internal/checker/a;

    move-result-object v0

    new-instance v1, Lcom/pushwoosh/internal/checker/c;

    invoke-direct {v1}, Lcom/pushwoosh/internal/checker/c;-><init>()V

    invoke-virtual {v0, v1}, Lcom/pushwoosh/internal/checker/a;->a(Lcom/pushwoosh/internal/checker/Checker;)V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()Z
    .locals 1

    invoke-static {}, Lcom/pushwoosh/internal/checker/a;->a()Lcom/pushwoosh/internal/checker/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/internal/checker/a;->b()Z

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/pushwoosh/internal/crash/j;->a(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/pushwoosh/p;->a(Landroid/content/Context;)V

    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
