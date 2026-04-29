.class Lcom/pushwoosh/inapp/view/inline/InlineInAppView$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/inapp/view/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pushwoosh/inapp/view/inline/InlineInAppView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/pushwoosh/inapp/view/inline/InlineInAppView;


# direct methods
.method constructor <init>(Lcom/pushwoosh/inapp/view/inline/InlineInAppView;)V
    .locals 0

    iput-object p1, p0, Lcom/pushwoosh/inapp/view/inline/InlineInAppView$a;->a:Lcom/pushwoosh/inapp/view/inline/InlineInAppView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/inline/InlineInAppView$a;->a:Lcom/pushwoosh/inapp/view/inline/InlineInAppView;

    sget-object v1, Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;->d:Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;

    invoke-virtual {v0, v1}, Lcom/pushwoosh/inapp/view/inline/InlineInAppView;->setState(Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;)V

    return-void
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/inline/InlineInAppView$a;->a:Lcom/pushwoosh/inapp/view/inline/InlineInAppView;

    invoke-static {v0}, Lcom/pushwoosh/inapp/view/inline/InlineInAppView;->b(Lcom/pushwoosh/inapp/view/inline/InlineInAppView;)Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;

    move-result-object v0

    sget-object v1, Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;->a:Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/pushwoosh/inapp/view/inline/InlineInAppView$a;->a:Lcom/pushwoosh/inapp/view/inline/InlineInAppView;

    sget-object v1, Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;->b:Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;

    invoke-virtual {v0, v1}, Lcom/pushwoosh/inapp/view/inline/InlineInAppView;->setState(Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;)V

    return-void
.end method

.method public e()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
