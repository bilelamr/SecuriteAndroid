.class Lcom/pushwoosh/inapp/view/inline/j;
.super Lcom/pushwoosh/inapp/view/inline/k;


# direct methods
.method public constructor <init>(Lcom/pushwoosh/inapp/view/inline/InlineInAppView;Lcom/pushwoosh/inapp/view/inline/b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/pushwoosh/inapp/view/inline/k;-><init>(Lcom/pushwoosh/inapp/view/inline/InlineInAppView;Lcom/pushwoosh/inapp/view/inline/b;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/pushwoosh/inapp/view/inline/k;->a(Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;)V

    sget-object v0, Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;->b:Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/pushwoosh/inapp/view/inline/k;->a:Lcom/pushwoosh/inapp/view/inline/InlineInAppView;

    invoke-virtual {p1}, Lcom/pushwoosh/inapp/view/inline/InlineInAppView;->getWebView()Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getWidth()I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/pushwoosh/inapp/view/inline/k;->a:Lcom/pushwoosh/inapp/view/inline/InlineInAppView;

    invoke-virtual {p1}, Lcom/pushwoosh/inapp/view/inline/InlineInAppView;->getWebView()Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getWidth()I

    move-result p1

    :goto_0
    iget-object v1, p0, Lcom/pushwoosh/inapp/view/inline/k;->a:Lcom/pushwoosh/inapp/view/inline/InlineInAppView;

    invoke-virtual {v1}, Lcom/pushwoosh/inapp/view/inline/InlineInAppView;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getHeight()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/pushwoosh/inapp/view/inline/k;->a:Lcom/pushwoosh/inapp/view/inline/InlineInAppView;

    invoke-virtual {v0}, Lcom/pushwoosh/inapp/view/inline/InlineInAppView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getHeight()I

    move-result v0

    :goto_1
    iget-object v1, p0, Lcom/pushwoosh/inapp/view/inline/k;->a:Lcom/pushwoosh/inapp/view/inline/InlineInAppView;

    invoke-virtual {v1}, Lcom/pushwoosh/inapp/view/inline/InlineInAppView;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, p1, v0}, Landroid/webkit/WebView;->layout(IIII)V

    iget-object p1, p0, Lcom/pushwoosh/inapp/view/inline/k;->a:Lcom/pushwoosh/inapp/view/inline/InlineInAppView;

    sget-object v0, Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;->c:Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;

    invoke-virtual {p1, v0}, Lcom/pushwoosh/inapp/view/inline/InlineInAppView;->setState(Lcom/pushwoosh/inapp/view/inline/InlineInAppView$c;)V

    :cond_2
    return-void
.end method
