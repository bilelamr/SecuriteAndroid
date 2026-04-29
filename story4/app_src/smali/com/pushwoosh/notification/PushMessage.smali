.class public Lcom/pushwoosh/notification/PushMessage;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/os/Bundle;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Z

.field private final f:Z

.field private final g:Ljava/lang/Integer;

.field private final h:Ljava/lang/Integer;

.field private final i:Ljava/lang/String;

.field private final j:Z

.field private final k:Ljava/lang/String;

.field private final l:Ljava/lang/String;

.field private final m:Ljava/lang/String;

.field private final n:I

.field private final o:I

.field private final p:I

.field private final q:I

.field private final r:I

.field private final s:I

.field private final t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/pushwoosh/notification/Action;",
            ">;"
        }
    .end annotation
.end field

.field private final u:Ljava/lang/String;

.field private final v:Z

.field private final w:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pushwoosh/notification/PushMessage;->t:Ljava/util/List;

    iput-object p1, p0, Lcom/pushwoosh/notification/PushMessage;->a:Landroid/os/Bundle;

    invoke-static {p1}, Lcom/pushwoosh/notification/b;->e(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pushwoosh/notification/PushMessage;->d:Ljava/lang/String;

    invoke-static {p1}, Lcom/pushwoosh/notification/b;->a(Landroid/os/Bundle;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/pushwoosh/notification/PushMessage;->e:Z

    invoke-static {p1}, Lcom/pushwoosh/notification/b;->g(Landroid/os/Bundle;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/pushwoosh/notification/PushMessage;->f:Z

    invoke-static {p1}, Lcom/pushwoosh/notification/b;->h(Landroid/os/Bundle;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/pushwoosh/notification/PushMessage;->g:Ljava/lang/Integer;

    invoke-static {p1}, Lcom/pushwoosh/notification/b;->i(Landroid/os/Bundle;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/pushwoosh/notification/PushMessage;->h:Ljava/lang/Integer;

    invoke-static {p1}, Lcom/pushwoosh/notification/b;->k(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pushwoosh/notification/PushMessage;->i:Ljava/lang/String;

    invoke-static {p1}, Lcom/pushwoosh/notification/b;->j(Landroid/os/Bundle;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/pushwoosh/notification/PushMessage;->j:Z

    invoke-static {p1}, Lcom/pushwoosh/notification/b;->l(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pushwoosh/notification/PushMessage;->c:Ljava/lang/String;

    invoke-static {p1}, Lcom/pushwoosh/notification/b;->m(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pushwoosh/notification/PushMessage;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/pushwoosh/notification/PushMessage;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/pushwoosh/notification/PushMessage;->k:Ljava/lang/String;

    invoke-static {p1}, Lcom/pushwoosh/notification/b;->n(Landroid/os/Bundle;)I

    move-result v0

    iput v0, p0, Lcom/pushwoosh/notification/PushMessage;->o:I

    invoke-static {p1}, Lcom/pushwoosh/notification/b;->o(Landroid/os/Bundle;)I

    move-result v0

    iput v0, p0, Lcom/pushwoosh/notification/PushMessage;->q:I

    invoke-static {p1}, Lcom/pushwoosh/notification/b;->p(Landroid/os/Bundle;)I

    move-result v0

    iput v0, p0, Lcom/pushwoosh/notification/PushMessage;->p:I

    invoke-static {p1}, Lcom/pushwoosh/notification/b;->y(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pushwoosh/notification/PushMessage;->w:Ljava/lang/String;

    invoke-static {p1}, Lcom/pushwoosh/notification/b;->r(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pushwoosh/notification/PushMessage;->m:Ljava/lang/String;

    invoke-static {p1}, Lcom/pushwoosh/notification/b;->s(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pushwoosh/notification/PushMessage;->l:Ljava/lang/String;

    invoke-static {p1}, Lcom/pushwoosh/notification/b;->t(Landroid/os/Bundle;)I

    move-result v0

    iput v0, p0, Lcom/pushwoosh/notification/PushMessage;->n:I

    invoke-static {p1}, Lcom/pushwoosh/notification/b;->u(Landroid/os/Bundle;)I

    move-result v0

    iput v0, p0, Lcom/pushwoosh/notification/PushMessage;->r:I

    invoke-static {p1}, Lcom/pushwoosh/notification/b;->v(Landroid/os/Bundle;)I

    move-result v0

    iput v0, p0, Lcom/pushwoosh/notification/PushMessage;->s:I

    invoke-static {p1}, Lcom/pushwoosh/notification/b;->w(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pushwoosh/notification/PushMessage;->u:Ljava/lang/String;

    invoke-static {p1}, Lcom/pushwoosh/notification/b;->x(Landroid/os/Bundle;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/pushwoosh/notification/PushMessage;->v:Z

    iget-object v0, p0, Lcom/pushwoosh/notification/PushMessage;->t:Ljava/util/List;

    invoke-static {p1}, Lcom/pushwoosh/notification/b;->q(Landroid/os/Bundle;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public getActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/pushwoosh/notification/Action;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pushwoosh/notification/PushMessage;->t:Ljava/util/List;

    return-object v0
.end method

.method public getBadges()I
    .locals 1

    iget v0, p0, Lcom/pushwoosh/notification/PushMessage;->p:I

    return v0
.end method

.method public getBigPictureUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/notification/PushMessage;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/notification/PushMessage;->w:Ljava/lang/String;

    return-object v0
.end method

.method public getHeader()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/notification/PushMessage;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getIconBackgroundColor()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/notification/PushMessage;->g:Ljava/lang/Integer;

    return-object v0
.end method

.method public getLargeIconUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/notification/PushMessage;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getLed()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/notification/PushMessage;->h:Ljava/lang/Integer;

    return-object v0
.end method

.method public getLedOffMS()I
    .locals 1

    iget v0, p0, Lcom/pushwoosh/notification/PushMessage;->s:I

    return v0
.end method

.method public getLedOnMS()I
    .locals 1

    iget v0, p0, Lcom/pushwoosh/notification/PushMessage;->r:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/notification/PushMessage;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    iget v0, p0, Lcom/pushwoosh/notification/PushMessage;->o:I

    return v0
.end method

.method public getPushHash()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/notification/PushMessage;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getSmallIcon()I
    .locals 1

    iget v0, p0, Lcom/pushwoosh/notification/PushMessage;->n:I

    return v0
.end method

.method public getSound()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/notification/PushMessage;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/notification/PushMessage;->u:Ljava/lang/String;

    return-object v0
.end method

.method public getTicker()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/notification/PushMessage;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getVibration()Z
    .locals 1

    iget-boolean v0, p0, Lcom/pushwoosh/notification/PushMessage;->j:Z

    return v0
.end method

.method public getVisibility()I
    .locals 1

    iget v0, p0, Lcom/pushwoosh/notification/PushMessage;->q:I

    return v0
.end method

.method public isLocal()Z
    .locals 1

    iget-boolean v0, p0, Lcom/pushwoosh/notification/PushMessage;->f:Z

    return v0
.end method

.method public isLockScreen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/pushwoosh/notification/PushMessage;->v:Z

    return v0
.end method

.method public isSilent()Z
    .locals 1

    iget-boolean v0, p0, Lcom/pushwoosh/notification/PushMessage;->e:Z

    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/notification/PushMessage;->a:Landroid/os/Bundle;

    return-object v0
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/notification/PushMessage;->a:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/pushwoosh/notification/b;->E(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
