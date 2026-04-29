.class Lcom/pushwoosh/inapp/view/inline/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/inapp/view/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pushwoosh/inapp/view/inline/c$a;
    }
.end annotation


# instance fields
.field private a:Lcom/pushwoosh/inapp/view/a;

.field private b:Lcom/pushwoosh/inapp/e/b/b;

.field private c:Lcom/pushwoosh/inapp/e/c;

.field private d:Lcom/pushwoosh/inapp/view/inline/InlineInAppView;

.field private e:Z


# direct methods
.method constructor <init>(Lcom/pushwoosh/inapp/view/inline/InlineInAppView;Lcom/pushwoosh/inapp/e/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/pushwoosh/inapp/view/inline/c;->c:Lcom/pushwoosh/inapp/e/c;

    iput-object p1, p0, Lcom/pushwoosh/inapp/view/inline/c;->d:Lcom/pushwoosh/inapp/view/inline/InlineInAppView;

    return-void
.end method

.method static synthetic a(Lcom/pushwoosh/inapp/view/inline/c;Lcom/pushwoosh/function/Result;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/pushwoosh/inapp/view/inline/c;->b(Lcom/pushwoosh/function/Result;)V

    return-void
.end method

.method private b(Lcom/pushwoosh/function/Result;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pushwoosh/function/Result<",
            "Lcom/pushwoosh/inapp/e/b/b;",
            "Lcom/pushwoosh/exception/PostEventException;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/pushwoosh/function/Result;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pushwoosh/inapp/e/b/b;

    iput-object v0, p0, Lcom/pushwoosh/inapp/view/inline/c;->b:Lcom/pushwoosh/inapp/e/b/b;

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/inline/c;->d:Lcom/pushwoosh/inapp/view/inline/InlineInAppView;

    iget-object v1, p0, Lcom/pushwoosh/inapp/view/inline/c;->b:Lcom/pushwoosh/inapp/e/b/b;

    invoke-virtual {v0, v1}, Lcom/pushwoosh/inapp/view/inline/InlineInAppView;->a(Lcom/pushwoosh/inapp/e/b/b;)V

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/inline/c;->b:Lcom/pushwoosh/inapp/e/b/b;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/pushwoosh/function/Result;->getException()Lcom/pushwoosh/exception/PushwooshException;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Lcom/pushwoosh/inapp/view/a;

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/inline/c;->b:Lcom/pushwoosh/inapp/e/b/b;

    invoke-direct {p1, v0, p0}, Lcom/pushwoosh/inapp/view/a;-><init>(Lcom/pushwoosh/inapp/e/b/b;Lcom/pushwoosh/inapp/view/a$a;)V

    iput-object p1, p0, Lcom/pushwoosh/inapp/view/inline/c;->a:Lcom/pushwoosh/inapp/view/a;

    iget-object p1, p0, Lcom/pushwoosh/inapp/view/inline/c;->a:Lcom/pushwoosh/inapp/view/a;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Lcom/pushwoosh/function/Result;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pushwoosh/function/Result<",
            "Lcom/pushwoosh/inapp/d/a;",
            "Lcom/pushwoosh/inapp/b/a;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/pushwoosh/function/Result;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/inline/c;->d:Lcom/pushwoosh/inapp/view/inline/InlineInAppView;

    invoke-virtual {p1}, Lcom/pushwoosh/function/Result;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/pushwoosh/inapp/d/a;

    invoke-virtual {v0, p1}, Lcom/pushwoosh/inapp/view/inline/InlineInAppView;->b(Lcom/pushwoosh/inapp/d/a;)V

    :cond_0
    return-void
.end method

.method a(Lcom/pushwoosh/inapp/view/inline/c$a;)V
    .locals 0

    invoke-static {p1}, Lcom/pushwoosh/inapp/view/inline/c$a;->a(Lcom/pushwoosh/inapp/view/inline/c$a;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/pushwoosh/inapp/view/inline/c;->e:Z

    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pushwoosh/inapp/view/inline/c;->e:Z

    new-instance v0, Lcom/pushwoosh/tags/TagsBundle$Builder;

    invoke-direct {v0}, Lcom/pushwoosh/tags/TagsBundle$Builder;-><init>()V

    const-string v1, "identifier"

    invoke-virtual {v0, v1, p1}, Lcom/pushwoosh/tags/TagsBundle$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/pushwoosh/tags/TagsBundle$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pushwoosh/tags/TagsBundle$Builder;->build()Lcom/pushwoosh/tags/TagsBundle;

    move-result-object p1

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/inline/c;->c:Lcom/pushwoosh/inapp/e/c;

    invoke-static {p0}, Lcom/pushwoosh/inapp/view/inline/d;->a(Lcom/pushwoosh/inapp/view/inline/c;)Lcom/pushwoosh/function/Callback;

    move-result-object v1

    const-string v2, "inlineInApp"

    invoke-virtual {v0, v2, p1, v1}, Lcom/pushwoosh/inapp/e/c;->a(Ljava/lang/String;Lcom/pushwoosh/tags/TagsBundle;Lcom/pushwoosh/function/Callback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method b()V
    .locals 2

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/inline/c;->b:Lcom/pushwoosh/inapp/e/b/b;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/pushwoosh/inapp/view/inline/c;->e:Z

    if-nez v1, :cond_0

    new-instance v1, Lcom/pushwoosh/inapp/view/d;

    invoke-direct {v1, v0}, Lcom/pushwoosh/inapp/view/d;-><init>(Lcom/pushwoosh/inapp/e/b/b;)V

    invoke-static {v1}, Lcom/pushwoosh/internal/event/EventBus;->sendEvent(Lcom/pushwoosh/internal/event/Event;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pushwoosh/inapp/view/inline/c;->e:Z

    :cond_0
    return-void
.end method

.method c()Lcom/pushwoosh/inapp/view/inline/c$a;
    .locals 3

    new-instance v0, Lcom/pushwoosh/inapp/view/inline/c$a;

    iget-boolean v1, p0, Lcom/pushwoosh/inapp/view/inline/c;->e:Z

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/pushwoosh/inapp/view/inline/c$a;-><init>(ZLcom/pushwoosh/inapp/view/inline/c$1;)V

    return-object v0
.end method
