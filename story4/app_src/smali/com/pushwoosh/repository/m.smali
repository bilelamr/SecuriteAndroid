.class public Lcom/pushwoosh/repository/m;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/pushwoosh/repository/c;


# direct methods
.method constructor <init>(Lcom/pushwoosh/repository/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/repository/m;->a:Lcom/pushwoosh/repository/c;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pushwoosh/repository/m;->a:Lcom/pushwoosh/repository/c;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/pushwoosh/repository/c;->b()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removed dbLocalNotification: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocalNotificationStorage"

    invoke-static {v1, v0}, Lcom/pushwoosh/internal/utils/PWLog;->noise(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/pushwoosh/repository/m;->a:Lcom/pushwoosh/repository/c;

    if-nez v0, :cond_0

    const-string p1, "dbLocalNotificationHelper is null, cant remove local push"

    invoke-static {p1}, Lcom/pushwoosh/internal/utils/PWLog;->error(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/pushwoosh/repository/m;->a:Lcom/pushwoosh/repository/c;

    invoke-virtual {v0, p1}, Lcom/pushwoosh/repository/c;->b(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/pushwoosh/internal/utils/PWLog;->exception(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public a(IILjava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/pushwoosh/repository/b;

    invoke-direct {v0, p1, p2, p3}, Lcom/pushwoosh/repository/b;-><init>(IILjava/lang/String;)V

    iget-object p1, p0, Lcom/pushwoosh/repository/m;->a:Lcom/pushwoosh/repository/c;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Lcom/pushwoosh/repository/c;->b(Lcom/pushwoosh/repository/b;)V

    :cond_0
    return-void
.end method

.method public a(ILandroid/os/Bundle;J)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Saved local push: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocalNotificationStorage"

    invoke-static {v1, v0}, Lcom/pushwoosh/internal/utils/PWLog;->noise(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/pushwoosh/repository/m;->a:Lcom/pushwoosh/repository/c;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/pushwoosh/repository/b;

    const/4 v3, 0x0

    const-string v4, ""

    move-object v1, v0

    move v2, p1

    move-wide v5, p3

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/pushwoosh/repository/b;-><init>(IILjava/lang/String;JLandroid/os/Bundle;)V

    iget-object p1, p0, Lcom/pushwoosh/repository/m;->a:Lcom/pushwoosh/repository/c;

    invoke-virtual {p1, v0}, Lcom/pushwoosh/repository/c;->a(Lcom/pushwoosh/repository/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/pushwoosh/internal/utils/PWLog;->exception(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/repository/m;->a:Lcom/pushwoosh/repository/c;

    if-nez v0, :cond_0

    const-string p1, "dbLocalNotificationHelper is null, cant removeLocalNotificationShown"

    invoke-static {p1}, Lcom/pushwoosh/internal/utils/PWLog;->error(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/pushwoosh/repository/c;->a(ILjava/lang/String;)Lcom/pushwoosh/repository/b;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/pushwoosh/repository/b;->c()I

    move-result p1

    iget-object p2, p0, Lcom/pushwoosh/repository/m;->a:Lcom/pushwoosh/repository/c;

    invoke-virtual {p2, p1}, Lcom/pushwoosh/repository/c;->c(I)V

    :cond_1
    return-void
.end method

.method public a(Lcom/pushwoosh/repository/c$a;)V
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/repository/m;->a:Lcom/pushwoosh/repository/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/pushwoosh/repository/c;->a(Lcom/pushwoosh/repository/c$a;)V

    goto :goto_0

    :cond_0
    const-string p1, "LocalNotificationStorage"

    const-string v0, "dbLocalNotificationHelper is null, cant enumerate local notification list"

    invoke-static {p1, v0}, Lcom/pushwoosh/internal/utils/PWLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/repository/m;->a:Lcom/pushwoosh/repository/c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/pushwoosh/repository/c;->a()I

    move-result v0

    return v0
.end method

.method public b(I)Lcom/pushwoosh/repository/b;
    .locals 3

    iget-object v0, p0, Lcom/pushwoosh/repository/m;->a:Lcom/pushwoosh/repository/c;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "dbLocalNotificationHelper is null, cant get Notification"

    invoke-static {p1}, Lcom/pushwoosh/internal/utils/PWLog;->error(Ljava/lang/String;)V

    return-object v1

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/pushwoosh/repository/m;->a:Lcom/pushwoosh/repository/c;

    invoke-virtual {v2, v0}, Lcom/pushwoosh/repository/c;->a(Ljava/lang/String;)Lcom/pushwoosh/repository/b;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p1, "local notification not found"

    invoke-static {p1}, Lcom/pushwoosh/internal/utils/PWLog;->noise(Ljava/lang/String;)V

    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/pushwoosh/repository/m;->a:Lcom/pushwoosh/repository/c;

    invoke-virtual {v1, p1}, Lcom/pushwoosh/repository/c;->c(I)V

    return-object v0
.end method
