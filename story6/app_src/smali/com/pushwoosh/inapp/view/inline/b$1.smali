.class Lcom/pushwoosh/inapp/view/inline/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/LayoutTransition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pushwoosh/inapp/view/inline/b;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Lcom/pushwoosh/inapp/view/inline/b;


# direct methods
.method constructor <init>(Lcom/pushwoosh/inapp/view/inline/b;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/pushwoosh/inapp/view/inline/b$1;->b:Lcom/pushwoosh/inapp/view/inline/b;

    iput-object p2, p0, Lcom/pushwoosh/inapp/view/inline/b$1;->a:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public endTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 0

    iget-object p1, p0, Lcom/pushwoosh/inapp/view/inline/b$1;->b:Lcom/pushwoosh/inapp/view/inline/b;

    invoke-static {p1}, Lcom/pushwoosh/inapp/view/inline/b;->a(Lcom/pushwoosh/inapp/view/inline/b;)Lcom/pushwoosh/inapp/view/inline/InlineInAppView;

    move-result-object p1

    if-ne p3, p1, :cond_0

    iget-object p1, p0, Lcom/pushwoosh/inapp/view/inline/b$1;->a:Landroid/view/ViewGroup;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    iget-object p1, p0, Lcom/pushwoosh/inapp/view/inline/b$1;->b:Lcom/pushwoosh/inapp/view/inline/b;

    invoke-static {p1}, Lcom/pushwoosh/inapp/view/inline/b;->c(Lcom/pushwoosh/inapp/view/inline/b;)V

    :cond_0
    return-void
.end method

.method public startTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 0

    iget-object p1, p0, Lcom/pushwoosh/inapp/view/inline/b$1;->b:Lcom/pushwoosh/inapp/view/inline/b;

    invoke-static {p1}, Lcom/pushwoosh/inapp/view/inline/b;->a(Lcom/pushwoosh/inapp/view/inline/b;)Lcom/pushwoosh/inapp/view/inline/InlineInAppView;

    move-result-object p1

    if-ne p3, p1, :cond_0

    iget-object p1, p0, Lcom/pushwoosh/inapp/view/inline/b$1;->b:Lcom/pushwoosh/inapp/view/inline/b;

    invoke-static {p1}, Lcom/pushwoosh/inapp/view/inline/b;->b(Lcom/pushwoosh/inapp/view/inline/b;)V

    :cond_0
    return-void
.end method
