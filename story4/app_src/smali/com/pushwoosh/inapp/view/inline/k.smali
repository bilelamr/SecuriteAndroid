.class Lcom/pushwoosh/inapp/view/inline/k;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pushwoosh/inapp/view/inline/k$a;
    }
.end annotation


# instance fields
.field protected a:Lcom/pushwoosh/inapp/view/inline/InlineInAppView;

.field protected b:Lcom/pushwoosh/inapp/view/inline/b;


# direct methods
.method public constructor <init>(Lcom/pushwoosh/inapp/view/inline/InlineInAppView;Lcom/pushwoosh/inapp/view/inline/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/inapp/view/inline/k;->a:Lcom/pushwoosh/inapp/view/inline/InlineInAppView;

    iput-object p2, p0, Lcom/pushwoosh/inapp/view/inline/k;->b:Lcom/pushwoosh/inapp/view/inline/b;

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/inline/k;->a:Lcom/pushwoosh/inapp/view/inline/InlineInAppView;

    invoke-virtual {v0}, Lcom/pushwoosh/inapp/view/inline/InlineInAppView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->forceLayout()V

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/inline/k;->a:Lcom/pushwoosh/inapp/view/inline/InlineInAppView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->forceLayout()V

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/inline/k;->a:Lcom/pushwoosh/inapp/view/inline/InlineInAppView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pushwoosh/inapp/view/inline/k;->a:Lcom/pushwoosh/inapp/view/inline/InlineInAppView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->requestLayout()V

    :cond_0
    return-void
.end method

.method protected a(IILcom/pushwoosh/inapp/view/inline/k$a;)V
    .locals 0

    iget-object p1, p0, Lcom/pushwoosh/inapp/view/inline/k;->a:Lcom/pushwoosh/inapp/view/inline/InlineInAppView;

    invoke-virtual {p1}, Lcom/pushwoosh/inapp/view/inline/InlineInAppView;->getState()Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;

    move-result-object p1

    sget-object p2, Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;->d:Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;

    if-eq p1, p2, :cond_0

    iget-object p1, p0, Lcom/pushwoosh/inapp/view/inline/k;->a:Lcom/pushwoosh/inapp/view/inline/InlineInAppView;

    invoke-virtual {p1}, Lcom/pushwoosh/inapp/view/inline/InlineInAppView;->getState()Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;

    move-result-object p1

    sget-object p2, Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;->a:Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;

    if-ne p1, p2, :cond_1

    :cond_0
    const/4 p1, 0x0

    invoke-interface {p3, p1, p1}, Lcom/pushwoosh/inapp/view/inline/k$a;->a(II)V

    :cond_1
    return-void
.end method

.method protected a(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;)V
    .locals 1

    sget-object v0, Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;->d:Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;->c:Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/pushwoosh/inapp/view/inline/k;->b:Lcom/pushwoosh/inapp/view/inline/b;

    invoke-virtual {p1}, Lcom/pushwoosh/inapp/view/inline/b;->a()V

    invoke-virtual {p0}, Lcom/pushwoosh/inapp/view/inline/k;->a()V

    :cond_1
    return-void
.end method

.method protected a(ZIIII)V
    .locals 0

    return-void
.end method
